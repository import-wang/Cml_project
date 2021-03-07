function ncp = fbncp(xk_2,xk_1,xk,t1,t2)
a = F_delta_c(xk_2,xk_1,xk,t1,t2);
b = objfun_C(xk,t1);%% for example
ncp = sqrt(a^2 + b^2) - (a+b);
end

function res = F_delta_c(xk_2,xk_1,xk,t1,t2)
c_partial_t = (objfun_C(xk_1,t2) - objfun_C(xk_1,t1) / (t2-t1) );
c_partial_xx_1 = objfun_C(xk_2,t2)-2*objfun_C(xk_2,t2)+objfun_C(xk_2,t2)/(2*(xk-xk_2)*(xk-xk_1));
c_partial_xx_2 = objfun_C(xk_2,t1)-2*objfun_C(xk_2,t1)+objfun_C(xk_2,t1)/(2*(xk-xk_2)*(xk-xk_1));
res = c_partial_t - (c_partial_xx_1 + c_partial_xx_2) + 1;
end

function val= objfun_C(x,t)
val = 0.5 * (1-x)^2 - 2 * sqrt((t/pi)) * exp(-(x/(2 * sqrt(t)))^2)+ x * erfc(x/(2*sqrt(t)));
end