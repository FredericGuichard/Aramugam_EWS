clear 
clc


x=load('tb_hb.dat');

[m n]=size(x);

dim=2;
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
