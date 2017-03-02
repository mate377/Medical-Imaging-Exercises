clear;
% the idea is to sample the function with and without a loop and record the
% computing time. Then i plot a graph of cpu time vs N being the # of
% samples

cput.noL=[]; % i use a structure that contain 2 arrays of cpu times
cput.L=[];   % with loop=L and no loop=noL

for l=1:20
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

