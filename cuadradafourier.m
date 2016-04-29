clear all
close all

set (0, "defaultlinelinewidth", 1.0, "defaulttextfontname", "Helvetica", 
"defaultaxesfontname", "Helvetica", "defaultaxesfontsize", 16.0);

x = -pi:0.01:pi;

aproxsf = 3/2;
for k = 1:2:10,
   aproxsf = aproxsf + 2/pi*sin(k*x)/k;
end
plot(x,pi/4*sign(x),x,aproxsf) #,x+2*pi,x/2,x-2*pi,x/2)

break
xl = -3*pi:0.001:3*pi;
aproxsfxl = 0;
for k = 1:2:20,
   aproxsfxl = aproxsfxl + sin(k*xl)/k;
end
figure
plot([x-2*pi,x,x+2*pi],[pi/4*sign(x),pi/4*sign(x),pi/4*sign(x)],'linewidth',3,xl,aproxsfxl) #,x+2*pi,x/2,x-2*pi,x/2)
grid