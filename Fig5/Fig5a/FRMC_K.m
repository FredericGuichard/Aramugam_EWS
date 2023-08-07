function dx = FRMC_K(x)

global a B be m r d rt

dxx1=(r*x(1)*(1-x(1)./x(5))-a*x(1)*x(2)/(x(1)+B));
dyy1=be*a*x(1)*x(2)/(x(1)+B)-m*x(2)+d*(x(4)-x(2));
dxx2=(r*x(3)*(1-x(3)./x(5))-a*x(3)*x(4)/(x(3)+B));
dyy2=be*a*x(3)*x(4)/(x(3)+B)-m*x(4)+d*(x(2)-x(4));
dzz1=rt;
dx=[dxx1;dyy1;dxx2;dyy2;dzz1];
