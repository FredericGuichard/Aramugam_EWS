clc
clear all

hhh=figure('Position',[841 544 1418 774],'PaperPosition',[-3.135 1.469 14.771 8.062],'OuterPosition',[841 544 1418 871],'PaperPositionMode','manual','PaperSize',[8.5000 11]);

global a B be m r d
global rt


for fn1=1:100
    disp(fn1);
    
    fid = fopen(sprintf('kf%i.dat',fn1),'w');  % where j is your loop variable
    
    
    % fid=fopen('k1.dat','w');
    
    a=1;
    B=0.16;
    be=0.5;
    m=0.2;
    r=0.5;
    d=0.7;
    rt=0.0001;
    
    s=0.01;
    
    
    
    T = 6000; dt = 0.01; N=round(T/dt);
    
    rns1 = randn(N,1);
    dW1=sqrt(dt)*rns1;
    
    rns2 = randn(N,1);
    dW2=sqrt(dt)*rns2;
    
    rns3 = randn(N,1);
    dW3=sqrt(dt)*rns3;
    
    rns4 = randn(N,1);
    dW4=sqrt(dt)*rns4;
    
    
    R =1; Dt = R*dt; L = N/R;
    
   x=[0.2331011 0.104926 0.0342139 0.0904627 0.5];   
% x=[0.3938462 0.1406942 0.01 0.1094288 0.8];
%   x=[0.2751501 0.1046207 0.02212266 0.08726035 0.53];
    
    x1=x(1);
    x2=x(2);
    x3=x(3);
    x4=x(4);
    x5=x(5);
    
    for j=1:L
        
        val=FRMC_K(x);
        
        Winc1 = sum(dW1(R*(j-1)+1:R*j));
        Winc2 = sum(dW2(R*(j-1)+1:R*j));
        Winc3 = sum(dW3(R*(j-1)+1:R*j));
        Winc4 = sum(dW4(R*(j-1)+1:R*j));
        
        
        x1=x1+Dt*val(1)+s*x1*Winc1;
        x2=x2+Dt*val(2)+s*x2*Winc2;
        x3=x3+Dt*val(3)+s*x3*Winc3;
        x4=x4+Dt*val(4)+s*x4*Winc4;
        x5=x5+Dt*val(5);

        
%         x1=x1+Dt*val(1)+sqrt(dt)*s*x1*randn(1);
%         x2=x2+Dt*val(2)+sqrt(dt)*s*x2*randn(1);
%         x3=x3+Dt*val(3)+sqrt(dt)*s*x3*randn(1);
%         x4=x4+Dt*val(4)+sqrt(dt)*s*x4*randn(1);
%         x5=x5+Dt*val(5);
        
        x=[x1 x2 x3 x4 x5];
        fprintf(fid,'%f\t%f\t%f\t%f\t%f\n',x1,x2,x3,x4,x5);
        
        
    end
    
    fclose(fid);
    
end


load kf1.dat
x=kf1;
plot(x(:,5),x(:,[2 4]))





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
p(3)= plot(xy(:,4),xy(:,6+va),'-r','Linewidth',2);

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



for i=1:m2
    if filen(i,2)<0
        xy=load(sprintf('f%d_%d.dat',filen(i,1),-filen(i,2)));
        if filen(i,1)==3
            p(1)=plot(xy(1:2:end,4),xy(1:2:end,6+va),'.g','Markersize',20);
            hold on
            plot(xy(1:2:end,4),xy(1:2:end,6+va+dim),'.g','Markersize',20)
            hold on
        elseif filen(i,1)==4
            p(2)=plot(xy(1:2:end,4),xy(1:2:end,6+va),'ob');
            hold on
            plot(xy(1:2:end,4),xy(1:2:end,6+va+dim),'ob')
            hold on
        end
        
    end
end




set(gca,'Fontsize',18,'LineWidth',1.8,'TickDir','out')
xlabel('$\mbox{Carrying capacity}~(K)$','interpreter','latex','Fontsize',28)
ylabel('$H_i$','interpreter','latex','Fontsize',40,'rotation',0)
axis([0.3 1.1 0 0.32])

YTick= [0:0.1:0.3];


 XTick = [0.3:0.2:1.1];
 set(gca,'xtick',XTick)
 set(gca,'ytick',YTick)
 
 

 
 load fk1.dat
clear all
load fk1.dat
x1=fk1(1:20:170000,2);
save hb.dat x1 -ascii

movefile('hb.dat', '/home/ramesha/Desktop/EWS/Fig1/EWS/AutVar')


