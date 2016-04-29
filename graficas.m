clear all
close all
%fn = @(x) (1-i/2)*sin(x);
%fn = @(x) x.^2-0.75-0.2*i;
fn = @(x) (1+i)./(x.^2+1);
%fn = @(x) log(x);
%fn = @(x) exp(x)./x.^2;
%fn = @(x) i*cos(x);
%fn = @(x) log((x+1)./(x-1));
%fn = @(x) x.^5-1;

xmin=-2; xmax=2; ymin=-2; ymax=2;
Nx=2001;
Ny=2001;
x=linspace(xmin,xmax,Nx);
y=linspace(ymin,ymax,Ny);

[X,Y] = meshgrid(x,y);
%figure,plot(X,Y)
%break 
z = complex(X,Y);
tmp=z; 
for n=1:1
tmp = fn(tmp);
end
Z=tmp;
%Z = fn(z);
XX=real(Z);
YY=imag(Z);

%figure,plot(XX,YY)
%break

R2=max(max(X.^2));
R=max(max(XX.^2+YY.^2));
circle(:,:,1) = X.^2+Y.^2 < R2;
%circle(:,:,1) = 1;
circle(:,:,2)=circle(:,:,1);
circle(:,:,3)=circle(:,:,1);
addcirc(:,:,1)=circle(:,:,1)==0;
addcirc(:,:,2)=circle(:,:,1)==0;
addcirc(:,:,3)=circle(:,:,1)==0;

hsvCircle=ones(Nx,Ny,3);
hsvCircle(:,:,1)=atan2(YY,XX)*180/pi+(atan2(YY,XX)*180/pi<0)*360;
hsvCircle(:,:,1)=hsvCircle(:,:,1)/360; lgz=log(XX.^2+YY.^2)/2;
hsvCircle(:,:,2)=0.75; hsvCircle(:,:,3)=1-(lgz-floor(lgz))/2;
hsvCircle(:,:,1) = flipud((hsvCircle(:,:,1)));
hsvCircle(:,:,2) = flipud((hsvCircle(:,:,2)));
hsvCircle(:,:,3) =flipud((hsvCircle(:,:,3)));
rgbCircle=hsv2rgb(hsvCircle);
rgbCircle=rgbCircle.*circle+addcirc;
figure
image(rgbCircle)
axis equal
axis off