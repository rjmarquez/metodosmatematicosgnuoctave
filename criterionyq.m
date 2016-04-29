# Nyquist criterion
clear all
close all

fn = @(z,a) 1./((z+1).^2+a^2);

Z = fn(2*exp((0:0.01:2*pi)*i),sqrt(3)-0.1);

function toplot = flecha(Z)
   n = length(Z);
   s = floor(n/2);
   l = floor(s/10);
   %s = s+l;
   z = Z(s+l) - Z(s);
   l1 = Z(s)+z*i;
   l2 = Z(s)-z*i;
   toplot = [l1 Z(s+l) l2];
endfunction

plot(real(flecha(Z)),imag(flecha(Z)),'r',real(Z),imag(Z),0,0,'r+')