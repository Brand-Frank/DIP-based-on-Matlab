%% �������ʽ��ֵ 
% 1.
x = (sin(48./180)+sqrt(7))./(1 + log2(15) - 2*i)

% 2.
y = abs(1 + 2*i)/(1+(exp(1).^2))

% 3. 
z = x.^2 + y.^2

%% ������ֱ�ӽ�������ķ������������ַ�ʽ�������¾���
% 1(1).
a = [1,2,3; 4,5,6; 7,8,9];
% b = 10:2:14;
b = [10, 12, 14];
A = [a,b']

% 1(1)
A = [1,2,3,10; 4,5,6,10; 7,8,9,14];

% 2.������A��2��3���е�1��3��4��Ԫ�ظ�������B
B = A(2:3, [1,3,4])

% ������A��ÿ��Ԫ�ؼ�30�����ҽ���1�к͵�3�н��н���

C = A + 30
C([1,3], :) = C([3,1], :)

%% 3����1������һ�� 4x5 ������󡢵�λ�����Ԫ��ȫΪ1�ķ���
clear,clc;
A = zeros(4,5)
B = eye(4,5)
C = ones(4)

%  ��2����ʹ��ֱ�ӽ�������ķ���������Ͻ�������ĺ������������¾��� ��

A = zeros(3,3);
A(:, 2) = 1
tmp = [3,4,5];
A(:, 3) = tmp'

%% 4����x=0.2��0.4��0.6��0.8ʱ���ֱ���y = sin(x)cos(x) ��ֵ��
clc,clear;
x = 0.2:0.2:0.8;
y = sin(x) .* cos(x)

% ʵ��������
% 1.	��η��������е�Ԫ�أ�
% ��һ������a���������i��Ԫ����Ϊa[i-1]����������Ϊ��˳�����β�ѯ
% 2.	��������ʾ�ַ��ͱ�����
