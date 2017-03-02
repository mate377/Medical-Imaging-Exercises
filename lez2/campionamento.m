clear;
cput.noL=[];
cput.L=[];

for l=1:1000
    tstart=tic;
    N=l*1;
    T=10;
    x=0:T/N:T-T/N;
    y=sin(2*pi*x);
    cput.noL(l)=toc(tstart);

    tstart=tic;
    x=[];
    for k=1:N
        x(k)= T/N*k;
    end
    y=sin(2*pi*x);
    cput.L(l)=toc(tstart);
    
    cput.N(l)=N;
end

figure(1)
plot(cput.N,cput.noL,'b',cput.N,cput.L,'r')

