%% һ������ϵͳ�������з���������ʾ�Ӽ�������m1��m2��theta��ֵ����a1��a2��N1��N2��ֵ������gȡ9.8,���� ʱ�ԽǶ�Ϊ��λ��
% ������   ex5_2.m
clc,clear;
x = [];
for i = 1:3
    x(i) = input('\ninput: ');
end
m1 = x(1);
m2 = x(2);
theta = x(3);

output = ex5_system(m1, m2, theta)
