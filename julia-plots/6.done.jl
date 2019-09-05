using Plots
# define the Phrea attractor

mutable struct Phrea
    dt; x; y
end

function step!(l::Phrea)
    dx = 0.02    ; l.x += l.dt * dx
    l.y = sin(l.x) + (sin(3*l.x))/3 + 0.2*sin(5*l.x)
end

attractor = Phrea((dt = 1, x = -5., y = 0.)...)

plt = plot(1, ylim=(-1.1, 1.1), xlim=(-5,15))
#plt = plot(1, xlim=(-25,25), ylim=(-25,25), title = "Phrea Attractor", marker = 2)

# build an animated gif by pushing new points to the plot, saving every 10th frame
@gif for i=1:1000
    step!(attractor)
    push!(plt, attractor.x, attractor.y)
end every 10

##  If you want to change the number, be sure knowing what it is working for and the crash that might happen.
