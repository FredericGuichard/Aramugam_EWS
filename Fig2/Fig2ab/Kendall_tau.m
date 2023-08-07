clc
clear all

sp1=importdata('sp.dat');
sp=sp1.data;

t=sp(:,1);
x=sp(:,4);



corr(t,x,'Tail','both','Type','Kendall')