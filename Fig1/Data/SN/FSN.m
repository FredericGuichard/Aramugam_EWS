function dx = FSN(x)

global r K h mu


dx1=r*x(1)*(1-x(1)/K)-x(2)*x(1)*x(1)/(x(1)*x(1)+h*h);
dx2=mu;
dx=[dx1; dx2];
