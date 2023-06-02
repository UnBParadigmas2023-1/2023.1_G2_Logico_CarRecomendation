
% CRIANDO A JANELA DE DIALOGO
?- wcreate(menu,dialog,`Car Recommendation`,800,1000,1600,900,16'80c80000).

% CRIANDO OS COMPONENTES DA JANELA DE DIALOGO

?- wcreate((menu,1),button,`&Cancel`,930,730,300,64,16'50080000).
?- wcreate((menu,2),button,`&Search`,400,730,300,64,16'50010000). 

?- wcreate((menu,3),combobox,``,130,187,240,192,16'50a10002).
?- wcreate((menu,4),combobox,``,400,187,240,192,16'50a10002).
?- wcreate((menu,5),combobox,``,670,187,240,192,16'50a10002).
?- wcreate((menu,6),combobox,``,940,187,240,192,16'50a10002).
?- wcreate((menu,7),combobox,``,1210,187,240,192,16'50a10002).

?- wcreate((menu,8),listbox,``,300,250,1050,400,16'50a10002).

?- wcreate((menu,9),static,`FIELD`,230,100,240,64,16'50080000).
?- wcreate((menu,10),static,`TRANSMISSION`,480,100,240,64,16'50080000).
?- wcreate((menu,11),static,`MODEL`,765,100,240,64,16'50080000).
?- wcreate((menu,12),static,`YEAR`,1040,100,240,64,16'50080000).
?- wcreate((menu,13),static,`PRICE`,1310,100,240,64,16'50080000).

% EXIBINDO A JANELA DE DIALOGO
?- call_dialog(menu,X).

