% Fourier Series by Evaluating Fourier Coeffficients

clc
clear all
syms x

f = input('Enter the function in terms of x: ');
L = input('Enter the lower limit of domain: ');
U = input('Enter the upper limit of domain: ');
N = input('Enter the number of terms: ');

L1 = (U -L )/2;
a_0 = (1/L1)* int(f,x,L,U);
F_s = a_0/2;

for n=1:N
    a(n) = (1/L1)*int(f*cos((n*pi*x)/L1),x,L,U);
    b(n) = (1/L1)*int(f*sin((n*pi*x)/L1),x,L,U);
    
    F_s = vpa(F_s +a(n)*cos((n*pi*x)/L1) + b(n)*sin((n*pi*x)/L1),4);
    
    figure(n)
    
    h1 = ezplot(F_s,[L U]);
    set(h1,'color','r','marker','.')
    
    hold on
    
    h2 = ezplot(F_s,[L U]);
    set(h2,'color','k','marker','.')
    legend('function f(x)','Fourier Series of F(x)')
end

