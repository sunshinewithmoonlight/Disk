using Plots; plotly()
#theme(:dark)

mutable struct Phrea
    dt; x; y
end

function step!(l::Phrea)
    dx = 0.02    ; l.x += l.dt * dx
    l.y = sin(l.x) + (sin(3*l.x))/3 + 0.2*sin(5*l.x) + (sin(7*l.x))/7 + (sin(9*l.x))/9
end

attractor = Phrea((dt = 1, x = -5., y = 0.)...)
plt_x=Any[]
plt_y=Any[]

plot(1, ylim=(-1.1, 1.1), title = "Phrea")

for i=1:1500
    step!(attractor)
    append!(plt_x, attractor.x)
    append!(plt_y, attractor.y)
end
plot!(plt_x, plt_y, show=true)
