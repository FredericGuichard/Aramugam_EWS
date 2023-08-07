clc
clear all


hhh=figure%('Position',[421 168 1769 944],'PaperPosition',[-4.964 0.583 18.427 9.833],'OuterPosition',[421 168 1769 1041],'PaperPositionMode','manual','PaperSize',[8.5000 11]);

%[ha, pos]= tight_subplot(1,1,[.01 .01],[.13 .04],[.11 .04]);

subplot(1,3,[1 2]);

load kf72.dat
   x=kf72;


 p(5)=plot(x(1:10:end,5),x(1:10:end,2),'LineWidth',2,'Color',[0 0 1]);


hold on
p(6)=plot(x(1:10:end,5),x(1:10:end,4),'LineWidth',2,'Color','red');
hold on

format long


load BK.dat
x=BK;


[m1 n]=size(x);

dim=4;
va=2;

z1=x(:,1:2);

[~,idx]=unique(z1,'rows');

filen =  z1(idx,:);
m2=length(filen);




% load f21.dat 
% xy=f21;
% % p(4)=plot(xy(:,4),xy(:,6+va),'--k','Linewidth',2);
% hold on

load f22.dat 
xy=f22;
p(4)=plot(xy(3:832,4),xy(3:832,6+va),'--k','Linewidth',2);
hold on

plot(xy(833:end,4),xy(833:end,6+va),'--k','Linewidth',2)
hold on


load f23.dat 
xy=f23;
plot(xy(1:125,4),xy(1:125,6+va),'--k','Linewidth',2)
hold on

plot(xy(126:964,4),xy(126:964,6+va),'--k','Linewidth',2)
hold on

plot(xy(965:1089,4),xy(965:1089,6+va),'--k','Linewidth',2)
hold on

plot(xy(1090:end,4),xy(1090:end,6+va),'--k','Linewidth',2)
hold on

load f24.dat
xy=f24;
plot(xy(3:236,4),xy(3:236,6+va),'--k','Linewidth',2)
hold on

plot(xy(237:end,4),xy(237:end,6+va),'--k','Linewidth',2)
hold on


load f25.dat
xy=f25;
plot(xy(3:236,4),xy(3:236,6+va),'--k','Linewidth',2)
hold on

plot(xy(237:end,4),xy(237:end,6+va),'--k','Linewidth',2)
hold on


load f12.dat
xy=f12;
p(3)= plot(xy(:,4),xy(:,6+va),'-k','Linewidth',1.5);

hold on 


xy=load('f13.dat');
plot(xy(1:248,4),xy(1:248,[6+va 6+va+2]),'-k','Linewidth',1.5);

hold on 

xy=load('f14.dat');
plot(xy(1:end,4),xy(1:end,[6+va 6+va+2]),'-k','Linewidth',1.5);

hold on 







for i=1:m2
    if filen(i,2)<0
        xy=load(sprintf('f%d_%d.dat',filen(i,1),-filen(i,2)));
        if filen(i,1)==3
            p(1)=plot(xy(1:2:end,4),xy(1:2:end,6+va),'.','Color',[0.35 0.35 0.35],'Markersize',24);
            hold on
            plot(xy(1:2:end,4),xy(1:2:end,6+va+dim),'.','Color',[0.35 0.35 0.35],'Markersize',24);
            hold on
        elseif filen(i,1)==4
           p(2)= plot(xy(1:2:end,4),xy(1:2:end,6+va),'ok');
            hold on
            plot(xy(1:2:end,4),xy(1:2:end,6+va+dim),'ok')
            hold on
        end
        
    end
end





set(gca,'Fontsize',14,'LineWidth',1.6,...
    'TickDir','out','XAxislocation','bottom');
xlabel('$\mbox{Carrying capacity}~{(K)}$','interpreter','latex','Fontsize',21);
ylabel('$H_i$','interpreter','latex','Fontsize',36,'rotation',0)
axis([0.3 1.1 0 0.32])

YTick= [0:0.1:0.3];


 XTick = [0.3:0.2:1.1];
 set(gca,'xtick',XTick)
 set(gca,'ytick',YTick)
 
 

legend(p([1 2 3 4 5 6]),{'$~\mbox{stable oscillation (max-min)}$','$~\mbox{unstable oscillation (max-min)}$','$~\mbox{stable equilibrium}$','$~\mbox{unstable equilibrium}$','$~H_1~(\mu=-0.0001)$','$~H_2~(\mu=-0.0001)$'},'Fontsize',22,'Interpreter','latex','Box','off', 'Position',[0.0694113645387555 0.565317919075146 0.221569917367087 0.402742016563781],...
    'Interpreter','latex',...
    'FontSize',15);




annotation('textbox',...
    [0.787885245901639 0.526483050847458 0.0334827586206898 0.0572033898305084],...
    'String',{'TB'},...
    'LineStyle','none',...
    'Interpreter','none',...
    'FontSize',13,...
    'FitBoxToText','on');


annotation('textbox',...
    [0.268382702091575 0.39406779661017 0.0334827586206897 0.0572033898305084],...
    'String','HB2',...
    'LineStyle','none',...
    'Interpreter','none',...
    'FontSize',13,...
    'FitBoxToText','on');

annotation('textbox',...
    [0.14458394573205 0.217161016949153 0.0334827586206895 0.0572033898305084],...
    'String','HB1',...
    'LineStyle','none',...
    'Interpreter','none',...
    'FontSize',13,...
    'FitBoxToText','on');
annotation('textbox',...
    [0.430055963821362 0.318855932929505 0.0305257200049168 0.0349576263925282],...
    'String','TB',...
    'LineStyle','none',...
    'Interpreter','none',...
    'FontSize',13,...
    'FitBoxToText','on');

% annotation('textbox',...
%     [0.444188241944601 0.354872881355932 0.0436579988694177 0.0985169491525424],...
%     'LineWidth',2,...
%     'LineStyle',':',...
%     'FitBoxToText','off',...
%     'EdgeColor',[0.600000023841858 0.200000002980232 0]);



% annotation('textbox',...
%     [0.365612775579422 0.310381355932203 0.0436579988694177 0.0985169491525424],...
%     'LineWidth',1.5,...
%     'LineStyle','-.',...
%     'FitBoxToText','off',...
%     'EdgeColor',[0 0.749019622802734 0.749019622802734]);



% box off
% ax=gca;
% axes('position',ax.Position,'box','on','ytick',[],'xtick',[],'color','none','Linewidth',1.8)



%% second plot with zoomed version


subplot(1,3,3);
load kf72.dat
   x=kf72;
 plot(x(1:10:end,5),x(1:10:end,2),'LineWidth',2,'Color',[0 0 1]);


hold on
plot(x(1:10:end,5),x(1:10:end,4),'LineWidth',2,'Color','red');
hold on


format long


load BK.dat
x=BK;





[m1 n]=size(x);

dim=4;
va=2;

z1=x(:,1:2);

[~,idx]=unique(z1,'rows');

filen =  z1(idx,:);
m2=length(filen);




load f21.dat 
xy=f21;
p(4)=plot(xy(:,4),xy(:,6+va),'--k','Linewidth',2);
hold on

load f22.dat 
xy=f22;
plot(xy(3:832,4),xy(3:832,6+va),'--k','Linewidth',2)
hold on

plot(xy(833:end,4),xy(833:end,6+va),'--k','Linewidth',2)
hold on


load f23.dat 
xy=f23;
plot(xy(1:125,4),xy(1:125,6+va),'--k','Linewidth',2)
hold on

plot(xy(126:964,4),xy(126:964,6+va),'--k','Linewidth',2)
hold on

plot(xy(965:1089,4),xy(965:1089,6+va),'--k','Linewidth',2)
hold on

plot(xy(1090:end,4),xy(1090:end,6+va),'--k','Linewidth',2)
hold on

load f24.dat
xy=f24;
plot(xy(3:236,4),xy(3:236,6+va),'--k','Linewidth',2)
hold on

plot(xy(237:end,4),xy(237:end,6+va),'--k','Linewidth',2)
hold on


load f25.dat
xy=f25;
plot(xy(3:236,4),xy(3:236,6+va),'--k','Linewidth',2)
hold on

plot(xy(237:end,4),xy(237:end,6+va),'--k','Linewidth',2)
hold on


load f12.dat
xy=f12;
p(3)= plot(xy(:,4),xy(:,6+va),'-k','Linewidth',1.5);

hold on 


xy=load('f13.dat');
plot(xy(1:248,4),xy(1:248,[6+va 6+va+2]),'-k','Linewidth',1.5);

hold on 

xy=load('f14.dat');
plot(xy(1:end,4),xy(1:end,[6+va 6+va+2]),'-k','Linewidth',1.5);

hold on 







set(gca,'Fontsize',16,'LineWidth',1.6,'TickDir','out')
% xlabel('$\mbox{Carrying capacity}~(K)$','interpreter','latex','Fontsize',22)
% ylabel('$H_i$','interpreter','latex','Fontsize',40,'rotation',0)
axis([0.52 0.72 0.055 0.145])

YTick= [];


 XTick = [];
 set(gca,'xtick',XTick)
 set(gca,'ytick',YTick)
 
 
 annotation('textbox',...
    [0.269488744571669 0.197106690777577 0.135937612017478 0.224231464737794],...
    'LineWidth',1.5,...
    'FitBoxToText','off',...
    'EdgeColor',[1 0 1]);
 
 

% box off
% ax=gca;
% axes('position',ax.Position,'box','on','ytick',[],'xtick',[],'color','none','Linewidth',1.8)
