figure(1)
subplot(1,2,1)
t = 0;
res_set_t1 = [];
x_set = 0:0.01:1;
for x=0:0.01:1
    res = objfun_C(x,t);
    res_set_t1 = [res_set_t1;res];
end

t = 0.01;
res_set_t2 = [];
for x=0:0.01:1
    res = objfun_C(x,t);
    res_set_t2 = [res_set_t2;res];
end

t = 0.03;
res_set_t3 = [];
for x=0:0.01:1
    res = objfun_C(x,t);
    res_set_t3 = [res_set_t3;res];
end

t = 0.05;
res_set_t4 = [];
for x=0:0.01:1
    res = objfun_C(x,t);
    res_set_t4 = [res_set_t4;res];
end

plot(x_set,res_set_t1,x_set,res_set_t2,x_set,res_set_t3,x_set,res_set_t4)
legend('0','0.01','0.03','0.05')

subplot(1,2,2)

t = 0.06;
res_set_t5 = [];
for x=0:0.01:1
    res = objfun_C(x,t);
    res_set_t5 = [res_set_t5;res];
end

t = 0.1;
res_set_t6 = [];
for x=0:0.01:1
    res = objfun_C(x,t);
    res_set_t6 = [res_set_t6;res];
end

t = 0.15;
res_set_t7 = [];
for x=0:0.01:1
    res = objfun_C(x,t);
    res_set_t7 = [res_set_t7;res];
end

t = 0.18;
res_set_t8 = [];
for x=0:0.01:1
    res = objfun_C(x,t);
    res_set_t8 = [res_set_t8;res];
end

plot(x_set,res_set_t1,x_set,res_set_t5,x_set,res_set_t6,x_set,res_set_t7,x_set,res_set_t8)
legend('0','0.06','0.1','0.15','0.18')