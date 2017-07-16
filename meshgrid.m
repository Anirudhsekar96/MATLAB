%ploting z=x*y*2-x^3
clc
clear all

x = -1:0.05:1;
y = -1:0.05:1;

[x,y] = meshgrid( x , y) ;
z = x*y*2 - x^3;

surf(x,y,z);
colormap spring
shading cool