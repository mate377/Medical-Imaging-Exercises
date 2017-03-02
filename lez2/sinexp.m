clear;
N=25;
x=sym('x');
fx=sin(2*pi*x);
fs=taylor(fx,x,'ExpansionPoint',1,'Order',N);
nx=0:0.01:3;

fsn=eval(subs(fs,x,nx));
fbi=sin(2*pi*nx);

figure(1)
plot(nx,fsn,'k',nx,fbi,'b')