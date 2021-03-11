function x_k = grad_step(xk_2,xk_1,xk,t1,t2)
[~,~,ncp] = fbncp(xk_2,xk_1,xk,t1,t2);
part_ncp = partial_ncp(xk_2,xk_1,xk,t1,t2);
x_k =  - ncp*part_ncp;
end
    