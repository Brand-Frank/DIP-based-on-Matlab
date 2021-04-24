% 创建一个单位球、将半径加倍并绘制结果图：
[x,y,z] = sphere;
r = 2;
surf(x*r,y*r,z*r)
axis equal

% 计算球的表面积和体积：
A = 4*pi*r^2;
V = (4/3)*pi*r^3;
