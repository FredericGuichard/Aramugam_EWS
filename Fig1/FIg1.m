clc
clear all
close all



hhh=figure('Position',[116 39 1068 609],'PaperPosition',[-1.3125 2.3281 11.1250 6.3438],'OuterPosition',[116 39 1068 706],'PaperPositionMode','manual','PaperSize',[8.5000 11]);


[ha, pos]= tight_subplot(2,2,[.1 .07],[.11 .02],[.08 .02]);


 %% Figure 1
axes(ha(1));

 x=load('ks.dat');
 plot(x(:,2),x(:,1),'r','Linewidth',1.2)
hold on 
 



xy=load('sn.dat');
 
 
plot(xy(2:602,4),xy(2:602,7),'-k','Linewidth',1.4)
hold on
plot(xy(980:end,4),xy(980:end,7),'-k','Linewidth',1.4)
hold on

plot(xy(603:979,4),xy(603:979,7),'--k','Linewidth',1.2)

plot(x(26500:end,2),x(26500:end,1),'r','Linewidth',1.2)

set(gca,'Fontsize',12,'LineWidth',1.2,'TickDir','out')
xlabel('parameter','interpreter','tex','Fontsize',14)
ylabel('system state','interpreter','tex','Fontsize',14)
axis([0 3 0 12])

YTick= [0:3:12];


 XTick = [0:0.5:3];
 set(gca,'xtick',XTick)
 set(gca,'ytick',YTick)
 
annotation('textbox',...
    [0.0964419475655431 0.934960592062797 0.380149801683783 0.0476190466892543],...
    'String',{'(a) Catastrophic transition from fold bifurcation'},...
    'LineStyle','none',...
    'FontSize',12);

 
box off
ax=gca;
axes('position',ax.Position,'box','on','ytick',[],...
'xtick',[],'color','none','Linewidth',1.2);



%%
axes(ha(2));

 x=load('kt.dat');
 plot(x(:,2),x(:,1),'r','Linewidth',1.2)
hold on 
 



xy=load('tb.dat');
 
 
xy=load('tb.dat');
  
plot(xy(2:1009,4),xy(2:1009,7),'-k','Linewidth',1.4)
hold on
plot(xy(1010:1512,4),xy(1010:1512,7),'--k','Linewidth',1.2)
hold on
plot(xy(1515:1567,4),xy(1515:1567,7),'-k','Linewidth',1.4)
hold on
% 
plot(xy(1570:end-1,4),xy(1570:end-1,7),'--k','Linewidth',1.2)


plot(x(10000:end,2),x(10000:end,1),'r','Linewidth',1.2)



set(gca,'Fontsize',12,'LineWidth',1.2,'TickDir','out')
xlabel('parameter','interpreter','tex','Fontsize',14)
ylabel('system state','interpreter','tex','Fontsize',14)
axis([0 1.5 -1 12])

YTick= [0:3:12];


 XTick = [0:0.3:1.5];
 set(gca,'xtick',XTick)
 set(gca,'ytick',YTick)
 
annotation('textbox',...
    [0.623907076821405 0.901477834371902 0.289325834353095 0.0788177321305612],...
    'String',{'(b) Noncatastrophic transition from',' transcritical bifurcation'},...
    'LineStyle','none',...
    'HorizontalAlignment','center',...
    'FontSize',12);

 
box off
ax=gca;
axes('position',ax.Position,'box','on','ytick',[],...
'xtick',[],'color','none','Linewidth',1.2);

 


 %% 
 axes(ha(3));


  x=load('kf3.dat');
 plot(x(:,3),x(:,1),'r','Linewidth',1.2)
hold on 

 va=1;
xy=load('f11.dat');
plot(xy(1:end,4),xy(1:end,6+va),'-k','Linewidth',1.4);
hold on


xy=load('f12.dat');
plot(xy(1:end,4),xy(1:end,6+va),'-k','Linewidth',1.4);
hold on

 

 
xy=load('f21.dat');
 plot(xy(2:end,4),xy(2:end,6+va),'--k','Linewidth',1.2);
hold on


xy=load('f22.dat');
plot(xy(3:232,4),xy(3:232,[6+va]),'--k','Linewidth',1.2);
hold on

plot(xy(233:10:end,4),xy(233:10:end,[6+va]),'--k','Linewidth',1.2);
hold on

 
set(gca,'Fontsize',12,'LineWidth',1.2,'TickDir','out')
xlabel('parameter','interpreter','tex','Fontsize',14)
ylabel('system state','interpreter','tex','Fontsize',14)
axis([0 0.3 0 0.3])

YTick= [0:.1:0.3];


 XTick = [0:0.05:0.3];
 set(gca,'xtick',XTick)
 set(gca,'ytick',YTick)
 
annotation('textbox',...
    [0.0798995861847015 0.412151069183067 0.342385058010055 0.078817732130561],...
    'String',{'(c) Catastrophic transition from delayed',' transcritical bifurcation'},...
    'LineStyle','none',...
    'HorizontalAlignment','center',...
    'FontSize',12,...
    'FitBoxToText','off');

 
box off
ax=gca;
axes('position',ax.Position,'box','on','ytick',[],...
'xtick',[],'color','none','Linewidth',1.2);

 


 
 
 %%  
  
 axes(ha(4));
 
  x=load('kf1.dat');
 plot(x(:,3),x(:,1),'r','Linewidth',1.2)
hold on 
 

 va=1;
xy=load('f11.dat');
plot(xy(1:end,4),xy(1:end,6+va),'-k','Linewidth',1.4);
hold on


xy=load('f12.dat');
plot(xy(1:end,4),xy(1:end,6+va),'-k','Linewidth',1.4);
hold on

 

 
xy=load('f21.dat');
 plot(xy(2:end,4),xy(2:end,6+va),'--k','Linewidth',1.2);
hold on


xy=load('f22.dat');
plot(xy(3:232,4),xy(3:232,[6+va]),'--k','Linewidth',1.2);
hold on

plot(xy(233:10:end,4),xy(233:10:end,[6+va]),'--k','Linewidth',1.2);
hold on


 


xy=load('f4_4.dat');
plot(xy(:,4),xy(:,[6+va+2 6+va+2]),'ok');



xy=load('f3_4.dat');
plot(xy(1:2:end,4),xy(1:2:end,[6+va 6+va+2]),'.','Color',[0.35 0.35 0.35],'Markersize',18);
 
 hold on

 t0=linspace(0,0.1066,30);
 x0=0.3733*ones(1,30);

 plot(x0,t0,'-b')

 set(gca,'Fontsize',12,'LineWidth',1.2,'TickDir','out')
xlabel('parameter','interpreter','tex','Fontsize',14)
ylabel('system state','interpreter','tex','Fontsize',14)
axis([0 0.6 0 0.5])

YTick= [0:.1:0.6];


 XTick = [0:0.1:0.6];
 set(gca,'xtick',XTick)
 set(gca,'ytick',YTick)
 
annotation('textbox',...
    [0.565854642364478 0.412151069183067 0.289325834353095 0.0788177321305608],...
    'String',{'(d) Catastrophic transition from','delayed Hopf bifurcation'},...
    'LineStyle','none',...
    'HorizontalAlignment','center',...
    'FontSize',12,...
    'FitBoxToText','off');


 
box off
ax=gca;
axes('position',ax.Position,'box','on','ytick',[],...
'xtick',[],'color','none','Linewidth',1.2);
 
 
 set(gcf, 'Renderer', 'Painters');
  
