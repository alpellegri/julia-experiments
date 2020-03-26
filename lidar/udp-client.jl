using Sockets

sock = UDPSocket()
sleep(0.1)
send(sock, ip"127.0.0.1", 2001, "Hello World from the UDP!")
