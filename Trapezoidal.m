clc;clear;
a=input("enter x0 ");
b=input("enter xn ");;
n=input("enter n : ");;
h=(b-a)/n;
sum=0;
f=@(x) 4*x-3*x^2;
for i=1:1:n-1
    sum= sum + f(a+i*h);
    
end
result = h/2*(f(a)+f(b)+2*sum);
fprintf('Trapezoidal inegration is %f',result);