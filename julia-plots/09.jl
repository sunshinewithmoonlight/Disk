## 改变图像亮度.  -1 < a <1
a = -1
for i = 0:100
    global a
    x=i/100
# y=x*(2-x)
# y``=-2
# y`=2-x
# y`=ax-2x^2
#    y=a*x^2+(1-a)*x
    y=(a*x+1-a)x
##  x=(a-1)/2a
##a-1 > a  or  a-1 < a  false  So  a < 0
##x=(a-1)/2a>1  a-1<2a  So  0>a>-1
    println(x,'\t',y)
    end


