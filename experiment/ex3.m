%% 1. 设有分块矩阵 ，其中E,R,O,S分别为单位矩阵、随机矩阵、零矩阵和对角矩阵，试通过数值计算验证
E = eye(3,3)
R = randn(3,2)
O = zeros(2,3)
S = diag([1,2])

A = [E,R; O,S]

B = [E, R+R*S; O,S.*S]

if(A*A == B)
    disp('YES!')
else
    disp('NO!')
end

%% 2. 产生5阶希尔伯特矩阵H和5阶帕斯卡矩阵P,求其行列式的值Hh和Hp以及他们的条件
%% 数Th和Tp，判断哪个矩阵性能更好，为什么？
clc,clear;
format short
H = hilb(5)
P = pascal(5)
Hh = det(H)
Hp = det(P)
Th = cond(H)
Tp = cond(P)

%% 3.建立一个5x5矩阵，求它的行列式的值、迹、秩和范数
clc,clear;
A = magic(5)
valueA = det(A)
traceA = trace(A)
rankA = rank(A)
normA = norm(A)

%% 4. 已知 ，求特征值和特征向量，并分析其数学意义
clear,clc;
A = [-29,6,18; 20,5,12; -8,8,5]
[X,D] = eig(A)

%% 5. 下面是一个线性方程组
% （1）	求方程的解
% x = [];
a = [1/2, 1/3, 1/4; 1/3, 1/4, 1/5; 1/4, 1/5, 1/6]
c = [0.95, 0.67, 0.52]
x = inv(a)*c'

% （2）将方程右边向量第三个元素0.52改为0.53，并比较解的变化
c(1,3)= 0.53
x = inv(a)*c'

% （3）计算系数矩阵A的条件数并分析结论
condA = cond(a)

%% 6．建立A矩阵，试比较sqrtm(A)和sqrt(A)，并分析他们的区别。
clc,clear;
A = magic(5)
B = sqrtm(A)
C = sqrt(A)
