clear,clc;
h = dialog('name','加5对话框','position',[200,200,300,200]);
gg = uicontrol('parent',h,'style','edit','position',[90 120 120 30],'Max',2,'String','230','fontsize',12);
uicontrol('parent',h,'style','pushbutton','position',[125,70,50,20],'string','加 5','callback','set(gg,''string'',5+str2num(get(gg,''string'')));');
