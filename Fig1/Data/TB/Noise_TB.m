clc
clear all

global r K rt

   
    fid = fopen('kt.dat','w'); 
    
        
    r=1;
    K=10;
    s=0.03;
    rt=0.001;
    
    
    T = 1500; dt = 0.1; N=round(T/dt);
    
    rns1 = randn(N,1);
    dW1=sqrt(dt)*rns1;
    
   
    
    
    R =1; Dt = R*dt; L = N/R;
    
      

  x=[10 0];
    
    x1=x(1);
    x2=x(2);

       
    for j=1:L
        
        val=FT(x);
        
        %Winc1 = sum(dW1(R*(j-1)+1:R*j));
                
        
        x1=x1+Dt*val(1)+s*x1*sqrt(dt)*randn(1);
        x2=x2+Dt*val(2);
 
        
        x=[x1 x2];
        fprintf(fid,'%f\t%f\n',x1,x2);
        
        
    end
    
    fclose(fid);
    



load kt.dat
x=kt;
plot(x(:,2),x(:,1),'Color','r')





hold on




xy=load('tb.dat');
  
plot(xy(2:1009,4),xy(2:1009,7),'-k','Linewidth',2)
hold on
plot(xy(1010:1512,4),xy(1010:1512,7),'--k','Linewidth',2)
hold on
plot(xy(1515:1567,4),xy(1515:1567,7),'-k','Linewidth',2)
hold on
% 
plot(xy(1570:end-1,4),xy(1570:end-1,7),'--k','Linewidth',2)


set(gca,'Fontsize',18,'LineWidth',1.8,'TickDir','out')
xlabel('$\mbox{parameter}~(a)$','interpreter','latex','Fontsize',28)
ylabel('$V$','interpreter','latex','Fontsize',40,'rotation',0)
axis([0 1.5 -1 11])

 