function [val,fval,fbncp]= objfun_C(x,t)
val = 0.5 * (1-x)^2 - 2 * sqrt(t/pi) * exp(-(x/2 * sqrt(t))^2) + x * erfc(x/(2*sqrt(t)));
cpc = (x^2*exp(-x^2/(4*t)))/(2*t^(3/2)*pi^(1/2)) - exp(-(t*x^2)/4)/(t^(1/2)*pi^(1/2)) + (t^(1/2)*x^2*exp(-(t*x^2)/4))/(2*pi^(1/2));
cpx2 = (t^(3/2)*exp(-(t*x^2)/4))/pi^(1/2) - (2*exp(-x^2/(4*t)))/(t^(1/2)*pi^(1/2)) + (x^2*exp(-x^2/(4*t)))/(2*t^(3/2)*pi^(1/2)) - (t^(5/2)*x^2*exp(-(t*x^2)/4))/(2*pi^(1/2)) + 1;
fval = cpc + cpx2 + 1;
fbncp = sqrt(fval^2 + val^2) - (fval + val);