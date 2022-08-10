clear all
clc
f=@(x,y)x-y; %Write your f(x,y) function, where dy/dx=f(x,y), x(x0)=y0.
x0=input('\n Enter initial value of x i.e. x0: '); %example x0=0
y0=input('\n Enter initial value of y i.e. y0: '); %example y0=0.5
xn=input('\n Enter the final value of x: ');% where we need to find the value of y 
                                            %example x=2
h=input('\n Enter the step length h: '); %example h=0.2
 %Formula: k1=h*f(x0,y0);  k2=h*f(x0+h,y0+k1); y1=y0+(k1+k2)/2; 
 fprintf('\n x        y ');      
while x0<=xn
    fprintf('\n%4.3f  %4.3f ',x0,y0); %values of x and y     
    k1=h*f(x0,y0);
    k2=h*f(x0+h/2.0,y0+k1/2.0);
    k3=h*f(x0+h/2.0,y0+k2/2.0);
    x1=x0+h;
    k4=h*f(x1,y0+k3);
    y1=y0+(k1+2*(k2+k3)+k4)/6;
    x0=x1;
    y0=y1;  
end