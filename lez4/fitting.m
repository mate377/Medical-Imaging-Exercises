clear;
close all;
load('fitdata.mat');
plot(x,y,'r.','DisplayName','data');
hold on
f = fittype('a*sinc(b*(x+c))+d');
yfit=fit(x,y,f,'StartPoint',[10, 5, 0, 0])
% yfit = fit(x,y,f,'StartPoint',[11, 4*pi], 'Lower', [8, pi], 'Upper', [15, 6*pi]);% 'Normalize', 'on')
% yfit=fit(x,y,f,'Method','NonlinearLeastSquares')
plot(x,yfit(x),'k','DisplayName','fit')
title('{\bf fit a sinc}')
xlabel('{\bfx}'); %{\bf...} set labels in bold font
ylabel('{\bfy}');
grid on;
legend('show');
hold off