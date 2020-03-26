using Sockets

@async begin
         udpsock = UDPSocket()
         bind(udpsock, ip"127.0.0.1", 2001)
         while true
           println(String(copy(recv(udpsock))))
           sleep(0.1)
         end
         # close(udpsock)
       end
