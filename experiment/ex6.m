%% 1����ȹ�˾Ա���Ĺ��ʼ��㷽�����£�
% ��1������ʱ������120Сʱ�ߣ��������ּӷ�15%��
% ��2������ʱ������60Сʱ�ߣ��۷�700Ԫ��
% ��3�����ఴÿСʱ84Ԫ�Ʒ���
% ��̰�����Ĺ��ź͸ú�Ա���Ĺ���ʱ��������Ӧ�����ʡ�
clear,clc;
hours = input('Please input work hours: ');
if hours < 60
    allowances = 84*hours-700
elseif hours < 120
    allowances = 84*hours
else
    allowances = hours*84*1.15
end

%% 2����switch��case���ó����·ݵļ��ڣ���3��4��5�����Ϊ��������
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

%% 3������1+3+5+��+99��ֵ�����ʹ���1000��ʱ����ֹ���㣬Ҫ����ʾ��ֹʱ���
%% ��ͽ���Լ����һλ���������ֵ��
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


%% 4���ֱ����ѭ������sum���ʵ�ֵļ��㡣
% 1. sum()����
clc,clear;
format long
x = 0:63;
K = sum(2.^x)

% 2. ѭ�����
clc,clear;
format long;
K = 0;
for i = 0:63
    K = K + 2.^i;
end
K
