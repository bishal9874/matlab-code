#Euler' method to solve initial value  prblm

clc, clear all;
x0= input("write the value of x0: ")
y0= input("write the value of Y0: ")
df = inline('x+y')
xn = input("write the value of x which y will be evaluated:")
h= input("write the value at h:")
for i=2:n
y(i)= y(i-1)+h*df(x(i-1),y(i-1))
x(i) = x(i-1)+h
end