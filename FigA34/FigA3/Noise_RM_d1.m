clc
clear all

%  randn('state',100);

load ics_d1.dat
ics=ics_d1(8:10:end,1:4);


hhh=figure('Position',[841 544 1418 774],'PaperPosition',[-3.135 1.469 14.771 8.062],'OuterPosition',[841 544 1418 871],'PaperPositionMode','manual','PaperSize',[8.5000 11]);

global a B be m r k
global rt


for fn1=1:23
    disp(fn1);
    
    fid = fopen(sprintf('hd%i.dat',fn1),'w');  % where j is your loop variable
    
    
    % fid=fopen('k1.dat','w');
    
    a=1;
    B=0.16;
    be=0.5;
    m=0.2;
    r=0.5;
    k=0.5;
    rt=-0.0001;
    
    s=0.001;
    
    
    
    T = 10000; dt = 0.01; N=round(T/dt);
    
    rns1 = randn(N,1);
    dW1=sqrt(dt)*rns1;
    
    rns2 = randn(N,1);
    dW2=sqrt(dt)*rns2;
    
    rns3 = randn(N,1);
    dW3=sqrt(dt)*rns3;
    
    rns4 = randn(N,1);
    dW4=sqrt(dt)*rns4;
    
    
    R =1; Dt = R*dt; L = N/R;
    
        x =[ics(fn1,:) 1];

%     x=[0.2651352 0.09984929 0.02784022   0.08869059 1];
    
    x1=x(1);
    x2=x(2);
    x3=x(3);
    x4=x(4);
    x5=x(5);
    
    for j=1:L
        
        val=FRMC_d(x);
        
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


load dd1.dat
x=dd1;
plot(x(:,5),x(:,[1 3]))


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

for i=1:m1
    if filen(i,2)>0
        xy=load(sprintf('f%d%d.dat',filen(i,1),filen(i,2)));
        if filen(i,1)==1
            plot(xy(:,4),xy(:,6+va),'.r','Linewidth',4)
            hold on
        end
    end
end


load f11.dat
xy=f11;
p(3)= plot(xy(1:100,4),xy(1:100,6+va),'-r','Linewidth',2);
hold on

for i=1:m1
    if filen(i,2)<0
        xy=load(sprintf('f%d_%d.dat',filen(i,1),-filen(i,2)));
        if filen(i,1)==3
            p(1)= plot(xy(:,4),xy(:,6+va),'.g','Markersize',18)
            hold on
            plot(xy(:,4),xy(:,6+va+dim),'.g','Markersize',18)
            hold on
        elseif filen(i,1)==4
            p(2)= plot(xy(:,4),xy(:,6+va),'ob')
            hold on
            plot(xy(:,4),xy(:,6+va+dim),'ob')
            hold on
        end
        
    end
end





set(gca,'Fontsize',18,'LineWidth',1.8,'TickDir','out')
ylabel('$V_{i}$','interpreter','latex','Fontsize',36,'rotation',0)
axis([0 1 0 0.4])
YTick= [0:0.1:0.4];
XTick = [0:0.2:1];
set(gca,'xtick',XTick)
set(gca,'ytick',YTick)


hold on

x1=linspace(0,0.4,100);
y1=0.596*ones(1,100);

plot(y1,x1,'-.k','Linewidth',1)



