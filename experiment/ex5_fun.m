% 函数文件：ex5_fun.m
function [expval, logval, sinval, cosval] = ex5_fun(inputArg)
% discription: 求给定复数的指数、对数、正弦和余弦
expval = exp(inputArg);    %复数-指数
logval = log(inputArg);    %复数-对数
sinval = sin(inputArg);    %复数-正弦
cosval = cos(inputArg);    %复数-余弦
end
