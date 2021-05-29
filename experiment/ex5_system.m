% 函数文件： ex5.system.m
function [ result ] = ex5_system( m1, m2, theta )
%SYSTEM 求解线性方程组函数
a = [m1*cos(theta./180), -m1, -sin(theta./180), 0;
    m1*sin(theta./180),    0, cos(theta./180) , 0;
    0,                    m2, -sin(theta./180), 0;
    0,                     0, -cos(theta./180), 1];
b = [0, m1.*9.8, 0, m2.*9.8];
result = inv(a) * b';
end

