clear
clc
%f=input('\n Enter the function f(x): '); %inline('x^3-4*x-9')
f=@ (x) 3*x-cos(x)-1% [1, 2]

x0=input('\n Enter left point of interval '); %here x0=2
x1=input('\n Enter right point of interval ');%here x1=3
epsilon=input('\n Enter the error '); %error of tolerance you want. 
%for exmple 0.001 or 0.0001 etc.
err=abs(x1-x0);
 %Formula: x2=x1-((x1-x0)/(f(x1)-f(x0)))*f(x1);
 if f(x0)*f(x1)>0 
    disp('Enter valid interval !!!');
    return
 else
%fprintf('\n x0 \t \t  x1 \t \t x2 \t \t f(x0) \t\t f(x1) \t\t  f(x2)');     
while err > epsilon
    x2=x1-((x1-x0)/(f(x1)-f(x0)))*f(x1);
    root=x2;
    %fprintf('\n %0.4f \t %0.4f \t %0.5f \t %0.4f \t %0.4f\t %0.4f',x0,x1,x2,f(x0),f(x1),f(x2));
    if f(x1)*f(x2)<0
         x1=x2;
     else
         x0=x2;
    end
       err=abs(x0-x1);    
 end
    fprintf('\n The root is %4.4f ',root);
 end