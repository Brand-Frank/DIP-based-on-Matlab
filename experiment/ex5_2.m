%% 一个物理系统可用下列方程组来表示从键盘输入m1、m2和theta的值，求a1、a2、N1、N2的值。其中g取9.8,输入 时以角度为单位。
% 主函数   ex5_2.m
clc,clear;
x = [];
for i = 1:3
    x(i) = input('\ninput: ');
end
m1 = x(1);
m2 = x(2);
theta = x(3);

output = ex5_system(m1, m2, theta)
