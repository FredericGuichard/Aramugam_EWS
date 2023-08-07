function dx = FT(x)

global r K rt


dx1=r*x(1)*(1-x(1)/K)-x(2)*x(1);
dx2=rt;
dx=[dx1; dx2];
