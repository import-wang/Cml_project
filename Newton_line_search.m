function lambda_k=Newton_line_search(x_k,xk_2,xk_1,xk,t1,t2)
% beta=0.1;  sigma=0.2; nabla=diffpf(x);
% [zuiyous,~,output]=cgms(x);
% s = zuiyous;
rho = 0.7;tau = 0.55;
m=0;mk=0; mmax=20;
% objfun_val = fbncp1(xk_2,xk_1,xk,t1,t2);
while (m<=mmax)
    if fbncp1(xk_2,xk_1,(xk-rho^m*x_k),t1,t2) <= (1-2*tau*rho^m)*fbncp1(xk_2,xk_1,xk,t1,t2)
        mk=m;  break;
    end
    m=m+1;
end
lambda_k=rho^mk;
% xk=xk+lambda_k*x_k;
end

function objfun_val = fbncp1(xk_2,xk_1,xk,t1,t2)
F_d_c= F_delta_c2(xk_2,xk_1,xk,t1,t2);
b = objfun_C2(xk,t1);%% for example
ncp = sqrt(F_d_c^2 + b^2) - (F_d_c+b);
objfun_val = 0.5 * norm(ncp)^2;
end

function res = F_delta_c2(xk_2,xk_1,xk,t1,t2)
c_partial_t = (objfun_C2(xk_1,t2) - objfun_C2(xk_1,t1) / 0.02 );
c_partial_xx_1 = objfun_C2(xk_2,t2)-2*objfun_C2(xk_1,t2)+objfun_C2(xk,t2)/(2*0.05^2);
c_partial_xx_2 = objfun_C2(xk_2,t1)-2*objfun_C2(xk_1,t1)+objfun_C2(xk,t1)/(2*0.05^2);
res = c_partial_t - (c_partial_xx_1 + c_partial_xx_2) + 1;
end

function val= objfun_C2(x,t)
val = 0.5 * (1-x)^2 - 2 * sqrt((t/pi)) * exp(-(x/(2 * sqrt(t)))^2)+ x * erfc(x/(2*sqrt(t)));
end
