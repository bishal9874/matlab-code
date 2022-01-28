format short
clear all;
clc 
f= @(x) 1/(x^2 + 6x +10);
a = input("enter lower limit");
b = input("enter upper limit");
n = input("enter number of sub interval");
h = (b-a)/2;

if rem(n,2)==1
  print("\n please enter valid n !!");
  n = input('\n Enter n as even Number ');
end
k = 1:1:(n-1);
s = f(a+k.*h);
Se = sum(s(2:2:n-1);
So = sum(s(1:2:n-1);

fx = (h/3)*(f(a)+f(b)+2.*So+4.*Se);

print("the value of intregation is %f \n ", fx);