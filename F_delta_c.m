function res = F_delta_c(xk_l,xk_p,xk_n,t1,t2)
c_partial_t = (objfun_C(xk_p,t2) - objfun_C(xk_p,t1) / (t2-t1) );
c_partial_xx_1 = objfun_C(xk_l,t2)-2*objfun_C(xk_l,t2)+objfun_C(xk_l,t2)/(2*(xk_n-xk_l)*(xk_n-xk_p));
c_partial_xx_2 = objfun_C(xk_l,t1)-2*objfun_C(xk_l,t1)+objfun_C(xk_l,t1)/(2*(xk_n-xk_l)*(xk_n-xk_p));
res = c_partial_t - (c_partial_xx_1 + c_partial_xx_2) + 1;