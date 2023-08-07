clc
clear all

% hhh=figure('Position',[137 25 862 623],'PaperPosition',[-2.156 -0.943 12.812 12.885],'OuterPosition',[137 25 862 720],'PaperPositionMode','manual','PaperSize',[8.5000 11]);


% hhh=figure('Position',[695 129 1230 1237],'PaperPosition',[-2.156 -0.943 12.812 12.885],'OuterPosition',[695 129 1230 1334],'PaperPositionMode','manual','PaperSize',[8.5000 11]);



load hb.dat
load hba.dat
load nor_res_HBA.dat
load nor_res_HB.dat
load AV_HB.dat
load AV_HBA.dat

[ha, pos]= tight_subplot(3,2,[.01 .01],[.1 .05],[.12 .02]);

axes(ha(1));

axes(ha(1))

t=1:11280;
plot(t,hb,'k','LineWidth',2)
hold on

x=nor_res_HB;
plot(t,x(:,1),'r', 'LineWidth',2)
hold on


 t1=linspace(0,1,5);
 t2=11280*ones(1,5);
 
 plot(t2,t1,'-.k','Linewidth',1);


set(gca,'Fontsize',14,'LineWidth',1.6,'TickDir','out')
ylabel('$H_1$','interpreter','latex','Fontsize',26,'rotation',0)
% xlabel('$\mbox{dispersal rate}~(d_{h})$','interpreter','latex','Fontsize',28,'rotation',0)
title({'Time series (upto critical point)'},'FontWeight','bold',...
    'FontSize',11);


axis([-800 12000 0.123 0.19])
YTick= [0.13:0.05:0.18];
XTick = [];
 set(gca,'xtick',XTick,'ytick',YTick)
 
 box off
ax=gca;
axes('position',ax.Position,'box','on','ytick',[],'xtick',[],'color','none','Linewidth',1.8)




%%
axes(ha(2))

t=1:15467;
plot(t,hba,'k','LineWidth',2)
hold on

x=nor_res_HBA;
plot(t,x(:,1),'r','LineWidth',2);
hold on
t1=linspace(0,1,5);
 t2=11280*ones(1,5);
 
 plot(t2,t1,'-.k','Linewidth',1);


set(gca,'Fontsize',14,'LineWidth',1.6,'TickDir','out')
% ylabel('$V_{i}$','interpreter','latex','Fontsize',32,'rotation',0)
% xlabel('$\mbox{dispersal rate}~(d_{h})$','interpreter','latex','Fontsize',28,'rotation',0)
title({'Time series (tracking unstable states)'},'FontWeight','bold',...
    'FontSize',11);

axis([-800 16000 0.123 0.19])
YTick= [];
XTick = [];
 set(gca,'xtick',XTick,'ytick',YTick)


%%
% axes(ha(3))
% 
% t=1:11280;
% x=nor_res_HB;
% 
% bar(t,x(:,2),'ShowBaseLine','off','EdgeColor','k','LineWidth',1.5,'BarWidth',0.01);
% 
% 
% set(gca,'Fontsize',14,'LineWidth',1.6,'TickDir','out')
% ylabel('Residuals','interpreter','none','Fontsize',18,'rotation',90)
% % xlabel('$\mbox{dispersal rate}~(d_{h})$','interpreter','latex','Fontsize',28,'rotation',0)
% 
% axis([-800 12000 -0.025 0.025])
% YTick= [-0.02:0.02:0.02];
% XTick = [];
%  set(gca,'xtick',XTick,'ytick',YTick)
%  
%  box off
% ax=gca;
% axes('position',ax.Position,'box','on','ytick',[],'xtick',[],'color','none','Linewidth',1.8)
% 
% 
% 
% %%
% axes(ha(4))
% 
% t=1:15467;
% 
% x=nor_res_HBA;
% 
% bar(t,x(:,2),'ShowBaseLine','off','EdgeColor','k','LineWidth',1.5,'BarWidth',0.01);
% 
% set(gca,'Fontsize',14,'LineWidth',1.6,'TickDir','out')
% % ylabel('Residuals','interpreter','none','Fontsize',22,'rotation',90)
% % xlabel('$\mbox{dispersal rate}~(d_{h})$','interpreter','latex','Fontsize',28,'rotation',0)
% 
% axis([-800 16000 -0.025 0.025]);
% YTick= [];
% XTick = [];
%  set(gca,'xtick',XTick,'ytick',YTick)

%%
axes(ha(3))

% t=1:5641;

x=AV_HB;
plot(x(:,1),x(:,2),'g','LineWidth',2)
% xlim([0 12000])

set(gca,'Fontsize',14,'LineWidth',1.6,'TickDir','out')
ylabel('Autocorrelation','interpreter','none','Fontsize',18,'rotation',90)
% xlabel('$\mbox{dispersal rate}~(d_{h})$','interpreter','latex','Fontsize',28,'rotation',0)

axis([-800 12000 0.992 0.998])
YTick= [0.993:0.002:0.997];
XTick = [];
 set(gca,'xtick',XTick,'ytick',YTick)
 
 box off
ax=gca;
axes('position',ax.Position,'box','on','ytick',[],'xtick',[],'color','none','Linewidth',1.8)




%%
axes(ha(4))

t=1:15156;

x=AV_HBA;
plot(x(:,1),x(:,2),'g','LineWidth',2)

set(gca,'Fontsize',14,'LineWidth',1.6,'TickDir','out')
% ylabel('Autocorrelation','interpreter','none','Fontsize',22,'rotation',90)
% xlabel('$\mbox{dispersal rate}~(d_{h})$','interpreter','latex','Fontsize',28,'rotation',0)

axis([-1000 16000 0.992 0.998])
YTick= [];
XTick = [];
 set(gca,'xtick',XTick,'ytick',YTick)

%%
axes(ha(5))


x=AV_HB;
plot(x(:,1),sqrt(x(:,3)),'b','LineWidth',2)

set(gca,'Fontsize',14,'LineWidth',1.6,'TickDir','out');
ylabel('Variance','interpreter','none','Fontsize',18,'rotation',90)
xlabel('time','Fontsize',18)


axis([-800 12000 0.065 0.095])
YTick= [0.07:0.01:0.09];
XTick = [0:5000:11280];
  set(gca,'xtick',XTick,'ytick',YTick)
xticklabels({'3000','4000','5000'})


box off
ax=gca;
axes('position',ax.Position,'box','on','ytick',[],'xtick',[],'color','none','Linewidth',1.8)


%%
axes(ha(6))



x=AV_HBA;
plot(x(:,1),sqrt(x(:,3)),'b','LineWidth',2)
set(gca,'Fontsize',14,'LineWidth',1.6,'TickDir','out');
% ylabel('Variance','interpreter','none','Fontsize',22,'rotation',90)
xlabel('time','Fontsize',18)


axis([-1000 16000 0.065 0.095])
YTick= [];
XTick = [0:5000:15467];
  set(gca,'xtick',XTick,'ytick',YTick)
   xticklabels({'3000','4000','5000','6000'})

  
  box off
ax=gca;
axes('position',ax.Position,'box','on','ytick',[],'xtick',[],'color','none','Linewidth',1.8)


annotation('textbox',...
    [0.451325391885009 0.749671382828161 0.0788863088996117 0.0529695013074585],...
    'String',{'HB3'},...
    'LineStyle','none',...
    'FontSize',14,...
    'FitBoxToText','on');

annotation('textbox',...
    [0.798974081828985 0.744035887642923 0.0788863088996118 0.0529695013074585],...
    'String',{'HB3'},...
    'LineStyle','none',...
    'FontSize',14,...
    'FitBoxToText','on');

annotation('textbox',...
    [0.188804878048781 0.236540016630722 0.14632260290644 0.0455941790038777],...
    'String','$\mbox{Kendall}-\tau:0.797$',...
    'LineStyle','none',...
    'Interpreter','latex',...
    'FontSize',14,...
    'FitBoxToText','on');

annotation('textbox',...
    [0.186365853658537 0.464510913962977 0.14632260290644 0.0455941790038777],...
    'String',{'$\mbox{Kendall}-\tau:0.724$'},...
    'LineStyle','none',...
    'Interpreter','latex',...
    'FontSize',14,...
    'FitBoxToText','on');
annotation('textbox',...
    [0.618073170731707 0.236540016630721 0.146322602906441 0.0455941790038776],...
    'String','$\mbox{Kendall}-\tau:0.889$',...
    'LineStyle','none',...
    'Interpreter','latex',...
    'FontSize',14,...
    'FitBoxToText','on');

annotation('textbox',...
    [0.614821138211382 0.465319321400325 0.14632260290644 0.0455941790038776],...
    'String','$\mbox{Kendall}-\tau:0.78$',...
    'LineStyle','none',...
    'Interpreter','latex',...
    'FontSize',14,...
    'FitBoxToText','on');


set(gcf, 'Renderer', 'Painters');
