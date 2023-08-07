clc
clear all

hhh=figure('Position',[196 91 1084 523],'PaperPosition',[-3.84,7.93,28.68,13.8377],'OuterPosition',[196 91 1084 620],'PaperPositionMode','manual','PaperSize',[20.999998640000001 29.699999020000003]);

% hh=figure;

load kb_sm.dat
   x=kb_sm;
 plot(x(1:10:end,5),x(1:10:end,2),'LineWidth',2,'Color',[0 0 1]);


hold on
plot(x(1:10:end,5),x(1:10:end,4),'LineWidth',2,'Color','red');
hold on



% x1=x(1:10:136300,2);
% % x11=sum(x1,2);
% save tb.dat x1 -ascii
%  
% movefile('tb.dat', '/home/ramesha/Desktop/EWS/Fig1/EWS/AutVar')
% 
% x1=x(300001:15:469200,2);
% save hb.dat x1 -ascii
% 
% movefile('hb.dat', '/home/ramesha/Desktop/EWS/Fig1/EWS/AutVar')
% 
% 
% x1=x(300001:15:532000,2);
% save hba.dat x1 -ascii
% 
% movefile('hba.dat', '/home/ramesha/Desktop/EWS/Fig1/EWS/AutVar')




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
            p(2)=plot(xy(1:2:end,4),xy(1:2:end,6+va),'ok');
            hold on
            plot(xy(1:2:end,4),xy(1:2:end,6+va+dim),'ok')
            hold on
        end
        
    end
end





set(gca,'Fontsize',14,'LineWidth',1.6,...
    'TickDir','out','XAxislocation','top');
xlabel('$\mbox{Carrying capacity}~{(K)}$','interpreter','latex','Fontsize',21);
ylabel('$H_i$','interpreter','latex','Fontsize',36,'rotation',0)
axis([0.3 1.1 0 0.32])

YTick= [0:0.1:0.3];


 XTick = [0.3:0.2:1.1];
 set(gca,'xtick',XTick)
 set(gca,'ytick',YTick)
 
 
 
annotation('textbox',...
    [0.746299896945911 0.393009855123476 0.0579710130191521 0.0552763807613846],...
    'String',{'HB3'},...
    'LineStyle','none',...
    'Interpreter','none',...
    'FontSize',14,...
    'FitBoxToText','on');


annotation('textbox',...
    [0.261036512927204 0.420729788011449 0.057971013019152 0.0552763807613846],...
    'String','HB2',...
    'LineStyle','none',...
    'Interpreter','none',...
    'FontSize',14,...
    'FitBoxToText','on');

annotation('textbox',...
    [0.155603229478606 0.404600393509443 0.057971013019152 0.0552763807613846],...
    'String','HB1',...
    'LineStyle','none',...
    'Interpreter','none',...
    'FontSize',14,...
    'FitBoxToText','on');
annotation('textbox',...
    [0.432679267304931 0.299087634018148 0.0460358045086938 0.0552763807613846],...
    'String','TB',...
    'LineStyle','none',...
    'Interpreter','none',...
    'FontSize',14,...
    'FitBoxToText','on');



annotation('textbox',...
    [0.145213619088996 0.762606663460333 0.312323473241094 0.0803059255187872],...
    'String','$\mbox{(a)}~\mu=-0.0001~\&~ \sigma=0.01$',...
    'LineStyle','none',...
    'Interpreter','latex',...
    'FontSize',20);



% box off
% ax=gca;
% axes('position',ax.Position,'box','on','ytick',[],'xtick',[],'color','none','Linewidth',1.8)
% xlabel('Decreasing carrying capacity over time','interpreter','none','Fontsize',18,...
%     'Color','red');

