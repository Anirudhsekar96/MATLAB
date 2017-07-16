%subplot

clc
clear all

x = 0:0.01:2*pi;

subplot(2,1,1);
plot(x,sin(x),'b:.');
title('Sinx')

subplot(2,2,2);
plot(x,cos(x),'g:.');
title('Cosx')

subplot(2,2,3);
plot(x,sin(3*x),'r:.');
title('Sin3x')

subplot(2,2,4);
plot(x,exp(x),'y:.');
title('Exponetial of x')