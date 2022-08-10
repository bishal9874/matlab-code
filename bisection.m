clc;clear all;
f=inline('x^3-2*x-5')

a=input('enter the value of a:')
b=input('enter the value  of b:')
if f(a)*f(b)<0
  printf("root lies in the interval:\n")
end
x=(a+b)/2;
iter=0;
iter=iter+1;

printf("'iter= ' %d 'root = ' %f 'f(x) = ' %f\n", iter, x, f(x))
while abs(f(x))>10^-4
    if f(x)>0
      b=x;
    else
      a=x;
      
end
x=(a+b)/2;
iter=iter+1;
printf("'iter=' %d 'root=' %f 'f(x)=' %f\n", iter, x,f(x))
end
printf("root is %f",x)