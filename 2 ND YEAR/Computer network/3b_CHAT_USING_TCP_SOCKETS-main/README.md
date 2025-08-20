# 3b.CREATION FOR CHAT USING TCP SOCKETS
## AIM
To write a python program for creating Chat using TCP Sockets Links.
## ALGORITHM:
1. Import the necessary modules in python
2. Create a socket connection to using the socket module.
3. Send message to the client and receive the message from the client using the Socket module in
 server
4. Send and receive the message using the send function in socket.
## PROGRAM

## CLIENT
```
import socket
s=socket.socket()
s.connect(('localhost',8000))
while True:
    msg=input("Client > ")
    s.send(msg.encode())
    print("Server > ",s.recv(1024).decode())
```
## SERVER
```
import socket
s=socket.socket()
s.bind(('localhost',8000))
s.listen(5)
c,addr=s.accept()
while True:
    ClientMessage=c.recv(1024).decode()
    print("Client > ",ClientMessage)
    msg=input("Server > ")
    c.send(msg.encode())
```

## OUPUT

## CLIENT

![3b](https://github.com/user-attachments/assets/40c66f55-1ed3-442d-91c3-61ce1bcac830)

## SERVER

![3BB](https://github.com/user-attachments/assets/dd7416f7-217e-4ed6-bf54-d6f9ee634d83)


## RESULT
Thus, the python program for creating Chat using TCP Sockets Links was successfully 
created and executed.
