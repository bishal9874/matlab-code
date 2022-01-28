clc
clear all;
f= @(i) 4*exp(-2*i) + exp(-0.1*i)-0.5;
dft= @(i) -8*exp(-2*i)-0.1*exp(-0.1*i);
i= input('enter the interval where roots lies:');
 
for x=1:100
f(i+1) = i-f(i)/dft(i);
f(i) = f(i+1)
end
root=f(i)
