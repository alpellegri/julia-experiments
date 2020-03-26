using Plots
import GR
using Printf

DIM = 3
N = 18

RotZ(θ) = [cos(θ) -sin(θ) 0;
           sin(θ)  cos(θ) 0;
           0       0      1];

update(m, θ, x) = (m*RotZ(θ) - [x*ones(N) zeros(N) zeros(N)])

function main()
  GR.setmarkersize(1.0)
  GR.xlim([-2,2])
  GR.ylim([-2,2])

  model = 2 .* (rand(N, DIM) .- .5)

  P = 0
  θ = π/16
  myview = update(model, θ, P)

  n = 0
  while n < 300

    GR.clearws()
    # GR.setviewport(0, 1, 0, 1)
    GR.scatter3(myview[:,1], myview[:,2], myview[:,3])
    GR.updatews()
    myview = update(myview, θ, P)
    
    println(n)
    sleep(0.1)

    n += 1
  end
end

main()
