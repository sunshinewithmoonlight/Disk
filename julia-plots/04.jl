using Plots; plotly()
theme(:dark)

mutable struct Lorenz
    dt; σ; ρ; x; y
end

function step!(l::Lorenz)
    dx = l.σ*(l.y - l.x)       ; l.x += l.dt * dx
    dy = l.x*(l.ρ - l.z) - l.y ; l.y += l.dt * dy
end




#function func_main_01(a)
#   return [
#        cos(a) sin(a)
#        -sin(a) cos(a)
#        -cos(a) -sin(a)
#        sin(a) -cos(a)
#        cos(a) sin(a)
#        NaN NaN
#    ]
#end

a = 0.0
#b = 0.0

for i = 0:100
    global a
    global b
    a = i/50*pi
## a: 0~2pi
#    b = i/20
#    c = cos(a)/cos(a)
#    d = sin(a)/sin(a)
    some_rects=[
    func_main_01(a)
    func_main_01(a)
    ]
    plot!(some_rects[:,1], some_rects[:,2], label="some group", show = false)
end

plot!(xlims = (-2,2),
    xticks = -2:0.2:2,
    ylims = (-2,2),
    yticks = -2:0.2:2,
    size = (600, 500),
    show = true
    )


@gif for i=1:1500
    step!(attractor)
    push!(plt, attractor.x, attractor.y, attractor.z)
end every 10
