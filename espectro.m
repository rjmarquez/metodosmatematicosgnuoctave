clear all
close all

L = 2;
A = 5;

n = 1:10;
coeff = abs(2*A/L*sin(n*pi/L)./(n*pi/L));
coeff0 = 2*A/L;
stem([0:10]*1/2/L,[coeff0 coeff])

#break
L = 4;

n = 1:20;
coeff = abs(2*A/L*sin(n*pi/L)./(n*pi/L));
coeff0 = 2*A/L;
hold on
stem([0:20]*1/2/L,[coeff0 coeff],'r')

#break
L = 20;

n = 1:100;
coeff = abs(2*A/L*sin(n*pi/L)./(n*pi/L));
coeff0 = 2*A/L;
stem([0:100]*1/2/L,[coeff0 coeff],'g')

#break
f = 0.01:0.01:2.5;
w = 2*pi*f;
#figure
plot(f,abs(2*A*sin(w)./w),'k')