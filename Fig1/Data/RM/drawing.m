clc
clear  all

va=1;
xy=load('f11.dat');
plot(xy(1:end,4),xy(1:end,6+va),'-k','Linewidth',1.5);
hold on


xy=load('f12.dat');
plot(xy(1:end,4),xy(1:end,6+va),'-k','Linewidth',1.5);
hold on

 

 
xy=load('f21.dat');
 plot(xy(2:end,4),xy(2:end,6+va),'--k','Linewidth',2);
hold on


xy=load('f22.dat');
plot(xy(3:232,4),xy(3:232,[6+va]),'--k','Linewidth',2);
hold on

plot(xy(233:10:end,4),xy(233:10:end,[6+va]),'--k','Linewidth',2);
hold on


 


xy=load('f4_4.dat');
plot(xy(:,4),xy(:,[6+va+2 6+va+2]),'ok');



xy=load('f3_4.dat');
plot(xy(1:1:end,4),xy(1:1:end,[6+va 6+va+2]),'.','Color',[0.35 0.35 0.35],'Markersize',18);
 
 

set(gca,'Fontsize',16,'LineWidth',1.6,'TickDir','out')
% xlabel('$\mbox{Carrying capacity}~(k)$','interpreter','latex','Fontsize',22,'rotation',0)
ylabel('$V$','interpreter','latex','Fontsize',32,'rotation',0)
axis([0 0.6  -0.005 0.5]);
