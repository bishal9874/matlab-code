clear
clc
%f=input('\n Enter the function f(x,y): '); %inline('x^2+y') 
%Write your f(x,y) function, where dy/dx=f(x,y), x(x0)=y0.
 f=@ (x,y) x^3+y;
x0=input('\n Enter initial value of x i.e. x0: '); %example x0=0
y0=input('\n Enter initial value of y i.e. y0: '); %example y0=1
xn=input('\n Enter the final value of x: ');
% where we need to find the value of y 
%example x=1
h=input('\n Enter the step length h: '); %example h=0.2
 %Formula: y1=y0+h*f(x0,y0);
 fprintf('\n  x        y ');
 fprintf('\n %4.3f  %4.3f ',x0,y0);
while x0<xn
    y1=y0+h*f(x0,y0);
    x1=x0+h;
    x0=x1;
    y0=y1; 
    fprintf('\n %4.3f  %4.3f ',x0,y0); %values of x and y
end
 answer=y0;
 fprintf('\n The value of y at x=%0.2f is y=%2.3f',xn,answer);