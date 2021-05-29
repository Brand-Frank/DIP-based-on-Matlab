%% һ�����㺯������

    %% 1. (��������)��int�������в������֣�����diff��֤
clc,clear;
syms x;
format short;
f1 = x.*sin(x.^2);
f2 = 1./(1+cos(x));
f3 = 1./(exp(1).^x+1);
f4 = asin(x);
f5 = sec(x).^3;

% i_f��������   d_f����΢��
i_f1 = int(f1)
d_f1 = diff(i_f1)       % diff��֤

i_f2 = int(f2)
d_f2 = diff(i_f2)       % diff��֤

i_f3 = int(1./(exp(1).^x+1))
d_f3 = diff(i_f3)       % diff��֤

i_f4 = int(asin(x))
d_f4 = diff(i_f4)       % diff��֤

i_f5 = int(sec(x).^3)
d_f5 = diff(i_f5)       % diff��֤

    %% 2. (������)��trapz,int�������ж�����
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

    %% 3. (��Բ���ܳ�) �ö����ֵķ���������Բ���ܳ�
clear,clc;
syms x;
y = 4.*sqrt((36 - 4.*(x.^2)) / 9)
int_y1 = int(y)
int_y2 = vpa(int(y))

    %% 4. �����ػ��֣��������
clear,clc;
syms x y;
% �ȶ� y ���֣��ٶ� x ����
v = vpa(int(int(1+x+y, y, 1-sqrt(1-x.^2), 1+sqrt(1-x.^2)), x, -1, 1))

    %% 5. (�������)����������
clear,clc;
syms x y;
gv1 = vpa(int(exp(-x.*x)/(1+4.*x.*x.*x.*x), x, -inf, inf))
gv2 = vpa(int(tan(x)./sqrt(x), x, 0, 1))
gv3 = vpa(int(sin(x)./sqrt(1-x.*x), x, 0, 1))

%% �������㳣΢�ַ��̵Ľ�
    %% 1��������΢�ַ��̵Ľ�����
% (1)
clc,clear;
y1 = dsolve('D2y-3*Dy=2*(exp(1))^(2*x) * sin(x)','x')

% (2)
y2 = dsolve('D2y+(a^2)*y = sin(x)', 'x')

% (3)
y3 = dsolve('y*D2y-(Dy)^2 - 1 = 0', 'x')

% (4)
y4 = dsolve('y^3 + 2*(x^2-x*y^2)*Dy = 0', 'y(1)=1', 'x')

% (5)
y5 = dsolve('D2y + y = (exp(1))^x+cos(x)', 'y(0)=1,Dy(0)=1', 'x')

    %% 2. �󷽳� �Ľ��������ֵ��, �������ǵ�ͼ�񲢽��бȽϡ�
clc,clear;
Y1 = dsolve('(1+x^2)*D2y=2*x*Dy','x')

Y2 = dsolve('(1+x^2)*D2y=2*x*Dy', 'y(0)=1,Dy(0)=3', 'x')
xx = linspace(0,10,1001);
for i = 1:1001
    x = xx(i);
   yy(i) = eval(Y2);
end
plot(xx,yy);


