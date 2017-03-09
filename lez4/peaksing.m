clear;
close all;
[x,y]=meshgrid(-3:.05:3,-3:.05:3);
z=peaks(x,y);
subplot(1,2,1)
surfl(x,y,z) %plots to a new figure
colormap(hot);
axis([-3 3 -3 3 -10 10]); %X,Y,Z axis limits
shading flat %remove grid lines
xlabel('{\bfx}'); %{\bf...} set labels in bold font
ylabel('{\bfy}');
title('custom');
%zlabel('{\bfpeaks built in}({\bfx,y})')
subplot(1,2,2)
xlabel('{\bfx}'); %{\bf...} set labels in bold font
ylabel('{\bfy}');
peaks
title('built in');