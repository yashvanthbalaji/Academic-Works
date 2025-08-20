# 2c.SIMULATING ARP /RARP PROTOCOLS
NAMR:BALAJI.A
REG NO:212223040023
## AIM
To write a python program for simulating ARP protocols using TCP.
## ALGORITHM:
## Client:
1. Start the program
2. Using socket connection is established between client and server.
3. Get the IP address to be converted into MAC address.
4. Send this IP address to server.
5. Server returns the MAC address to client.
## Server:
1. Start the program
2. Accept the socket which is created by the client.
3. Server maintains the table in which IP and corresponding MAC addresses are
stored.
4. Read the IP address which is send by the client.
5. Map the IP address with its MAC address and return the MAC address to client.
P
## PROGRAM - ARP
# CLIENT:
```
import socket
s=socket.socket()
s.bind(('localhost',8000))
s.listen(5)
c,addr=s.accept()
address={"165.165.80.80":"6A:08:AA:C2","165.165.79.1":"8A:BC:E3:FA"};
while True:
    ip=c.recv(1024).decode()
    try:
        c.send(address[ip].encode())
    except KeyError:
        c.send("Not Found".encode()) 
```
# SERVER:
```
import socket
s=socket.socket()
s.connect(('localhost',8000))
while True:
    ip=input("Enter logical Address : ")
    s.send(ip.encode())
    print("MAC Address",s.recv(1024).decode())
```
## OUPUT - ARP
# CLIENT:
![321076018-d8297483-2afb-44d3-ab56-67c97bb2fe01](https://github.com/rajamanikandanravikumar/2c.ARP_RARP_PROTOCOLS/assets/145742839/735e4555-0c43-4c80-9a66-fae8c9d03385)
# SERVER:
![321076088-b726a387-2532-4bf1-a80b-711cfe4d0e59](https://github.com/rajamanikandanravikumar/2c.ARP_RARP_PROTOCOLS/assets/145742839/23ab670c-fd5a-4479-928f-890512264ec6)

## PROGRAM - RARP
# CLIENT:
```
import socket
s=socket.socket()
s.bind(('localhost',9000))
s.listen(5)
c,addr=s.accept()
address={"6A:08:AA:C2":"192.168.1.100","8A:BC:E3:FA":"192.168.1.99"};
while True:
    ip=c.recv(1024).decode()
    try:
         c.send(address[ip].encode())
    except KeyError:
         c.send("Not Found".encode())
```
# SERVER:
```
import socket
s=socket.socket()
s.connect(('localhost',9000))
while True:
    ip=input("Enter MAC Address : ")
    s.send(ip.encode())
    print("Logical Address",s.recv(1024).decode())
```
## OUPUT -RARP
# CLIENT:
![321076579-be1f771a-79fd-4e02-babc-08b2414cae41](https://github.com/rajamanikandanravikumar/2c.ARP_RARP_PROTOCOLS/assets/145742839/131eab23-0aee-42e8-a871-ab5a517bcb12)
# SERVER:
![321076645-c840889a-2bc2-4e85-834f-2a46e705cd25](https://github.com/rajamanikandanravikumar/2c.ARP_RARP_PROTOCOLS/assets/145742839/e7579fd7-bd92-4479-9d38-6e64e52f73bd)

## RESULT
Thus, the python program for simulating ARP protocols using TCP was successfully 
executed.
