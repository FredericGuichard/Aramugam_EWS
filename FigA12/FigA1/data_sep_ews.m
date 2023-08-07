clc
clear all

iv=350001;
ve=551400;
v2=1000000-ve;
vb=403100;
v1=v2-vb+iv;


load dd10.dat
x=dd10;
x1=x(iv:5:vb,3);
save hb.dat x1 -ascii

x2=x(v1:5:v2,3);
save hba.dat x2 -ascii



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