function dx = RM_K(x)

global a B be m r  rt

dxx1=(r*x(1)*(1-x(1)./x(3))-a*x(1)*x(2)/(x(1)+B));
dyy1=be*a*x(1)*x(2)./(x(1)+B)-m*x(2);
dzz1=rt;
dx=[dxx1;dyy1;dzz1];
