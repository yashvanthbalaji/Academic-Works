# EX-NO-11-ELLIPTIC-CURVE-CRYPTOGRAPHY-ECC

## Aim:
To Implement ELLIPTIC CURVE CRYPTOGRAPHY(ECC)


## ALGORITHM:

1. Elliptic Curve Cryptography (ECC) is a public-key cryptography technique based on the algebraic structure of elliptic curves over finite fields.

2. Initialization:
   - Select an elliptic curve equation \( y^2 = x^3 + ax + b \) with parameters \( a \) and \( b \), along with a large prime \( p \) (defining the finite field).
   - Choose a base point \( G \) on the curve, which will be used for generating public keys.

3. Key Generation:
   - Each party selects a private key \( d \) (a random integer).
   - Calculate the public key as \( Q = d \times G \) (using elliptic curve point multiplication).

4. Encryption and Decryption:
   - Encryption: The sender uses the recipient’s public key and the base point \( G \) to encode the message.
   - Decryption: The recipient uses their private key to decode the message and retrieve the original plaintext.

5. Security: ECC’s security relies on the Elliptic Curve Discrete Logarithm Problem (ECDLP), making it highly secure with shorter key lengths compared to traditional methods like RSA.

## Program:
~~~
#include <stdio.h>

// A simple structure to represent points on the elliptic curve
typedef struct {
    long long int x, y;
} Point;

// Function to compute modular inverse (using Extended Euclidean Algorithm)
long long int modInverse(long long int a, long long int m) {
    long long int m0 = m, t, q;
    long long int x0 = 0, x1 = 1;
    if (m == 1) return 0;
    while (a > 1) {
        q = a / m;
        t = m;
        m = a % m, a = t;
        t = x0;
        x0 = x1 - q * x0;
        x1 = t;
    }
    if (x1 < 0) x1 += m0;
    return x1;
}

// Function to perform point addition on elliptic curves
Point pointAddition(Point P, Point Q, long long int a, long long int p) {
    Point R;
    long long int lambda;
    
    // Check if P == Q (Point doubling)
    if (P.x == Q.x && P.y == Q.y) {
        lambda = (3 * P.x * P.x + a) * modInverse(2 * P.y, p) % p;
    } else { // Point addition
        lambda = (Q.y - P.y) * modInverse(Q.x - P.x, p) % p;
    }

    // Calculate resulting point
    R.x = (lambda * lambda - P.x - Q.x) % p;
    R.y = (lambda * (P.x - R.x) - P.y) % p;
    
    // Ensure values are positive
    R.x = (R.x + p) % p;
    R.y = (R.y + p) % p;

    return R;
}

// Function to perform scalar multiplication (Elliptic Curve Point Multiplication)
Point scalarMultiplication(Point P, long long int k, long long int a, long long int p) {
    Point result = P;
    k--; // Subtract 1 because we start with the base point

    while (k > 0) {
        result = pointAddition(result, P, a, p); // Add the point to itself (k times)
        k--;
    }

    return result;
}

int main() {
    long long int p, a, b, privateA, privateB;
    Point G, publicA, publicB, sharedSecretA, sharedSecretB;

    // Step 1: Input parameters of the elliptic curve
    printf("Enter the prime number (p): ");
    scanf("%lld", &p);
    printf("Enter the curve parameters (a and b) for equation y^2 = x^3 + ax + b: ");
    scanf("%lld %lld", &a, &b);
    printf("Enter the base point G (x and y): ");
    scanf("%lld %lld", &G.x, &G.y);

    // Step 2: Alice and Bob input private keys
    printf("Enter Alice's private key: ");
    scanf("%lld", &privateA);
    printf("Enter Bob's private key: ");
    scanf("%lld", &privateB);

    // Step 3: Compute public keys (Elliptic Curve Point Multiplication)
    publicA = scalarMultiplication(G, privateA, a, p); // Alice's public key
    publicB = scalarMultiplication(G, privateB, a, p); // Bob's public key

    printf("Alice's public key: (%lld, %lld)\n", publicA.x, publicA.y);
    printf("Bob's public key: (%lld, %lld)\n", publicB.x, publicB.y);

    // Step 4: Compute shared secrets (Elliptic Curve Point Multiplication)
    sharedSecretA = scalarMultiplication(publicB, privateA, a, p); // Alice's shared secret
    sharedSecretB = scalarMultiplication(publicA, privateB, a, p); // Bob's shared secret

    // Step 5: Display shared secret
    printf("Shared secret computed by Alice: (%lld, %lld)\n", sharedSecretA.x, sharedSecretA.y);
    printf("Shared secret computed by Bob: (%lld, %lld)\n", sharedSecretB.x, sharedSecretB.y);

    if (sharedSecretA.x == sharedSecretB.x && sharedSecretA.y == sharedSecretB.y) {
        printf("Key exchange successful. Both shared secrets match!\n");
    } else {
        printf("Key exchange failed. Shared secrets do not match.\n");
    }

    return 0;
}
~~~


## Output:
![image](https://github.com/user-attachments/assets/17259672-a447-4e6b-bd2c-67ec5407b406)


## Result:
The program is executed successfully

