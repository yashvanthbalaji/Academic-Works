# EX-NO-10-Diffie-Hellman-Key-Exchange-Algorithm

## AIM:
To Implement Diffie Hellman Key Exchange Algorithm 

## Algorithm:

1. Diffie-Hellman Key Exchange is used for securely sharing a secret key between two parties over an insecure channel.

2. Initialization: Agree on a large prime number \( p \) and a primitive root \( g \) modulo \( p \) (both are public values).

3. Key Exchange Process: 
   - Each party selects a private key and calculates their public key using the formula \( g^{\text{private key}} \mod p \).
   - Each party then shares their public key with the other.

4. Secret Key Computation: 
   - Each party computes the shared secret key using the received public key and their own private key.

5. Security: The difficulty of computing discrete logarithms ensures that the shared key remains secure even if public values are intercepted.

## Program:
~~~
#include <stdio.h>


long long int mod_exp(long long int base, long long int exp, long long int mod) {
    long long int result = 1;
    while (exp > 0) {
        // If exp is odd, multiply base with result
        if (exp % 2 == 1)
            result = (result * base) % mod;

        // Now exp must be even, so divide by 2 and square the base
        exp = exp >> 1; // equivalent to exp = exp / 2
        base = (base * base) % mod;
    }
    return result;
}

int main() {
    long long int P, G, a, b, x, y, ka, kb;

    printf("\n********* Diffie-Hellman Key Exchange Algorithm **********\n\n");

    // Step 1: Agree on public values P (prime number) and G (primitive root)
    printf("Enter a prime number P: ");
    scanf("%lld", &P); // A prime number P is taken
    printf("The value of P: %lld\n", P);

    printf("Enter a primitive root G for P: ");
    scanf("%lld", &G); // A primitive root G is taken
    printf("The value of G: %lld\n\n", G);

    // Step 2: Alice selects a private key a
    printf("Enter the private key for Alice (a): ");
    scanf("%lld", &a);
    x = mod_exp(G, a, P); // Alice's public key x = G^a % P
    printf("The public key for Alice (x = G^a mod P): %lld\n", x);

    // Step 3: Bob selects a private key b
    printf("Enter the private key for Bob (b): ");
    scanf("%lld", &b);
    y = mod_exp(G, b, P); // Bob's public key y = G^b % P
    printf("The public key for Bob (y = G^b mod P): %lld\n\n", y);

    // Step 4: Exchange public keys and generate the shared secret key
    ka = mod_exp(y, a, P); // Alice computes the shared key ka = y^a % P
    kb = mod_exp(x, b, P); // Bob computes the shared key kb = x^b % P

    // Step 5: Display the shared secret keys (ka and kb should be equal)
    printf("Shared secret key for Alice (ka = y^a mod P): %lld\n", ka);
    printf("Shared secret key for Bob (kb = x^b mod P): %lld\n", kb);

    if (ka == kb) {
        printf("\nDiffie-Hellman Key Exchange successful. Both parties share the same key.\n");
    } else {
        printf("\nError: The keys for Alice and Bob do not match.\n");
    }

    return 0;
}
~~~


## Output:
![image](https://github.com/user-attachments/assets/469f6f04-df08-47d9-9f3a-463c0b4dcc73)



## Result:
  The program is executed successfully

