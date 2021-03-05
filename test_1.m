t = 0;
res_set_t1 = [];
x_set = 0:0.01:1;
for x=0:0.01:1
    res = objfun_C(x,t);
    res_set_t1 = [res_set_t1;res];
end
% plot(x_set,res_set_t1)
% legend('t=0.01')
hold on;

t = 0.01;
res_set_t2 = [];
for x=0:0.01:1
    res = objfun_C(x,t);
    res_set_t2 = [res_set_t2;res];
end
% plot(x_set,res_set_t2)
% legend('t=0')
hold on;

t = 0.03;
res_set_t3 = [];
for x=0:0.01:1
    res = objfun_C(x,t);
    res_set_t3 = [res_set_t3;res];
end
% plot(x_set,res_set_t3)
% legend('t=0.06')
hold on;

t = 0.05;
res_set_t4 = [];
for x=0:0.01:1
    res = objfun_C(x,t);
    res_set_t4 = [res_set_t4;res];
end
% plot(x_set,res_set_t4)
% legend('t=0.15')
hold on;

plot(x_set,res_set_t1,x_set,res_set_t2,x_set,res_set_t3,x_set,res_set_t4)
legend('0','0.01','0.03','0.05')

% t = 0.18;
% res_set_t5 = [];
% x_set = 0:0.01:1;
% for x=0:0.01:1
%     res = objfun_C(x,t);
%     res_set_t5 = [res_set_t5;res];
% end
% plot(x_set,res_set_t5)
% legend('t=0.18')