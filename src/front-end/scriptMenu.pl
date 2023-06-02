% ------------------------------------------------------------------------------ CRIANDO A JANELA ----------------------------------------------------------------------------------

% CRIANDO A JANELA DE DIALOGO
?- wcreate(menu,dialog,`Car Recommendation`,800,1000,1600,900,16'80c80000).

% CRIANDO OS COMPONENTES DA JANELA DE DIALOGO ( FILTROS / BOTÕES / LABELS / PERGUNTAS ABERTAS
?- wcreate((menu,1),button,`&Clean`,850,730,300,64,16'50080000).
?- wcreate((menu,2),button,`&Search`,400,730,300,64,16'50010000). 

?- wcreate((menu,3),combobox,``,130,137,240,192,16'50a10002).
?- wcreate((menu,4),combobox,``,400,137,240,192,16'50a10002).
?- wcreate((menu,5),combobox,``,670,137,240,192,16'50a10002).
?- wcreate((menu,6),combobox,``,1210,157,120,192,16'50a10002).
?- wcreate((menu,7),combobox,``,1340,157,120,192,16'50a10002).
?- wcreate((menu,8),edit,`Ex.: 03/12/2001`,935,137,240,25,16'50810000).
?- wcreate((menu,18),button,`COMFORT`,1240,280,80,32,16'50010003).
?- wcreate((menu,19),button,`ECONOMY`,1380,280,83,32,16'50010003).

%?- wcreate((menu,21),button,`NEW`,1240,310,80,32,16'50010003).
%?- wcreate((menu,22),button,`ALMOST NEW`,1350,310,105,32,16'50010003).
%?- wcreate((menu,23),button,`OLD`,1510,310,80,32,16'50010003).

?- wcreate((menu,10),listbox,``,380,400,800,300,16'50a10002).

?- wcreate((menu,11),static,`&FIELD`,230,100,240,24,16'50080000).
?- wcreate((menu,12),static,`&TRANSMISSION`,463,100,240,24,16'50080000).
?- wcreate((menu,13),static,`&MODEL`,765,100,240,24,16'50080000).
?- wcreate((menu,14),static,`&RELEASE ( YEARS )`,1240,100,240,24,16'50080000).
?- wcreate((menu,141),static,`FROM`,1247,135,120,20,16'50080000).
?- wcreate((menu,142),static,`TO`,1385,135,120,20,16'50080000).
?- wcreate((menu,143),static,`Min Value =  1992      Max Value = 2020`,1213,185,250,24,16'50080000).
?- wcreate((menu,15),static,`&HOW OLD ARE YOU?`,967,100,240,34,16'50080000).
?- wcreate((menu,151),static,`( DD/MM/YYYY )`,998,175,130,24,16'50080000).
?- wcreate((menu,17),static,`&WHAT DO YOU PREFER? (1 choice/line)`,1240,250,450,24,16'50080000).
?- wcreate((menu,20),static,`&OR`,1335,290,30,32,16'50080000).

%?- wcreate((menu,24),static,`&OR`,1310,318,30,32,16'50080000).
%?- wcreate((menu,25),static,`&OR`,1470,318,30,32,16'50080000).

?- wcreate((menu,16),static,`CAR RECOMMENDATION SYSTEM`,450,30,1000,50,16'50080000).

% POPULANDO OS COMBOBOX PARA TESTES

?- wlbxadd((menu,3),-1,`Eletric`).
?- wlbxadd((menu,3),-1,`LPG`).
?- wlbxadd((menu,3),-1,`Petrol`).
?- wlbxadd((menu,3),-1,`Diesel`).
?- wlbxadd((menu,3),-1,`ICMG`).

?- wlbxadd((menu,4),-1,`Automatic`).
?- wlbxadd((menu,4),-1,`Manual`).

?- wlbxadd((menu,5),-1,`Maruti`).
?- wlbxadd((menu,5),-1,`Hyundai`).
?- wlbxadd((menu,5),-1,`Datsun`).
?- wlbxadd((menu,5),-1,`Honda`).
?- wlbxadd((menu,5),-1,`Tata`).

?- wlbxadd((menu,6),-1,`1992`).
?- wlbxadd((menu,6),-1,`1993`).
?- wlbxadd((menu,6),-1,`1994`).
?- wlbxadd((menu,6),-1,`1995`).
?- wlbxadd((menu,6),-1,`1996`).
?- wlbxadd((menu,6),-1,`1997`).
?- wlbxadd((menu,6),-1,`1998`).
?- wlbxadd((menu,6),-1,`1999`).
?- wlbxadd((menu,6),-1,`2000`).
?- wlbxadd((menu,6),-1,`2001`).
?- wlbxadd((menu,6),-1,`2002`).
?- wlbxadd((menu,6),-1,`2003`).
?- wlbxadd((menu,6),-1,`2004`).
?- wlbxadd((menu,6),-1,`2005`).
?- wlbxadd((menu,6),-1,`2006`).
?- wlbxadd((menu,6),-1,`2007`).
?- wlbxadd((menu,6),-1,`2008`).
?- wlbxadd((menu,6),-1,`2009`).
?- wlbxadd((menu,6),-1,`2010`).
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

?- wlbxadd((menu,7),-1,`1992`).
?- wlbxadd((menu,7),-1,`1993`).
?- wlbxadd((menu,7),-1,`1994`).
?- wlbxadd((menu,7),-1,`1995`).
?- wlbxadd((menu,7),-1,`1996`).
?- wlbxadd((menu,7),-1,`1997`).
?- wlbxadd((menu,7),-1,`1998`).
?- wlbxadd((menu,7),-1,`1999`).
?- wlbxadd((menu,7),-1,`2000`).
?- wlbxadd((menu,7),-1,`2001`).
?- wlbxadd((menu,7),-1,`2002`).
?- wlbxadd((menu,7),-1,`2003`).
?- wlbxadd((menu,7),-1,`2004`).
?- wlbxadd((menu,7),-1,`2005`).
?- wlbxadd((menu,7),-1,`2006`).
?- wlbxadd((menu,7),-1,`2007`).
?- wlbxadd((menu,7),-1,`2008`).
?- wlbxadd((menu,7),-1,`2009`).
?- wlbxadd((menu,7),-1,`2010`).
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

% DEFININDO FONTES
?- wfcreate(font0,'courier new',60,3).
?- wfcreate(font1,'courier new',30,3).
?- wfcreate(font2,'arial',30,1).
?- wfcreate(font3,'courier new',20,3).
?- wfcreate(font4,'arial',16,3).
?- wfcreate(font5,'arial',16,1).
?- wfcreate(font6,'arial',16,3).

% APLICANDO FONTES
?- wfont((menu,1),font1).
?- wfont((menu,2),font1).

?- wfont((menu,10),font2).

?- wfont((menu,16),font0).
?- wfont((menu,11),font3).
?- wfont((menu,12),font3).
?- wfont((menu,13),font3).
?- wfont((menu,14),font3).
?- wfont((menu,15),font3).
?- wfont((menu,17),font3).
?- wfont((menu,143),font4).
?- wfont((menu,151),font4).

?- wfont((menu,3),font5).
?- wfont((menu,4),font5).
?- wfont((menu,5),font5).
?- wfont((menu,6),font5).
?- wfont((menu,7),font5).
?- wfont((menu,8),font5).
?- wfont((menu,18),font5).
?- wfont((menu,19),font5).
?- wfont((menu,20),font6).
?- wfont((menu,21),font5).
?- wfont((menu,22),font5).
?- wfont((menu,23),font5).
?- wfont((menu,24),font6).
?- wfont((menu,25),font6).

% -------------------------------------------------------------------------- PROCESSANDO EVENTOS ---------------------------------------------------------------------





% --------------------------------------------------------------------------------- DEFININDO FATOS --------------------------------------------------------------------------








% --------------------------------------------------------------------------------- EXIBINDO A JANELA  -----------------------------------------------------------------------

% EXIBINDO A JANELA DE DIALOGO
?- call_dialog(menu,X).