clc
clear all
t = linspace(0,2*pi,1001);
x = 1+ 2*cos(t)
y = 2+ 3*sin(t)
plot(x,y)
axis equal
xlabel('X-Axis')
ylabel('Y-Axis')
title('Circle')
