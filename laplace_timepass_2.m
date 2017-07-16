clc
clear all
syms s Y t

y0 = sym('y(t)');
y1 = diff(sym('y(t)'),1);
y2 = diff(sym('y(t)'),2);

a = input('Enter the coefficient of D2y= ')
b = input('Enter the coefficient of Dy = ')
c = input('Enter the coefficient of y  = ')
nh= input('Enter the non-homogenous part= ')

eqn = a*y2 + b*y1 + c*y0 - nh
LTY = laplace(eqn,t,s)

if(a==0)
    d = input('Enter the value of function at 0= ')
    LTY = subs(LTY,{'lapalace(eqn,t,s)','y(0)'},{Y,d})
    
else
    d = input('Enter the value of single derivative function at 0 = ')
    e = input('Enter the value of double derivative function at 0 = ')
    LTY = subs(LTY,{'laplace(eqn,t,s)','y(0)','D(y)(0)'},{Y,d,e})
    
end

 eqn = collect(LTY,Y);
 Y = simplify(solve(eqn,Y));
  y = simplify(ilaplace(Y,s,t));
        ezplot(y)


