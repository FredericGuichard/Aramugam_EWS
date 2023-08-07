clc
clear all


hhh=figure%('Position',[265 31 760 596],'PaperPosition',[0.4458 6.9654 20.1083 15.7692],'OuterPosition',[265 31 760 693],'PaperPositionMode','manual','PaperSize',[21.0000 29.7000]);

[ha, pos]= tight_subplot(1,2,[.02 .07],[.12 .09],[.12 .03]);

axes(ha(1));

 
 x01=load('tb_sv.dat');
 y01=load('tp_sv.dat');


 x=x01(:,1:2);
 y=y01(:,1:2);

 

% x=load("ktb_5k.dat");
% y=load("ktba_5k.dat");

 

x1=ones(100,1);
y1=2*ones(100,1);

z1=[x(:,1) ;y(:,1)];
z2=[x1;y1];

% violinplot(z1,z2,'ViolinAlpha',1,'EdgeColor',[0 0 0]);
boxplot(z1,z2)


ylim([-1  1])
xlim([0.5 2.5])

box on

set(gca,'Fontsize',14,'LineWidth',1.4,'TickDir','out')
% xlabel('$\mbox{Time series upto bifurcation point}$','interpreter','latex','Fontsize',20,'rotation',0)
ylabel('$\mbox{Kendall}-\tau$','interpreter','latex','Fontsize',22,'rotation',90)
yticks([-1 -0.5  0 0.5 1]);
yticklabels({'-1', '-0.5',  '0', '0.5', '1'});

xticks([1 2]);
xticklabels([]);
 
% box off
% ax=gca;
% axes('position',ax.Position,'box','on','ytick',[],'xtick',[],'color','none','Linewidth',1.4)




%%


axes(ha(2));

 
 

z1=[x(:,2) ;y(:,2)];
 

% violinplot(z1,z2,'ViolinAlpha',1,'EdgeColor',[0 0 0]);
boxplot(z1,z2)


ylim([-1  1])
xlim([0.5 2.5])

box on

set(gca,'Fontsize',14,'LineWidth',1.4,'TickDir','out')
% xlabel('$\mbox{Time series upto bifurcation point}$','interpreter','latex','Fontsize',20,'rotation',0)
% ylabel('$\mbox{Kendall}-\tau$','interpreter','latex','Fontsize',26,'rotation',90)
yticks([-1 -0.5  0 0.5 1]);
yticklabels({'-1', '-0.5',  '0', '0.5', '1'});

 


xticks([1 2]);
xticklabels([]);

annotation('textbox',...
    [0.0440835407918852 0.0207243717225768 0.303649626422103 0.0965517217742986],...
    'String',{'time series','(upto critical point)'},...
    'LineStyle','none',...
    'HorizontalAlignment','center',...
    'FontSize',12);


annotation('textbox',...
    [0.252842664879474 0.0172760958605079 0.303649626422103 0.0965517217742986],...
    'String',{'time series','(tracking  unstable state)'},...
    'LineStyle','none',...
    'HorizontalAlignment','center',...
    'FontSize',12);



annotation('textbox',...
    [0.736615225434185 0.0383864069325403 0.271971488685619 0.0770465471388632],...
    'String',{'time series','(tracking  unstable state)'},...
    'LineStyle','none',...
    'HorizontalAlignment','center',...
    'FontSize',12);


annotation('textbox',...
    [0.568829972213385 0.037019273484818 0.213776716073166 0.0770465471388632],...
    'String',{'time series','(upto critical point)'},...
    'LineStyle','none',...
    'HorizontalAlignment','center',...
    'FontSize',12);


annotation('textbox',...
    [0.18523645320197 0.895216402879879 0.258620682241294 0.0888382668239924],...
    'String',{'(b) Autocorrelation'},...
    'LineStyle','none',...
    'FontSize',18);


annotation('textbox',...
    [0.667009852216745 0.892938498551861 0.177832507309068 0.0888382668239924],...
    'String',{'(c) Variance'},...
    'LineStyle','none',...
    'FontSize',18);


% box off
% ax=gca;
% axes('position',ax.Position,'box','on','ytick',[],'xtick',[],'color','none','Linewidth',1.4)



