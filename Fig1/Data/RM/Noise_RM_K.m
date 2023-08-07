clc
clear all

hhh=figure('Position',[841 544 1418 774],'PaperPosition',[-3.135 1.469 14.771 8.062],'OuterPosition',[841 544 1418 871],'PaperPositionMode','manual','PaperSize',[8.5000 11]);

global a B be m r  
global rt


for fn1=1 
    disp(fn1);
    
    fid = fopen(sprintf('kf%i.dat',fn1),'w');  % where j is your loop variable
    
    
    % fid=fopen('k1.dat','w');
    
    a=1;
    B=0.16;
    be=0.5;
    m=0.2;
    r=1;
     
    rt=0.001;
    
    s=0.01;
    
    
    
    T = 500; dt = 0.01; N=round(T/dt);
    
    rns1 = randn(N,1);
    dW1=sqrt(dt)*rns1;
    
    rns2 = randn(N,1);
    dW2=sqrt(dt)*rns2;
    
    rns3 = randn(N,1);
    dW3=sqrt(dt)*rns3;
    
    rns4 = randn(N,1);
    dW4=sqrt(dt)*rns4;
    
    
    R =1; Dt = R*dt; L = N/R;
    
   x=[0.106667 0.07703704 0.15];
 
    
    x1=x(1);
    x2=x(2);
    x3=x(3);
     
    
    for j=1:L
        
        val=RM_K(x);
        
%         Winc1 = sum(dW1(R*(j-1)+1:R*j));
%         Winc2 = sum(dW2(R*(j-1)+1:R*j));
         
        
        
        x1=x1+Dt*val(1)+s*x1*sqrt(dt)*randn(1);
        x2=x2+Dt*val(2)+s*x2*sqrt(dt)*randn(1);
        x3=x3+Dt*val(3);

        
%         x1=x1+Dt*val(1)+sqrt(dt)*s*x1*randn(1);
%         x2=x2+Dt*val(2)+sqrt(dt)*s*x2*randn(1);
%         x3=x3+Dt*val(3)+sqrt(dt)*s*x3*randn(1);
%         x4=x4+Dt*val(4)+sqrt(dt)*s*x4*randn(1);
%         x5=x5+Dt*val(5);
        
        x=[x1 x2 x3];
        fprintf(fid,'%f\t%f\t%f\n',x1,x2,x3);
        
        
    end
    
    fclose(fid);
    
end


load kf1.dat
x=kf1;
plot(x(:,3),x(:,[1]))


hold on

va=1;
xy=load('f11.dat');
plot(xy(1:end,4),xy(1:end,6+va),'-k','Linewidth',1.5);
hold on


xy=load('f12.dat');
plot(xy(1:end,4),xy(1:end,6+va),'-k','Linewidth',1.5);
hold on

 

 
xy=load('f21.dat');
 plot(xy(2:end,4),xy(2:end,6+va),'--k','Linewidth',2);
hold on


xy=load('f22.dat');
plot(xy(3:232,4),xy(3:232,[6+va]),'--k','Linewidth',2);
hold on

plot(xy(233:10:end,4),xy(233:10:end,[6+va]),'--k','Linewidth',2);
hold on


 


xy=load('f4_4.dat');
plot(xy(:,4),xy(:,[6+va+2 6+va+2]),'ok');



xy=load('f3_4.dat');
plot(xy(1:1:end,4),xy(1:1:end,[6+va 6+va+2]),'.','Color',[0.35 0.35 0.35],'Markersize',18);
 
 

set(gca,'Fontsize',16,'LineWidth',1.6,'TickDir','out')
% xlabel('$\mbox{Carrying capacity}~(k)$','interpreter','latex','Fontsize',22,'rotation',0)
ylabel('$V$','interpreter','latex','Fontsize',32,'rotation',0)
axis([0 0.6  -0.005 0.5]);



