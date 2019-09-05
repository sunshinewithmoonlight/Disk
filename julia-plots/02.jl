using Plots; plotly()

theme(:dark)

function func_main_01(a)
    [
        1+cos(a) 1+sin(a)
        -1-sin(a) 1+cos(a)
        -1-cos(a) -1-sin(a)
        1+sin(a) -1-cos(a)
        1+cos(a) 1+sin(a)
        NaN NaN
    ]
end

a = 0.0
b = 1.0
for i = 0:60
    global a
#    global b
#    b = b * 0.5
    a = i/30*pi
    some_rects=[
    func_main_01(a)
    func_main_01(a)
    ]
    plot!(some_rects[:,1], some_rects[:,2], label="some group", show = false)
end

plot!(xlims = (-3,3),
    xticks = -3:0.2:3,
    ylims = (-3,3),
    yticks = -3:0.2:3,
    size = (600, 500),
    show = true
    )



