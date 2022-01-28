clc; clear all;
x0 = input("enter the value of x0: ");
y0 = input("enter the value of y0: ");

df = inline('x^2+y^2')
h= 0.1
n = 4;
k=0;
X1 = input("write the vlaue of x at which y will evalauted: ");
for i=1:n
k1 = h*df(x0,y0)
k2 = h*df(x0+h/2,y0+k1/2)
k3 = h*df(x0+h/2,y0+k2/2)
k4 = h*df(x0+h,y0+k3)
y = y0 + (1/6)*(k1+2*k2+2*k3+k4)
y0 = y
x0 = x0 + h
end
