clc
clear all
syms x
eqn2 = 'D2y + 8*Dy + 2*y = cos(x)';
inits2 = 'y(0)=0, Dy(0)=1';
y=dsolve(eqn2,inits2,'x')
2
y = 2
exp((-4+14^(1/2))*x)*(53/1820*14^(1/2)-1/130) 
+exp(-(4+14^(1/2))*x)*(-53/1820*14^(1/2)-1/130)+1/65*cos(x)+8/65*sin(x)
x = linspace(0,5,100);
y = eval(y);
plot(x,y)