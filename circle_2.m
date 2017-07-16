clc
clear all
t = linspace(0,20*pi,1001)
x = 1 + 2*sin(t)
y = 2 + 3*cos(t)
plot3(x,y,t)
axis equal 