clc
clear all

hhh=figure('Position',[196 91 1084 523],'PaperPosition',[-3.84,7.93,28.68,13.8377],'OuterPosition',[196 91 1084 620],'PaperPositionMode','manual','PaperSize',[20.999998640000001 29.699999020000003]);



load dd3.dat
 y=dd3;
 


plot(y(1:10:end,5),y(1:10:end,1),'LineWidth',2,'Color',[0 0 1]);

hold on

plot(y(1:10:end,5),y(1:10:end,3),'LineWidth',2,'Color','red');
hold on



load Sym_m2.dat
load Sym_m2_nq.dat
x=[Sym_m2;Sym_m2_nq];

[m n]=size(x);

dim=4;
va=1;

z1=x(:,1:2);

[~,idx]=unique(z1,'rows');

filen =  z1(idx,:);
m1=length(filen);

for i=1:m1
    
    if filen(i,2)>0
        fid = fopen(sprintf( 'f%d%d.dat',filen(i,1),filen(i,2)),'w' );
    else
        fid = fopen(sprintf( 'f%d_%d.dat',filen(i,1),-filen(i,2)),'w' );
    end
    for j=1:m
        if x(j,1)==filen(i,1) && x(j,2)==filen(i,2)
            fprintf(fid,'%d \t %d \t',x(j,1),x(j,2));
            
            tmr=x(j,3:end);
            l1=length(tmr);
            for k=1:l1
                fprintf(fid,'%f \t',tmr(k));
            end
            fprintf(fid,'\n');
        end
    end
         
    fclose(fid);
    
     
end




load f21.dat
xy=f21;
p(4)=plot(xy(2:end,4),xy(2:end,6+va),'--k','Linewidth',2)

hold on


xy11=0:0.05:1;
xy22=0.1067*ones(1,length(xy11));
plot(xy11,xy22,'--k','Linewidth',2)

hold on

load f11.dat
xy=f11;
plot(xy(1:410,4),xy(1:410,[6+va 6+va+2]),'-k','Linewidth',1.5);
hold on


for i=1:m1
    if filen(i,2)<0
        xy=load(sprintf('f%d_%d.dat',filen(i,1),-filen(i,2)));
        if filen(i,1)==3
           p(1)= plot(xy(:,4),xy(:,6+va),'.','Color',[0.35 0.35 0.35],'Markersize',24);
            hold on
            plot(xy(:,4),xy(:,6+va+dim),'.','Color',[0.35 0.35 0.35],'Markersize',24);
            hold on
        elseif filen(i,1)==4
           p(2)= plot(xy(:,4),xy(:,6+va),'ok')
            hold on
            plot(xy(:,4),xy(:,6+va+dim),'ok')
            hold on
        end
        
    end
end





set(gca,'Fontsize',16,'LineWidth',1.6,...
    'TickDir','out','XAxislocation','bottom');
ylabel('$V_{i}$','interpreter','latex','Fontsize',38,'rotation',0)
xlabel('$\mbox{dispersal rate}~(D)$','interpreter','latex','Fontsize',22,'rotation',0)

axis([0 1 0 0.4])
YTick= [0:0.1:0.4];
XTick = [0:0.2:1];
 set(gca,'xtick',XTick)
 set(gca,'ytick',YTick)
 
 
 hold on
 
 x1=linspace(0,0.4,100);
 y1=0.596*ones(1,100);
 
 plot(y1,x1,'-.k','Linewidth',1)
 
 hold on
 
 x1=linspace(0,0.4,100);
 y1=0.9*ones(1,100);
 
 plot(y1,x1,'-.k','Linewidth',1)
 
 annotation('textbox',...
    [0.592719513641655 0.518973214285713 0.234255994815295 0.159598214285716],...
    'LineWidth',2,...
    'LineStyle',':',...
    'FitBoxToText','off',...
    'EdgeColor',[0.600000023841858 0.200000002980232 0]);
 

annotation('textbox',...
    [0.560153133120978 0.562533063666696 0.0466367701778497 0.0525451549168291],...
    'String',{'HB'},...
    'LineStyle','none',...
    'FontSize',13);


annotation('textbox',...
    [0.549930654569022 0.478794642857141 0.234255994815295 0.159598214285716],...
    'LineWidth',1.5,...
    'LineStyle','-.',...
    'FitBoxToText','off',...
    'EdgeColor',[0 0.749019622802734 0.749019622802734]);


% annotation('textbox',...
%     [0.566649867374003 0.534523810339828 0.0371352776054995 0.0392857134696983],...
%     'String',{'HB'},...
%     'LineStyle','none',...
%     'FontSize',14);
 
% box off
% ax=gca;
% axes('position',ax.Position,'box','on','ytick',[],'xtick',[],'color','none','Linewidth',1.8)
