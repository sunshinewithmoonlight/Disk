ENV["GKSwstype"]="nul"
## For headless configurations

using Plots; gr()
# define the Circle attractor

mutable struct Circle
    dAlpha; alpha; x; y
end

function step!(l::Circle)
    l.x = 0.
    l.y = 0.
    l.alpha += l.dAlpha
    l.x = cos(l.alpha)+(cos(3*l.alpha))/3+cos(5*l.alpha)/5+(cos(7*l.alpha))/7
    l.y = sin(l.alpha)+(sin(3*l.alpha))/3+sin(5*l.alpha)/5+(sin(7*l.alpha))/7
end

attractor = Circle((dAlpha = 0.01pi, alpha = -0.01pi, x=0., y=0.)...)

p_1bi1 = Plots.partialcircle(0,2π,100,1)
p_circle_1bi3 = Plots.partialcircle(0,2π,100,1/3)
x_circle_1bi3, y_circle_1bi3 = Plots.unzip(p_circle_1bi3)
p_circle_1bi5 = Plots.partialcircle(0,2π,100,1/5)
x_circle_1bi5, y_circle_1bi5 = Plots.unzip(p_circle_1bi5)
p_circle_1bi7 = Plots.partialcircle(0,2π,100,1/7)
x_circle_1bi7, y_circle_1bi7 = Plots.unzip(p_circle_1bi7)
plt_lx = Any[]
plt_ly = Any[]

anim = @animate for i=0:200
    global p_1bi1, x_circle_1bi3, y_circle_1bi3, plt_attractor
    step!(attractor)
    plot(append!(append!(broadcast(+, x_circle_1bi3, cos(0.01pi*i)), broadcast(+, x_circle_1bi5, cos(0.01pi*i), (cos(0.03pi*i))/3)), broadcast(+, x_circle_1bi7, cos(0.01pi*i), (cos(0.03pi*i))/3, (cos(0.05pi*i))/5) ),  append!(append!(broadcast(+, y_circle_1bi3, sin(0.01pi*i)), broadcast(+, y_circle_1bi5, sin(0.01pi*i), (sin(0.03pi*i))/3)), broadcast(+, y_circle_1bi7, sin(0.01pi*i), (sin(0.03pi*i))/3, (sin(0.05pi*i))/5 ) ))
    plot!(p_1bi1)
    plot!(1, xlim=(-2,2), ylim=(-1.5,1.5), size=(700,600))
    append!(plt_lx, attractor.x)
    append!(plt_ly, attractor.y)
    plot!(plt_lx, plt_ly)
end

gif(anim, "/tmp/anim_fps25.gif", fps = 25)

##  If you want to change the number, be sure knowing what it is working for and the crash that might happen.

#plt = plot(1, marker = 2, ylim=(-1.1, 1.1))
#plt = plot(1, xlim=(-25,25), ylim=(-25,25), title = "Circle Attractor", marker = 2)

#@gif for i=1:201
#    step!(attractor)
#    push!(plt, attractor.x, attractor.y)
#end every 4


