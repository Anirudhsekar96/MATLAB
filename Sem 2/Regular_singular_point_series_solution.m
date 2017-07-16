% Finding the Power series Solution for an Ordinary Diffrential Equation
% for a Regual Singular Point

clc
clear all
syms x r c_0 d_0 c_1 c_2 c_3 c_4 c_5

P1x = input('Enter the coefficients of D2y: ')
P2x = input('Enter the coefficients of Dy: ')
P3x = input('Enter the coefficients of y: ')

c = [c_0,c_1,c_2,c_3,c_4,c_5];

y1 = sum(c.*(x).^(0:5));

Px = P2x/P1x;
Qx = P3x/P1x;

px = x*Px;
qx = x^2 * Qx;

a_0 = subs(px,x,0);
b_0 = subs(qx,x,0);

r = solve(r*(r-1) + a_0 * r + b_0);

for i=1:2
    y=expand(y1*x^r(i));
    dy = diff(y);
    d2y = diff(dy);
    
    ode1 = P1x*d2y + P2x*dy + P3x*y;
    ode = ode1/x^r(i);
    
    ps = collect(simplify(ode),x);
    d = coeffs(ps,x);
    
    [c_1,c_2,c_3,c_4,c_5] = solve(d(1),d(2),d(3),d(4),d(5),'c_1,c_2,c_3,c_4,c_5');
    
    z(i) = vpa(subs(y),3);
    
end

z(2) = subs(z(2),'c_0',d_0');
disp('Linearly Independant Solutions are: ');
disp(z(1));
disp(z(2));

z(1) = subs(z(1),'c_0',1)
z(2) = subs(z(2),'d_0',1)

fplot(char(z(1)),[1 4],'r--')
hold on
fplot(char(z(2)),[1 4],'b--')