clc;clear all;

t0=input(" enter the value of t0 where the root lies:");
f=@(t0) t0^3-8*t0-4;
f1=@(t0) 3*t0^2-8;
x=5;

for i=1:x

  t1=t0-f(t0)/f1(t0);
  n=i
  t0=t1

end
printf("root is:%f\n",t0)