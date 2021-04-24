%% 一、计算函数积分

    %% 1. (不定积分)用int计算下列不定积分，并用diff验证
clc,clear;
syms x;
format short;
f1 = x.*sin(x.^2);
f2 = 1./(1+cos(x));
f3 = 1./(exp(1).^x+1);
f4 = asin(x);
f5 = sec(x).^3;

i_f1 = int(f1)
d_f1 = diff(i_f1)

i_f2 = int(f2)
d_f2 = diff(i_f2)

i_f3 = int(1./(exp(1).^x+1))
d_f3 = diff(i_f3)

i_f4 = int(asin(x))
d_f4 = diff(i_f4)

i_f5 = int(sec(x).^3)
d_f5 = diff(i_f5)

    %% 2. (定积分)用trapz,int计算下列定积分
clear,clc;
syms x;
% 1.
x1 = 10e-100 : 0.01 : 1;
y1 = sin(x1)./x1;
v1 = trapz(x1,y1)
f1 = sin(x)./x;
value1 = vpa(int(f1, x, 0, 1))
% 2.
x2 = 0:0.001:1;
y2 = x2.^x2;
v2 = trapz(x2,y2)
f2 = x.^x;
value2 = vpa(int(f2, x, 0, 1))
% 3.
x3 = 0:0.001:2.*pi;
y3 = ((exp(1)).^x3) .* sin(x3);
v3 = trapz(x3,y3)
f3 = ((exp(1)).^x) .* sin(x);
value3 = vpa(int(f3, 0, 2.*pi))
% 4.
x4 = 0:0.001:1;
y4 = (exp(1)).^(-x4);
v4 = trapz(x4,y4)
f4 = (exp(1)).^(-x);
value4 = vpa(int(f4, x, 0, 1))

    %% 3. (椭圆的周长) 用定积分的方法计算椭圆的周长
clear,clc;
syms x;
y = 4.*sqrt((36 - 4.*(x.^2)) / 9)
int_y1 = int(y)
int_y2 = vpa(int(y))

    %% 4. （二重积分）计算积分
clear,clc;
syms x y;
% 先对 y 积分，再对 x 积分
v = vpa(int(int(1+x+y, y, 1-sqrt(1-x.^2), 1+sqrt(1-x.^2)), x, -1, 1))

    %% 5. (广义积分)计算广义积分
clear,clc;
syms x y;
gv1 = vpa(int(exp(-x.*x)/(1+4.*x.*x.*x.*x), x, -inf, inf))
gv2 = vpa(int(tan(x)./sqrt(x), x, 0, 1))
gv3 = vpa(int(sin(x)./sqrt(1-x.*x), x, 0, 1))

%% 二、计算常微分方程的解
clc,clear;
syms x y;
y1 = dsolve('D2y-3Dy=2.*(exp(1)).^(2.*x).*sin(x)','x')












