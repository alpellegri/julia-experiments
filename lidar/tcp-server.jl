using Sockets

@async begin
           server = listen(2000)
           while true
               sock = accept(server)
               println("Hello World\n")
               @async while isopen(sock)
                   # write(sock, readline(sock, keep=true))
                   println(readline(sock, keep=true))
               end
           end
       end
