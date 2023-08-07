clc
clear all

% randn('state',100);


hhh=figure('Position',[426 266 1632 837],'PaperPosition',[-4.25 1.141 17 8.719],'OuterPosition',[426 266 1632 934],'PaperPositionMode','manual','PaperSize',[8.5000 11]);


load k1.dat
y=k1;
 plot(y(1:10:end,5),y(1:10:end,2),'LineWidth',1.5,'Color',[12/256 123/256 178/256]);


hold on
plot(y(1:10:end,5),y(1:10:end,4),'LineWidth',1.5,'Color',[127/256 14/256 65/256]);


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

% for i=1:m2
%     
%     if filen(i,2)>0
%         fid = fopen(sprintf( 'f%d%d.dat',filen(i,1),filen(i,2)),'w' );
%     else
%         fid = fopen(sprintf( 'f%d_%d.dat',filen(i,1),-filen(i,2)),'w' );
%     end
%     for j=1:m1
%         if x(j,1)==filen(i,1) && x(j,2)==filen(i,2)
%             fprintf(fid,'%d \t %d \t',x(j,1),x(j,2));
%             
%             tmr=x(j,3:end);
%             l1=length(tmr);
%             for k=1:l1
%                 fprintf(fid,'%f \t',tmr(k));
%             end
%             fprintf(fid,'\n');
%         end
%     end
%          
%     fclose(fid);
%     
%      
% end


load f21.dat 
xy=f21;
plot(xy(:,4),xy(:,6+va),'--k','Linewidth',2)
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



for i=1:m2
    if filen(i,2)>0
        xy=load(sprintf('f%d%d.dat',filen(i,1),filen(i,2)));
        if filen(i,1)==1
            plot(xy(:,4),xy(:,6+va),'.r','Linewidth',4)
            hold on
        end
    end
end


% for i=1:m2
%     if filen(i,2)>0
%         xy=load(sprintf('f%d%d.dat',filen(i,1),filen(i,2)));
%         if filen(i,1)==2
%             plot(xy(:,4),xy(:,6+va),'--k','Linewidth',4)
%             hold on
%         end
%     end
% end


for i=1:m2
    if filen(i,2)<0
        xy=load(sprintf('f%d_%d.dat',filen(i,1),-filen(i,2)));
        if filen(i,1)==3
            plot(xy(1:2:end,4),xy(1:2:end,6+va),'.g','Markersize',18)
            hold on
            plot(xy(1:2:end,4),xy(1:2:end,6+va+dim),'.g','Markersize',18)
            hold on
        elseif filen(i,1)==4
            plot(xy(1:2:end,4),xy(1:2:end,6+va),'ob')
            hold on
            plot(xy(1:2:end,4),xy(1:2:end,6+va+dim),'ob')
            hold on
        end
        
    end
end


set(gca,'Fontsize',18,'LineWidth',1.8,'TickDir','out')
xlabel('$\mbox{Carrying capacity}~(K)$','interpreter','latex','Fontsize',28)
ylabel('$H_i$','interpreter','latex','Fontsize',36,'rotation',0)
axis([0.33 1.2 0 0.3])

YTick= [0:0.1:0.3];


 XTick = [0.4:0.2:1.2];
 set(gca,'xtick',XTick)
 set(gca,'ytick',YTick)
 
 
 annotation('textbox',...
    [0.39357735677891 0.36843557987711 0.0402461726328548 0.103487956562556],...
    'LineWidth',2,...
    'LineStyle',':',...
    'FitBoxToText','off',...
    'EdgeColor',[0.600000023841858 0.200000002980232 0]);
 
annotation('textbox',...
    [0.332302846974988 0.321840597798256 0.0402461726328548 0.103487956562556],...
    'LineWidth',1.5,...
    'LineStyle','-.',...
    'FitBoxToText','off',...
    'EdgeColor',[0 0.749019622802734 0.749019622802734]);


annotation('textbox',...
    [0.38895378894263 0.281238266731703 0.0371352776054995 0.0392857134696984],...
    'String','TB',...
    'LineStyle','none',...
    'FontSize',14,...
    'FitBoxToText','on');




 



