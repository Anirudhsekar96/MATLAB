clc
clear all
t = linspace(0,2*pi,1001);
x = cos(t)
y = sin(t)
z = sin(5*t)
axis equal
plot3(x,y,z)
xlabel('xaxis')
ylabel('yaxis')
zlabel('z axis')
title('3Dplot')