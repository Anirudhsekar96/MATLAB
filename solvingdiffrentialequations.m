%% Solving second order diffrential equations

clc
clear all
syms x 
    
    eqn1 = 'D2y + 8*Dy + 2*y = cos(x)';
    intis = ' y(0) = 0, Dy(0) = 1';

    x = linspace (0,3,20);
    z= eval(y);
    plot(x,z)