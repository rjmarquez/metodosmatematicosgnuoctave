clear all
close all

set (0, "defaultlinelinewidth", 1.0, "defaulttextfontname", "Helvetica", 
"defaultaxesfontname", "Helvetica", "defaultaxesfontsize", 16.0);

x = -3*pi:0.01:pi*3;

aproxsf = pi/2;
for k = 1:2:10,
   aproxsf = aproxsf + 2/pi*(1-(-1)^ k)/k^2*cos(k*x);
end
plot([-3*pi -2*pi -pi 0 pi 2*pi 3*pi],[0 pi 0 pi 0 pi 0],'r','linewidth',4,x,aproxsf) #,x+2*pi,x/2,x-2*pi,x/2)
grid