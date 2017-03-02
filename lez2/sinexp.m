clear;
% Here I use the symbolic toolbox to have a taylor expansion without using
% a loop. Variable N is the order at which the expansion stop. Going
% through 10 periods of the sine is really too much, with N=110 still i'm
% not able to cover the real sine completely. With 3 periods and N=25 the
% result is ok, showing the polynomial departing near 3
N=25;
x=sym('x');
fx=sin(2*pi*x);
fs=taylor(fx,x,'ExpansionPoint',1,'Order',N);
nx=0:0.01:3;

fsn=eval(subs(fs,x,nx));
fbi=sin(2*pi*nx);

figure(1)
plot(nx,fsn,'k',nx,fbi,'b')