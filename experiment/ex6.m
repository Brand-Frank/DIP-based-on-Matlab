%% 1、硅谷公司员工的工资计算方法如下：
% （1）工作时数超过120小时者，超过部分加发15%；
% （2）工作时数低于60小时者，扣发700元；
% （3）其余按每小时84元计发。
% 编程按输入的工号和该号员工的工作时数，计算应发工资。
clear,clc;
hours = input('Please input work hours: ');
if hours < 60
    allowances = 84*hours-700
elseif hours < 120
    allowances = 84*hours
else
    allowances = hours*84*1.15
end

%% 2、用switch…case语句得出各月份的季节（如3，4，5月输出为春季）。
clear,clc;
month = input('Please input month: ');
switch month
    case {3,4,5}
        disp('Spring');
    case {6,7,8}
        disp('Summer');
    case {9,10,11}
        disp('Fall')
    case {12,1,2}
        disp('Winter')
end

%% 3、计算1+3+5+…+99的值，当和大于1000的时候终止计算，要求显示终止时候的
%% 求和结果以及最后一位计算的整数值。
clear,clc;
sumi = 0;
for i = 1:99
    sumi = sumi + i;
    if sumi > 1000
        sumi = sumi - i;
        val = i;
        break
    end
end
sumi
val


%% 4、分别采用循环语句和sum语句实现的计算。
% 1. sum()函数
clc,clear;
format long
x = 0:63;
K = sum(2.^x)

% 2. 循环语句
clc,clear;
format long;
K = 0;
for i = 0:63
    K = K + 2.^i;
end
K
