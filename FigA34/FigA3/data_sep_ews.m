clc
clear all



iv=50001;
ve=538100;
v2=1000000-ve;
vb=403100;
v1=v2-vb+iv;


var=3;
load dd3.dat
x=dd3;
x1=x(iv:25:vb,var);
save hb.dat x1 -ascii


x2=x(v1:25:v2,var);
save hba.dat x2 -ascii


x3=x(iv:30:v2,var);
save hbb.dat x2 -ascii







% load d20.dat
% x=d20;
% x1=x(100001:30:403100,[1]);
% save hb.dat x1 -ascii
% 
% x2=x(139100:30:442200,[1]);
% save hba.dat x2 -ascii


% load d7.dat
% x=d7;
% x1=x(100001:30:403100,[3]);
% save hb.dat x1 -ascii
% 
% x1=x(139100:30:442200,[3]);
% save hba.dat x1 -ascii