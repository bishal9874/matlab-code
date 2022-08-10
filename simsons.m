
clear all;
clc ;

%f= inline('1./(x.^2 + 6*x +10)')
f = @(x) 4*x-3*x.^2;
a = input("enter lower limit: ");
b = input("enter upper limit: ");
n = input("enter number of sub interval: ");
h = 0.1;

if rem(n,2)==1 
  printf("\n please enter valid n !!");
  n = input('\n Enter n as even Number ');
end
k = 1:1:(n-1);
sn = f(a+k.*h);
Se = sum(sn(2:2:n-1));
So = sum(sn(1:2:n-1));

fx = (h/3).*(f(a)+f(b)+2.*Se+4.*So);

printf("the value of intregation is %f \n ", fx);
