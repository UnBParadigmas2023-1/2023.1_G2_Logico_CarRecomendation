
% CRIANDO A JANELA DE DIALOGO
?- wcreate(menu,dialog,`Car Recommendation`,800,1000,1600,900,16'80c80000).

% CRIANDO OS COMPONENTES DA JANELA DE DIALOGO

?- wcreate((menu,1),button,`&Clean`,930,730,300,64,16'50080000).
?- wcreate((menu,2),button,`&Search`,400,730,300,64,16'50010000). 

?- wcreate((menu,3),combobox,``,130,187,240,192,16'50a10002).
?- wcreate((menu,4),combobox,``,400,187,240,192,16'50a10002).
?- wcreate((menu,5),combobox,``,670,187,240,192,16'50a10002).
?- wcreate((menu,6),combobox,``,935,187,120,192,16'50a10002).
?- wcreate((menu,7),combobox,``,1065,187,120,192,16'50a10002).
?- wcreate((menu,8),combobox,``,1210,187,120,192,16'50a10002).
?- wcreate((menu,9),combobox,``,1340,187,120,192,16'50a10002).

?- wcreate((menu,10),listbox,``,300,250,1050,400,16'50a10002).

?- wcreate((menu,11),static,`&FIELD`,230,100,240,64,16'50080000).
?- wcreate((menu,12),static,`&TRANSMISSION`,480,100,240,64,16'50080000).
?- wcreate((menu,13),static,`&MODEL`,765,100,240,64,16'50080000).
?- wcreate((menu,14),static,`&RELEASE DATE RANGE ( YEARS )`,967,100,240,64,16'50080000).
?- wcreate((menu,141),static,`FROM`,973,150,120,30,16'50080000).
?- wcreate((menu,142),static,`TO`,1110,150,120,30,16'50080000).
?- wcreate((menu,143),static,`Min Value =  2011  |  Max Value = 2023`,963,220,300,30,16'50080000).
?- wcreate((menu,15),static,`&PRICE RANGE ( U$ )`,1280,100,240,64,16'50080000).
?- wcreate((menu,151),static,`FROM`,1248,150,120,30,16'50080000).
?- wcreate((menu,152),static,`TO`,1385,150,120,30,16'50080000).
?- wcreate((menu,153),static,`Min Value =  20000  |  Max Value = 1000000`,1232,220,300,30,16'50080000).

?- wcreate((menu,16),static,`CAR RECOMMENDATION SYSTEM`,750,30,240,50,16'50080000).

% POPULANDO OS COMBOBOX PARA TESTES

?- wlbxadd((menu,3),-1,`Common Gasoline`).
?- wlbxadd((menu,3),-1,`Added Gasoline`).
?- wlbxadd((menu,3),-1,`Common Diesel`).
?- wlbxadd((menu,3),-1,`Diesel S-10`).
?- wlbxadd((menu,3),-1,`Ethanol`).

?- wlbxadd((menu,4),-1,`Automatic`).
?- wlbxadd((menu,4),-1,`Manual`).

?- wlbxadd((menu,5),-1,`Maruti 800 AC`).
?- wlbxadd((menu,5),-1,`Maruti Wagon R LXI Minor`).
?- wlbxadd((menu,5),-1,`Hyundai Verna 1.6 SX`).
?- wlbxadd((menu,5),-1,`Datsun RediGO T Option`).
?- wlbxadd((menu,5),-1,`Honda Amaze VX i-DTEC`).
?- wlbxadd((menu,5),-1,`Maruti Alto LX BSIII`).
?- wlbxadd((menu,5),-1,`Hyundai Xcent 1.2 Kappa S`).
?- wlbxadd((menu,5),-1,`Tata Indigo Grand Petrol`).
?- wlbxadd((menu,5),-1,`Hyundai Creta 1.6 VTVT S`).
?- wlbxadd((menu,5),-1,`Maruti Celerio Green VXI`).

?- wlbxadd((menu,6),-1,`2011`).
?- wlbxadd((menu,6),-1,`2012`).
?- wlbxadd((menu,6),-1,`2013`).
?- wlbxadd((menu,6),-1,`2014`).
?- wlbxadd((menu,6),-1,`2015`).
?- wlbxadd((menu,6),-1,`2016`).
?- wlbxadd((menu,6),-1,`2017`).
?- wlbxadd((menu,6),-1,`2018`).
?- wlbxadd((menu,6),-1,`2019`).
?- wlbxadd((menu,6),-1,`2020`).
?- wlbxadd((menu,6),-1,`2021`).
?- wlbxadd((menu,6),-1,`2022`).
?- wlbxadd((menu,6),-1,`2023`).

?- wlbxadd((menu,7),-1,`2011`).
?- wlbxadd((menu,7),-1,`2012`).
?- wlbxadd((menu,7),-1,`2013`).
?- wlbxadd((menu,7),-1,`2014`).
?- wlbxadd((menu,7),-1,`2015`).
?- wlbxadd((menu,7),-1,`2016`).
?- wlbxadd((menu,7),-1,`2017`).
?- wlbxadd((menu,7),-1,`2018`).
?- wlbxadd((menu,7),-1,`2019`).
?- wlbxadd((menu,7),-1,`2020`).
?- wlbxadd((menu,7),-1,`2021`).
?- wlbxadd((menu,7),-1,`2022`).
?- wlbxadd((menu,7),-1,`2023`).

?- wlbxadd((menu,10),-1,`Common Gasoline, Automatic, Maruti 800 AC, 2020, 200000`).
?- wlbxadd((menu,10),-1,`Added Gasoline, Manual, Maruti Wagon R LXI Minor, 2022, 55800`).
?- wlbxadd((menu,10),-1,`Common Diesel, Automatic, Hyundai Verna 1.6 SX,2012, 45000`).
?- wlbxadd((menu,10),-1,`Diesel S-10, Manual, Datsun RediGO T Option,2011, 70000`).
?- wlbxadd((menu,10),-1,`Ethanol, Automatic, Honda Amaze VX i-DTEC, 2015, 180000`).
?- wlbxadd((menu,10),-1,`Common Gasoline, Automatic, Maruti Alto LX BSIII, 2018, 20000`).
?- wlbxadd((menu,10),-1,`Ethanol, Automatic, Hyundai Xcent 1.2 Kappa S, 2023, 30000`).
?- wlbxadd((menu,10),-1,`Added Gasoline, Manual, Tata Indigo Grand Petrol, 2021, 600000`).
?- wlbxadd((menu,10),-1,`Diesel S-10, Manual, Hyundai Creta 1.6 VTVT S,2015, 100000`).
?- wlbxadd((menu,10),-1,`Common Diesel, Automatic, Maruti Celerio Green VXI,2017, 60000`).

% EXIBINDO A JANELA DE DIALOGO
?- call_dialog(menu,X).

