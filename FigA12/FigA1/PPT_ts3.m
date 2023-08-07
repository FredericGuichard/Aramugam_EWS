clc
clear all

%  hhh=figure('Position',[211 53 1060 578],'PaperPosition',[-1.2708 2.4896 11.0417 6.0208],'OuterPosition',[211 53 1060 675],'PaperPositionMode','manual','PaperSize',[8.5000 11]);

figure;
x=linspace(0,6000,600000);
t=x';



load kf72.dat
   x=kf72;
 plot(t(1:10:end,1),x(1:10:end,2),'LineWidth',1.5,'Color',[12/256 123/256 178/256]);


hold on
plot(t(1:10:end,1),x(1:10:end,4),'LineWidth',1.5,'Color',[127/256 14/256 65/256]);

set(gca,'Fontsize',18,'LineWidth',1.8,'TickDir','out')
ylabel('$H_{i}$','interpreter','latex','Fontsize',34,'rotation',0)
xlabel('time','interpreter','tex','Fontsize',22,'rotation',0)


axis([0 6000 0 0.3])
YTick= [0:0.1:0.3];
XTick = [0:2000:6000];
 set(gca,'xtick',XTick)
 set(gca,'ytick',YTick)
 
 annotation('textbox',...
    [0.216094339622642 0.752595155709343 0.143339622641509 0.131487889273357],...
    'String',{'$\mu=0.0001$'},...
    'LineStyle','none',...
    'Interpreter','latex',...
    'FontSize',22,...
    'FitBoxToText','on');
