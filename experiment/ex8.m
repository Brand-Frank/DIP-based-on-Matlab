% clear,clc;
% f = figure('units', 'normalized', 'menu', 'none');
% ha=axes('parent', f);
% a = uimenu(f,'label', 'new');
% b = uimenu(f,'label', 'Plot');
% c = uimenu(f,'label', 'Exit');
% uimenu(a, 'label', '&M-File', 'callback', 'edit;');
% uimenu(b,'label', 'Sin Wave', 'callback', 'syms x;ezplot(sin(x));');
% uimenu(b,'label', 'Cos Wave', 'callback', 'syms x;ezplot(cos(x));');
% uimenu(c,'label', 'Exit', 'callback', 'close')

clear,clc;
f = figure('units', 'normalized', 'menu', 'none');
ha=axes('parent', f);
a = uimenu(f,'label', 'File');
% c = uimenu(f,'label', 'Exit');
uimenu(a, 'label', 'New', 'callback', 'edit;');
b = uimenu(a,'label', 'Plot');
uimenu(b,'label', 'Sin Wave', 'callback', 'syms x;ezplot(sin(x));');
uimenu(b,'label', 'Cos Wave', 'callback', 'syms x;ezplot(cos(x));');
uimenu(a,'label', 'Exit', 'callback', 'close')
