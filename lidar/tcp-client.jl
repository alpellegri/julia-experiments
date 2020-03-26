using Sockets

clientside = connect(2000)
@async while isopen(clientside)
           write(stdout, readline(clientside, keep=true))
       end

println(clientside,"Hello World from the Echo Server")

