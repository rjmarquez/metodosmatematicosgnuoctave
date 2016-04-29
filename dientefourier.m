clear all
close all

x = -pi:0.01:pi;
aproxsf = sin(x)-sin(2*x)/2+sin(3*x)/3-sin(4*x)/4;

aproxsf = 0;
for k = 1:4,
   aproxsf = aproxsf + (-1)^(k+1)*sin(k*x)/k;
end
plot(x,x/2,x,aproxsf) #,x+2*pi,x/2,x-2*pi,x/2)

xl = -3*pi:0.001:3*pi;
aproxsfxl = 0;
for k = 1:100,
   aproxsfxl = aproxsfxl + (-1)^(k+1)*sin(k*xl)/k;
end
figure
plot([x-2*pi x x+2*pi],[x/2 x/2 x/2],'linewidth',3,xl,aproxsfxl) #,x+2*pi,x/2,x-2*pi,x/2)
