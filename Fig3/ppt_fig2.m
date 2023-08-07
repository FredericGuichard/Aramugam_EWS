clc
clear all

% hhh=figure('Position',[695 129 1230 1237],'PaperPosition',[-2.156 -0.943 12.812 12.885],'OuterPosition',[695 129 1230 1334],'PaperPositionMode','manual','PaperSize',[8.5000 11]);



load tb.dat
load tba.dat
load nor_res_TBA.dat
load nor_res_TB.dat
load AV_TB.dat
load AV_TBA.dat

[ha, pos]= tight_subplot(3,2,[.01 .01],[.1 .05],[.11 .09]);

axes(ha(1));


t=1:14680;
plot(t,tb,'k','LineWidth',2)
hold on

x=nor_res_TB;
plot(t,x(:,1),'r', 'LineWidth',2)
hold on


 t1=linspace(0,1,5);
 t2=14680*ones(1,5);
 
 plot(t2,t1,'-.k','Linewidth',1);
 
 
 
 hold on
 
 y1=linspace(0,7340,10);
 y2=0.099*ones(1,10);
 
 plot(y1,y2,'k');  hold on
 
 y3=linspace(0.098,0.1,10);
 y4=0*ones(1,10);
  plot(y4,y3,'k');  hold on
y3=linspace(0.098,0.10,10);
 y4=7340*ones(1,10);
  plot(y4,y3,'k'); 
  


set(gca,'Fontsize',13,'LineWidth',1.4,'TickDir','out')
ylabel('$V_{i}$','interpreter','latex','Fontsize',26,'rotation',0)
% xlabel('$\mbox{dispersal rate}~(d_{h})$','interpreter','latex','Fontsize',28,'rotation',0)
title({'Time series (upto critical point)'},'FontWeight','bold',...
    'FontSize',11);


axis([-800 15500 0.093 0.135])
YTick= [0.10:0.03:0.13];
XTick = [];
 set(gca,'xtick',XTick,'ytick',YTick)
 
 box off
ax=gca;
axes('position',ax.Position,'box','on','ytick',[],'xtick',[],'color','none','Linewidth',1.8)




%%
axes(ha(2))

t=1:14680;
plot(t,tba,'k','LineWidth',2)
hold on

x=nor_res_TBA;
plot(t,x(:,1),'r','LineWidth',2);
hold on
t1=linspace(0,1,5);
 t2=1402*ones(1,5);
 
 plot(t2,t1,'-.k','Linewidth',1);


set(gca,'Fontsize',13,'LineWidth',1.4,'TickDir','out')
% ylabel('$V_{i}$','interpreter','latex','Fontsize',32,'rotation',0)
% xlabel('$\mbox{dispersal rate}~(d_{h})$','interpreter','latex','Fontsize',28,'rotation',0)
title({'Time series (tracking unstable states)'},'FontWeight','bold',...
    'FontSize',11);
axis([-1000 16000 0.073 0.11])
YTick= [0.08:0.025:0.11];
XTick = [];
 set(gca,'xtick',XTick,'ytick',YTick,'YAxisLocation', 'right')

 
 box off
ax=gca;
axes('position',ax.Position,'box','on','ytick',[],'xtick',[],'color','none','Linewidth',1.8)


%%
% axes(ha(3))
% 
% t=1:14680;
% x=nor_res_TB;
% 
% bar(t,x(:,2),'ShowBaseLine','off','EdgeColor','k','LineWidth',1.5,'BarWidth',0.01);
% 
% 
% set(gca,'Fontsize',13,'LineWidth',1.4,'TickDir','out')
% ylabel('Residuals','interpreter','none','Fontsize',18,'rotation',90)
% % xlabel('$\mbox{dispersal rate}~(d_{h})$','interpreter','latex','Fontsize',28,'rotation',0)
% 
% axis([-1000 16000 -0.013 0.013])
% YTick= [-0.01:0.01:0.01];
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
% t=1:14680;
% 
% x=nor_res_TBA;
% 
% bar(t,x(:,2),'ShowBaseLine','off','EdgeColor','k','LineWidth',1.5,'BarWidth',0.01);
% 
% set(gca,'Fontsize',13,'LineWidth',1.4,'TickDir','out')
% % ylabel('Residuals','interpreter','none','Fontsize',22,'rotation',90)
% % xlabel('$\mbox{dispersal rate}~(d_{h})$','interpreter','latex','Fontsize',28,'rotation',0)
% 
% axis([-1000 16000 -0.009 0.009])
%  YTick= [-0.007:0.007:0.007];
% XTick = [];
%  set(gca,'xtick',XTick,'ytick',YTick,'YAxisLocation', 'right')
% yticklabels({'-0.007','0','0.007'})
% 
% box off
% ax=gca;
% axes('position',ax.Position,'box','on','ytick',[],'xtick',[],'color','none','Linewidth',1.8)
% 
%  
%%
axes(ha(3))

t=1:14680;

x=AV_TB;
plot(x(:,1),x(:,2),'g','LineWidth',2)
xlim([0 16000])

set(gca,'Fontsize',13,'LineWidth',1.4,'TickDir','out')
ylabel('Autocorrelation','interpreter','none','Fontsize',18,'rotation',90)
% xlabel('$\mbox{dispersal rate}~(d_{h})$','interpreter','latex','Fontsize',28,'rotation',0)

axis([-1000 16000 0.9905 0.9975])
YTick= [0.991:0.003:0.997];
XTick = [];
 set(gca,'xtick',XTick,'ytick',YTick)
 
 box off
ax=gca;
axes('position',ax.Position,'box','on','ytick',[],'xtick',[],'color','none','Linewidth',1.8)




%%
axes(ha(4))

t=1:14680;

x=AV_TBA;
plot(x(:,1),x(:,2),'g','LineWidth',2)

set(gca,'Fontsize',13,'LineWidth',1.4,'TickDir','out')
% ylabel('Autocorrelation','interpreter','none','Fontsize',22,'rotation',90)
% xlabel('$\mbox{dispersal rate}~(d_{h})$','interpreter','latex','Fontsize',28,'rotation',0)

axis([-1000 16000 0.992 0.998])
YTick= [0.993:0.004:0.997];
XTick = [];
 set(gca,'xtick',XTick,'ytick',YTick,'YAxisLocation', 'right')

 
 
 box off
ax=gca;
axes('position',ax.Position,'box','on','ytick',[],'xtick',[],'color','none','Linewidth',1.8)

%%
axes(ha(5))


x=AV_TB;
plot(x(:,1),sqrt(x(:,3)),'b','LineWidth',2)

set(gca,'Fontsize',13,'LineWidth',1.4,'TickDir','out');
ylabel('Variance','interpreter','none','Fontsize',18,'rotation',90)
xlabel('time','Fontsize',18)


axis([-800 15500 0.038 0.062])
YTick= [0.04:0.01:0.06];
XTick = [0:3500:14000];
  set(gca,'xtick',XTick,'ytick',YTick)
  xticklabels({'0','175','350','525','700'})


box off
ax=gca;
axes('position',ax.Position,'box','on','ytick',[],'xtick',[],'color','none','Linewidth',1.8)
 xticklabels({'1000','6000','11000','16000'})


%%
axes(ha(6))



x=AV_TBA;
plot(x(:,1),sqrt(x(:,3)),'b','LineWidth',2)
set(gca,'Fontsize',13,'LineWidth',1.4,'TickDir','out');
% ylabel('Variance','interpreter','none','Fontsize',22,'rotation',90)
xlabel('time','Fontsize',18)


axis([-800 15500 0.042 0.0515])
YTick= [0.043:0.007:0.05];
XTick = [0:3500:14000];
  set(gca,'xtick',XTick,'ytick',YTick,'YAxisLocation', 'right')
   xticklabels({'700','875','1050','1225','1400'})
   
   
box off
ax=gca;
axes('position',ax.Position,'box','on','ytick',[],'xtick',[],'color','none','Linewidth',1.8)


annotation('textbox',...
    [0.438649786136416 0.838748402581368 0.0722891548710815 0.0551839453420512],...
    'String',{'TB'},...
    'LineStyle','none',...
    'FontSize',14,...
    'FitBoxToText','on');

annotation('textbox',...
    [0.565501910079342 0.78950043774457 0.0669344026879614 0.0535117045892123],...
    'String',{'TB'},...
    'LineStyle','none',...
    'FontSize',13,...
    'FitBoxToText','on');

annotation('textbox',...
    [0.188804878048781 0.236540016630722 0.14632260290644 0.0455941790038777],...
    'String','$\mbox{Kendall}-\tau:-0.465$',...
    'LineStyle','none',...
    'Interpreter','latex',...
    'FontSize',14,...
    'FitBoxToText','on');

annotation('textbox',...
    [0.186365853658537 0.464510913962977 0.14632260290644 0.0455941790038777],...
    'String',{'$\mbox{Kendall}-\tau:-0.649$'},...
    'LineStyle','none',...
    'Interpreter','latex',...
    'FontSize',14,...
    'FitBoxToText','on');
annotation('textbox',...
    [0.618073170731707 0.236540016630721 0.146322602906441 0.0455941790038776],...
    'String','$\mbox{Kendall}-\tau:0.707$',...
    'LineStyle','none',...
    'Interpreter','latex',...
    'FontSize',14,...
    'FitBoxToText','on');

annotation('textbox',...
    [0.614821138211382 0.465319321400325 0.14632260290644 0.0455941790038776],...
    'String','$\mbox{Kendall}-\tau:0.785$',...
    'LineStyle','none',...
    'Interpreter','latex',...
    'FontSize',14,...
    'FitBoxToText','on');

annotation('textbox',...
    [0.126617029530136 0.791404930179686 0.164015899980756 0.0529695013074585],...
    'String',{'rolling window'},...
    'LineStyle','none',...
    'FontSize',12);

set(gcf, 'Renderer', 'Painters');
