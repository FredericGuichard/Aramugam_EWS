clc
clear all


hhh=figure('Position',[403 35 832 613],'OuterPosition',[403 35 832 710],'PaperPositionMode','manual','PaperSize',[20.999998640000001 29.699999020000003]);

[ha, pos]= tight_subplot(2,1,[.08 .01],[.1 .02],[.13 .06]);


axes(ha(1))

y=load('kf72.dat');

t=0:0.01:6000-0.01;

plot(t',y(1:1:end,2),'LineWidth',2,'Color',[0 0 1]);
hold on
plot(t',y(1:1:end,4),'LineWidth',2,'Color','red');

set(gca,'Fontsize',14,'LineWidth',1.6,...
    'TickDir','out','XAxislocation','bottom');
% xlabel('time','interpreter','none','Fontsize',18);
ylabel('$H_i$','interpreter','latex','Fontsize',36,'rotation',0)
axis([0 6000 0.05 0.25])

YTick= [0.05:0.05:0.25];


 XTick = [0:1000:6000];
 set(gca,'xtick',XTick)
 set(gca,'ytick',YTick)

 box off
ax=gca;
axes('position',ax.Position,'box','on','ytick',[],'xtick',[],'color','none','Linewidth',1.8)




 
%%

axes(ha(2));


y=load('k7sb38.dat');

t=0:0.01:4000-0.01;

plot(t',y(1:1:end,2),'LineWidth',2,'Color',[0 0 1]);
hold on
plot(t',y(1:1:end,4),'LineWidth',2,'Color','red');

set(gca,'Fontsize',14,'LineWidth',1.6,...
    'TickDir','out','XAxislocation','bottom');
xlabel('time','interpreter','none','Fontsize',18);
ylabel('$H_i$','interpreter','latex','Fontsize',36,'rotation',0)
axis([0 4000 0.02 0.2])

YTick= [0:0.05:0.2];


 XTick = [0:800:4000];
 set(gca,'xtick',XTick)
 set(gca,'ytick',YTick)
 
 



annotation('textbox',...
    [0.133211538461539 0.897226753670473 0.192509615384616 0.073409461663948],...
    'String','$\mbox{(a)}~\mu=0.0001$',...
    'LineStyle','none',...
    'Interpreter','latex',...
    'FontSize',18,...
    'FitBoxToText','on');

annotation('textbox',...
    [0.135615384615386 0.425774877650898 0.192509615384616 0.073409461663948],...
    'String','$\mbox{(b)}~\mu=-0.0001$',...
    'LineStyle','none',...
    'Interpreter','latex',...
    'FontSize',18,...
    'FitBoxToText','on');



box off
ax=gca;
axes('position',ax.Position,'box','on','ytick',[],'xtick',[],'color','none','Linewidth',1.8)



