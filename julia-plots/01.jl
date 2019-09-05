using Plots; plotly()

theme(:dark)



function func_main_01(a, b)
        global c
        global d
   return [
        b*c+3*cos(a) b*d+3*sin(a)
        -b*c-sin(a)+2cos(a) b*d+cos(a)+2sin(a)
        -b*c-cos(a)+2cos(a) -b*d-sin(a)+2sin(a)
        b*c+sin(a)+2cos(a) -b*d-cos(a)+2sin(a)
        b*c+3*cos(a) b*d+3*sin(a)
        NaN NaN
    ]
end

a = 0.0
b = 0.0
c = 0.0
d = 0.0

for i = 0:20
    global a
    global b
    a = a+i/10*pi
    b = i/20
    c = cos(a)/cos(a)
    d = sin(a)/sin(a)
    some_rects=[
    func_main_01(a, b)
    func_main_01(a, b)
    ]
    plot!(some_rects[:,1], some_rects[:,2], label="some group", show = false)
end

plot!(xlims = (-5,5),
    xticks = -5:0.2:5,
    ylims = (-5,5),
    yticks = -5:0.2:5,
    size = (600, 500),
    show = true
    )



