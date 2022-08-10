clear all;
clc;
f= @(t0) 4*exp(-2*t0) + exp(-0.1*t0)-0.5;
dft= @(t0) -8*exp(-2*t0)-0.1*exp(-0.1*t0);
t0= input('enter the interval where roots lies:');
t1= t0 - f(t0)/dft(t0);
while(abs(t1-t0)> eps || abs(t1)> eps )
    t1= t0 - f(t0)/dft(t0);   
    t0= t1
end 
bacteria_concentration = t0
fprintf('calculate the time required for the bacteria concentration to be 0.5 by applying the  Newton-Raphson method %f \n',bacteria_concentration)
