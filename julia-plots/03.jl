using Plots; plotly()

theme(:dark)



function func_main_01(a)
   return [
        cos(a) sin(a)
        -sin(a) cos(a)
        -cos(a) -sin(a)
        sin(a) -cos(a)
        cos(a) sin(a)
        NaN NaN
    ]
end

a = 0.0
b = 0.0

for i = 0:100
    global a
    global b
    a = i/50*pi
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



