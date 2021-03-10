t1 = pi/16;
t0 = 4/(25*pi);
tt = t0:0.01:0.205;
y_set = [];
for t=t0:0.01:0.205
    y = real(1-exp(-2*sqrt((t1-t)/(t-t0))));
    y_set = [y_set,y];
end
plot(y_set,tt)

t1 = pi/16;
t0 = 4/(25*pi);
t = 0.195;
y = 1-exp(-2*sqrt((t1-t)/(t-t0)));
disp(y)