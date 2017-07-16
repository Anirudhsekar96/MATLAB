clc
clear all
syms x
y=dsolve('D2y+8*Dy+2*y-cos(x)=0','y(0)=0,Dy(0)=0',x)
ezplot(y)