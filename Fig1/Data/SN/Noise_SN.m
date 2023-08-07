clc
clear all

global r K h mu
   
 fid = fopen('k3.dat','w'); 
    
        
   r=1;h=1;K=10;mu=0.001;s=0.03;
    
    
    T = 3000/1; dt = 0.1; N=round(T/dt);
    
    rns1 = randn(N,1);
    dW1=sqrt(dt)*rns1;
    
   
    
    
    R =1; Dt = R*dt; L = N/R;
    
      

  x=[10 0];
%     x=[0.36 3];
    x1=x(1);
    x2=x(2);

       
    for j=1:L
        
        val=FSN(x);
        
        %Winc1 = sum(dW1(R*(j-1)+1:R*j));
                
        
        x1=x1+Dt*val(1)+s*x1*sqrt(dt)*randn(1);
        x2=x2+Dt*val(2);
 
        
        x=[x1 x2];
        fprintf(fid,'%f\t%f\n',x1,x2);
        
        
    end
    
    fclose(fid);
    

load k3.dat
x=k3;
plot(x(:,2),x(:,1),'r','Linewidth',1.2)

hold on 






format long


load sn.dat
xy=sn;

% 
plot(xy(2:602,4),xy(2:602,7),'-k','Linewidth',2)
hold on
plot(xy(980:end,4),xy(980:end,7),'-k','Linewidth',2)
hold on

plot(xy(603:979,4),xy(603:979,7),'--k','Linewidth',2)


% set(gca,'Fontsize',18,'LineWidth',1.8,'TickDir','out')
% xlabel('Increasing harvest rate over time','interpreter','tex','Fontsize',18)
% ylabel('Biomass','interpreter','tex','Fontsize',24)
% axis([0 3 0 12])
% 
% YTick= [0:3:12];
% 
% 
%  XTick = [];
%  set(gca,'xtick',XTick)
%  set(gca,'ytick',YTick)
% 
% load k3.dat
% % x1=k2(1:3:25200,1);
% x1=k3(1:3:25200/3,1);
% 
% save sn3.dat x1 -ascii
% 
% 
% set(gcf, 'Renderer', 'Painters');