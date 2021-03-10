function diff_equation
t = [0,0.02,0.04,0.06,0.08,0.1,0.12,0.14,0.16,0.18,0.19,0.195];
xk_2 = 1;
xk_1 = 1;
xk = 1;
for i =1:length(t)-1
    [~,~,ncp] = fbncp(xk_2,xk_1,xk,t(i+1),t(i));
    part_ncp = partial_ncp(xk_2,xk_1,xk,t(i+1),t(i));
    x_k = - ncp / part_ncp;
    xk_2 = xk_1;
    xk_1 = xk;
    if x_k < 0
        x_k = abs(x_k);
    end
    xk = xk - 0.618*x_k
end
    