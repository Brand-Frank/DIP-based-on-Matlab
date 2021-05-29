screen=get(0,'ScreenSize'); 
W=screen(3);H=screen(4); 
figure('color',[1,1,1],'position',[0.2*H,0.2*H,0.5*W,0.3*H],... 
'name','File','numbertitle','off','menubar','none'); 
hplot=uimenu(gcf,'label','Plot'); 
uimenu(hplot,'label','sinwave','call',... 
['t=-2*pi:pi/ 20:2*pi;','h=plot(t,sin(t));',... 
'set(hgon,''enable'',''on'');']); 
uimenu(hplot,'label','coswave','call',... 
['t=-2*pi:pi/ 20:2*pi;','h=plot(t,cos(t));',... 
'set(hgon,''enable'',''on'');']); 
hnew=uimenu(gcf,'label','new','call','edit'); 
hoption=uimenu(gcf,'label','option'); 
hgon=uimenu(hoption,'label','Grid on','call','grid on','enable','off'); 
hcolor=uimenu(hoption,'label',' 颜色 ','separator','on'); 
hred=uimenu(hcolor,'label',' 红色 ','call','set(h,''color'',''r'');'); 
hblue=uimenu(hcolor,'label',' 蓝色 ','call','set(h,''color'',''b'');'); 
hyellow=uimenu(hcolor,'label',' 黄色 ','accelerator','y','call','set(h,''color'',''y'');'); 
uimenu(gcf,'label','Exit','call','close(gcf)');

