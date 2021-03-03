function ncp = fbncp(x)
a = x;
b = x^2;%% for example
ncp = sqrt(a^2 + b^2) - (a+b);
end