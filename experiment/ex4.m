%% 1. ����ͼ��

x = 0: 0.2*pi: 2*pi;
[x,y] = meshgrid(x)
z = 1./sqrt((1-x)^2 + y^2) + 1./sqrt((1+x)^2 + y^2)
plot3(x,y,z)

%% 2.��ͬһͼ�δ��ڲ�����ͼ�Σ��Ӵ��ڣ�����ʽ�ֱ���������Ρ�Բ�Ρ������κ������Ρ�
clc,clear,close;
ord = [3 4 6 2^10]
for i=1:4
    subplot(2,2,i)
    theta = linspace(pi/ord(i), 2*pi+pi/ord(i), ord(i)+1);
    plot(cos(theta), sin(theta));
    xlim(1.5*[-1,1]);
    ylim(1.5*[-1,1]);
    axis equal;
end

%% 3������������Ҫ�������Ӧ��������ͱ��⸽�ӱ�ע��������Ϊ��ɫ���ߡ�
clc,clear,close;
x = 0:0.001*pi:10*pi;
y = sin(x);
z = cos(x);
plot3(x,y,z)

