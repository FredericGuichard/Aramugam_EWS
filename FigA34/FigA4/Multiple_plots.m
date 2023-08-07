clc
clear all

hhh=figure('Position',[695 129 1230 1237],'PaperPosition',[-2.156 -0.943 12.812 12.885],'OuterPosition',[695 129 1230 1334],'PaperPositionMode','manual','PaperSize',[8.5000 11]);



load hb.dat
load hba.dat
load nor_res_HBA.dat
load nor_res_HB.dat
load AV_HB.dat
load AV_HBA.dat

[ha, pos]= tight_subplot(4,2,[.01 .01],[.07 .03],[.1 .02]);

axes(ha(1));

axes(ha(1))

t=1:15155;
plot(t,hb,'k','LineWidth',2)
hold on

x=nor_res_HB;
plot(t,x(:,1),'r', 'LineWidth',2)
hold on


 t1=linspace(0,1,5);
 t2=15155*ones(1,5);
 
 plot(t2,t1,'-.k','Linewidth',1);


set(gca,'Fontsize',14,'LineWidth',1.6,'TickDir','out')
ylabel('$V_{i}$','interpreter','latex','Fontsize',32,'rotation',0)
% xlabel('$\mbox{dispersal rate}~(d_{h})$','interpreter','latex','Fontsize',28,'rotation',0)

axis([-1000 16000 0.178 0.262])
YTick= [0.18:0.04:0.26];
XTick = [];
 set(gca,'xtick',XTick,'ytick',YTick)
 
 box off
ax=gca;
axes('position',ax.Position,'box','on','ytick',[],'xtick',[],'color','none','Linewidth',1.8)




%%
axes(ha(2))

t=1:15156;
plot(t,hba,'k','LineWidth',2)
hold on

x=nor_res_HBA;
plot(t,x(:,1),'r','LineWidth',2);
hold on
t1=linspace(0,1,5);
 t2=12305*ones(1,5);
 
 plot(t2,t1,'-.k','Linewidth',1);


set(gca,'Fontsize',14,'LineWidth',1.6,'TickDir','out')
% ylabel('$V_{i}$','interpreter','latex','Fontsize',32,'rotation',0)
% xlabel('$\mbox{dispersal rate}~(d_{h})$','interpreter','latex','Fontsize',28,'rotation',0)

axis([-1000 16000 0.178 0.262])
YTick= [];
XTick = [];
 set(gca,'xtick',XTick,'ytick',YTick)


%%
axes(ha(3))

t=1:15155;
x=nor_res_HB;

bar(t,x(:,2),'ShowBaseLine','off','EdgeColor','k','LineWidth',1.5,'BarWidth',0.01);


set(gca,'Fontsize',14,'LineWidth',1.6,'TickDir','out')
ylabel('Residuals','interpreter','none','Fontsize',22,'rotation',90)
% xlabel('$\mbox{dispersal rate}~(d_{h})$','interpreter','latex','Fontsize',28,'rotation',0)

axis([-1000 16000 -0.011 0.011])
YTick= [-0.01:0.01:0.01];
XTick = [];
 set(gca,'xtick',XTick,'ytick',YTick)
 
 box off
ax=gca;
axes('position',ax.Position,'box','on','ytick',[],'xtick',[],'color','none','Linewidth',1.8)



%%
axes(ha(4))

t=1:15156;

x=nor_res_HBA;

bar(t,x(:,2),'ShowBaseLine','off','EdgeColor','k','LineWidth',1.5,'BarWidth',0.01);

set(gca,'Fontsize',14,'LineWidth',1.6,'TickDir','out')
% ylabel('Residuals','interpreter','none','Fontsize',22,'rotation',90)
% xlabel('$\mbox{dispersal rate}~(d_{h})$','interpreter','latex','Fontsize',28,'rotation',0)

axis([-1000 16000 -0.011 0.011])
YTick= [];
XTick = [];
 set(gca,'xtick',XTick,'ytick',YTick)

%%
axes(ha(5))

t=1:15155;

x=AV_HB;
plot(x(:,1),x(:,2),'g','LineWidth',2)
xlim([0 16000])

set(gca,'Fontsize',14,'LineWidth',1.6,'TickDir','out')
ylabel('Autocorrelation','interpreter','none','Fontsize',22,'rotation',90)
% xlabel('$\mbox{dispersal rate}~(d_{h})$','interpreter','latex','Fontsize',28,'rotation',0)

axis([-1000 16000 0.9948 0.9994])
YTick= [0.995:0.002:0.999];
XTick = [];
 set(gca,'xtick',XTick,'ytick',YTick)
 
 box off
ax=gca;
axes('position',ax.Position,'box','on','ytick',[],'xtick',[],'color','none','Linewidth',1.8)




%%
axes(ha(6))

t=1:15156;

x=AV_HBA;
plot(x(:,1),x(:,2),'g','LineWidth',2)

set(gca,'Fontsize',14,'LineWidth',1.6,'TickDir','out')
% ylabel('Autocorrelation','interpreter','none','Fontsize',22,'rotation',90)
% xlabel('$\mbox{dispersal rate}~(d_{h})$','interpreter','latex','Fontsize',28,'rotation',0)

axis([-1000 16000 0.9948 0.9994])
YTick= [];
XTick = [];
 set(gca,'xtick',XTick,'ytick',YTick)

%%
axes(ha(7))


x=AV_HB;
plot(x(:,1),sqrt(x(:,3)),'b','LineWidth',2)

set(gca,'Fontsize',14,'LineWidth',1.6,'TickDir','out');
ylabel('Variance','interpreter','none','Fontsize',22,'rotation',90)
xlabel('time','Fontsize',20)


axis([-600 16600 0.034 0.053])
YTick= [0.035:0.005:0.05];
XTick = [0:5000:15000];
  set(gca,'xtick',XTick,'ytick',YTick)


box off
ax=gca;
axes('position',ax.Position,'box','on','ytick',[],'xtick',[],'color','none','Linewidth',1.8)
 xticklabels({'1000','6000','11000','16000'})


%%
axes(ha(8))



x=AV_HBA;
plot(x(:,1),sqrt(x(:,3)),'b','LineWidth',2)
set(gca,'Fontsize',14,'LineWidth',1.6,'TickDir','out');
% ylabel('Variance','interpreter','none','Fontsize',22,'rotation',90)
xlabel('time','Fontsize',20)


axis([-600 16600 0.034 0.053])
YTick= [];
XTick = [0:5000:15000];
  set(gca,'xtick',XTick,'ytick',YTick)
   xticklabels({'3600','8600','13600','19600'})

  
  box off
ax=gca;
axes('position',ax.Position,'box','on','ytick',[],'xtick',[],'color','none','Linewidth',1.8)


annotation('textbox',...
    [0.481487804878049 0.868229587712206 0.0542845528455284 0.0307194826192401],...
    'String',{'HB'},...
    'LineStyle','none',...
    'FontSize',14,...
    'FitBoxToText','on');

annotation('textbox',...
    [0.854658536585366 0.865804365400161 0.0542845528455285 0.0307194826192401],...
    'String',{'HB'},...
    'LineStyle','none',...
    'FontSize',14,...
    'FitBoxToText','on');

annotation('textbox',...
    [0.188804878048781 0.236540016630722 0.14632260290644 0.0455941790038777],...
    'String','$\mbox{Kendall}-\tau:0.522$',...
    'LineStyle','none',...
    'Interpreter','latex',...
    'FontSize',18,...
    'FitBoxToText','on');

annotation('textbox',...
    [0.186365853658537 0.464510913962977 0.14632260290644 0.0455941790038777],...
    'String',{'$\mbox{Kendall}-\tau:0.545$'},...
    'LineStyle','none',...
    'Interpreter','latex',...
    'FontSize',18,...
    'FitBoxToText','on');
annotation('textbox',...
    [0.618073170731707 0.236540016630721 0.146322602906441 0.0455941790038776],...
    'String','$\mbox{Kendall}-\tau:0.952$',...
    'LineStyle','none',...
    'Interpreter','latex',...
    'FontSize',18,...
    'FitBoxToText','on');

annotation('textbox',...
    [0.614821138211382 0.465319321400325 0.14632260290644 0.0455941790038776],...
    'String','$\mbox{Kendall}-\tau:0.837$',...
    'LineStyle','none',...
    'Interpreter','latex',...
    'FontSize',18,...
    'FitBoxToText','on');


set(gcf, 'Renderer', 'Painters');
