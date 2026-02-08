% 2025-10-20
% 2025-12-21
% 2026-02-07
% plot Mendeleev Table

clear all
close all
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     PLACE    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%dirroot = 'd:\ST\2025\T\Isotopes'
dirroot = 'd:\ST\2026\T\Isotopes'
##dirki = 'd:\ST\2024\T\kinterval-0.0.1'
##dirOld =  'd:\ST\2023\T\'
% HomePC
##dirroot = 'D:\ST\2024\T\'
##dirki = 'D:\ST\2024\T\kinterval-0.0.1'
##dirOld =  'd:\ST\2023\T\'
% FTI
%dirroot ='E:\Users\Public\Documents\ST\2025\T\Isotopes\'
##dirki = 'e:\Users\Public\Documents\ST\2024\T\kinterval-0.0.1'
##dirOld =  'e:\Users\Public\Documents\ST\2023\T\'
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     START    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
addpath(dirroot)
%addpath(dirOld)
cd(dirroot)
pwd
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     START    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 2024-01-29
% getNZdata
load NZdata
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     START    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
GetStable2


%
% Namearray <- NZdata
% Namearray = [,H,He,Li,Be,B,C,N,O,F,Ne,Na,Mg,Al,Si,P,S,Cl,Ar,K,Ca,Sc,Ti,V,Cr,Mn,
%Fe,Co,Ni,Cu,Zn,Ga,Ge,As,Se,Br,Kr,Rb,Sr,Y, Zr,Nb,Mo,Tc,Ru,Rh,Pd,Ag,Cd,In,Sn,Sb,
%Te,I,Xe,Cs,Ba,La,Ce,Pr,Nd,Pm,Sm,Eu,Gd,Tb,Dy,Ho,Er,Tm,Yb,Lu,Hf,Ta,W,Re,Os,Ir,Pt,
% Au,Hg,Tl,Pb,Bi,Po,At,Rn,Fr,Ra,Ac,Th,Pa,U,Np,Pu]
%
% 1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18
%
% 1  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  2
% 3  4  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  5  6  7  8  9  10
% 11 12 NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  13 14 15 16 17 18
% 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36
% 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54
% 55 56 NaN(1)  72 73 74 75 76 77 78 79 80 81 82 83 84 85 86
% 87 88 NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)
% NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)
% NaN(1)  NaN(1)  NaN(1)  57 58 59 60 61 62 63 64 65 66 67 68 69 70 71
% NaN(1)  NaN(1)  NaN(1)  89 90 91 92 93  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)
%
% 1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18
%
% % 2025-12-21
NamearrayPlace =  ...
[ 1  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  2;
 3  4  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  5  6  7  8  9  10;
 11 12 NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  13 14 15 16 17 18;
 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36;
 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 ;
 55 56 NaN(1)  72 73 74 75 76 77 78 79 80 81 82 83 84 85 86;
 87 88 NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  ;
 NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1);
 NaN(1)  NaN(1)   57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 NaN(1);
 NaN(1)  NaN(1)  89 90 91 92 NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1) NaN(1) ]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%   Plot Mendeleev Table History of Elements  %%%%%%%%%%%%%%%%%%%%
% 2026-02-07
% 2026-02-08
ElementDiscoveryHistory
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
##NoStable = [ 1:92 ]
##% Неолит  = Медь, Олово, Железо, Углерод, Свинец, Серебро, Золото.
##Isotopes1 = [ 6 26 29 47 50 79 82 ]
##% BC = Сурьма Ртуть Цинк Сера
##Isotopes2 = [ 16 30 51 80   ]
##% Medieval = Мышьяк Висмут Фосфор
##Isotopes3 = [ 15 33 83 ]
##% XVIII =
##% Co Кобальт &	1735	& Г. Брандт &	Швеция \\
####Pt Платина &	1735	& А. де Ульоа & Испания \\
####Ni Никель &	1751	& А. Кронштедт  & Швеция \\
####H Водород &	1766	& Г. Кавендиш  & Великобритания \\
####N Азот &	1772	& Д. Резерфорд  & Великобритания \\
####O Кислород &	1774	& Дж. Пристли & Великобритания \\
####Mn Марганец &	1774	& К. Шееле, Ю. Ган & Швеция \\
####Cl Хлор &	1774	& К. Шееле & Швеция \\
####Ba Барий &	1774	& К. Шееле, Ю. Ган & Швеция \\
####Mo Молибден &	1778	& К. Шееле & Швеция \\
####W Вольфрам &	1781	& К. Шееле& Швеция \\
####Te Теллур &	1782	& Ф. Мюллер & Габсбургская монархия\\
####U Уран &	1789	& М. Г. Клапрот & Германия\\
####Zr Цирконий &	1789	& М. Г. Клапрот & Германия\\
####Sr Стронций &	1790	& А. Кроуфорд, М. Г. Клапрот & Германия\\
####Y Иттрий &	1794	& Ю. Гадолин  & Швеция \\
####Ti Титан  &	1795	& М. Г. Клапрот & Германия\\
####Cr Хром  &	1797	& Л. Воклен & Франция\\
####Be Бериллий &	1798	& Л. Воклен & Франция\\
##Isotopes4 = [ 1 4 7 8 17 22 24 25 27 28 38 39 40 42 52 56 74 78 92 ]
##% XIX-1
####Nb Ниобий &	1801	& Ч. Хэтчетт & Великобритания\\
####Ta  Тантал &	1802	& А. Экеберг& Швеция\\
####Pd Палладий &	1803	& У. Волластон & Великобритания\\
####Ce Церий &	 1803	&  Й. Берцелиус, В. Хизингер и & Швеция и \\
####  &	  	&   М. Г. Клапрот &  Германия\\
####Ir Иридий &	1804	& C. Теннант & Великобритания\\
####Os Осмий &	1804	& C. Теннант & Великобритания\\
####Rh Родий &	1804	& У. Волластон & Великобритания\\
####Na Натрий &	1807	& Г. Дэви & Великобритания\\
####K Калий &	1807	& Г. Дэви & Великобритания\\
####B Бор &	1808	& Ж. Гей-Люссак, Л. Тенар& Франция\\
####Ca Кальций &	1808	& Г. Дэви & Великобритания\\
####Mg Магний &	1808	& Г. Дэви & Великобритания\\
####I Иод &	1811	& Б. Куртуа & Франция\\
####Cd Кадмий   &	1817  	&  Ф. Штромейер &  Германия\\
####Se Селен &	1817	& Й. Берцелиус & Швеция\\
####Li Литий &	1817	& И. Арфведсон & Швеция\\
####Si Кремний & 1823	& Й. Берцелиус & Швеция\\
####Si Алюминий & 1825	& 	X. Эрстед & Дания\\
####I Бром &	1826	& А. Балар & Франция\\
####Th Торий & 1828	& Й. Берцелиус & Швеция\\
####V Ванадий & 1830 & Н. Сефстрём & Швеция\\
####La Лантан & 1839 & К. Мосандер & Швеция\\
####Er Эрбий & 1843 & К. Мосандер & Швеция\\
####Tb Тербий & 1843 & К. Мосандер & Швеция\\
####Ru Рутений & 1844 & К. К. Клаус & Россия\\
####Rb Рубидий   &	1861 	&  Р. Бунзен, Г. Кирхгоф &  Германия\\
####Cs Цезий   &	1861 	&  Р. Бунзен, Г. Кирхгоф &  Германия\\
####Tl Таллий &	1861	& У. Крукс & Великобритания\\
####In Индий   &	1863 	&  Ф. Райх, Т. Рихтер &  Германия\\
##Isotopes5 = [ 3 5 11 12 13 14 19 20 23 34 35 37 41 44 45 46 48 49 53 55 57 58 63 65 73 76 77 81 90 ]
##% XIX -2
####Ga Галлий &	1875	& П. Лекок де Буабодран & Франция\\
####Yb Иттербий &	1878	& Ж. Мариньяк & Швейцария\\
####Tm Тулий & 1879 & П. Клеве & Швеция\\
####Hm Гольмий & 1879 & П. Клеве & Швеция\\
####Sc Скандий & 1879 & Л. Нильсон & Швеция\\
####Sm Самарий &	1879	& П. Лекок де Буабодран & Франция\\
####Pr Празеодим &	1885	& К. Ауэр фон Вельсбах & Австро-Венгрия\\
####Nd Неодим &	1885	& К. Ауэр фон Вельсбах & Австро-Венгрия\\
####F Фтор &	1886	& А. Муассан & Франция\\
####Gd Гадолиний &	1886	& П. Лекок де Буабодран  & Франция\\
####Dy Диспрозий &	1886	& П. Лекок де Буабодран  & Франция\\
####Ge Германий   &	1886 	&  К. Винклер &  Германия\\
####Ar Аргон &	1894	& У. Рамзай, Дж. Рэлей & Великобритания\\
####He Гелий &	1895	& У. Рамзай, У. Крукс & Великобритания\\
####Ar Неон &	1898	& У. Рамзай, М. Траверс & Великобритания\\
####Xe Ксенон &	1898	& У. Рамзай, М. Траверс & Великобритания\\
####Kr Криптон &	1898	& У. Рамзай, М. Траверс& Великобритания\\
####\hline
####Po Полоний &	1898	& П. Кюри, М. Склодовская-Кюри  & Франция\\
####Ra Радий &	1898	& П. Кюри, М. Склодовская-Кюри  & Франция\\
####  &	 	&  Г. Бемон  &  \\
####Rn  Радон &	1899	& Р. Оуэнс, Э. Резерфорд & Великобритания\\
####Ra Актиний &	1899	& А. Дебьерн & Франция\\
##Isotopes6 = [ 2 9 10 18 21 31 32 36 39 54 59 60 62 64 66 67 69 ]
####Isotopes7 = [   ]
####Isotopes8 = [   ]
####Isotopes9 = [   ]
####Isotopes10 = [  ]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Неолит
NoStable = setdiff(NoStable, Isotopes1)
% BC
NoStable = setdiff(NoStable, Isotopes2)
%
NoStable = setdiff(NoStable, Isotopes3)
NoStable = setdiff(NoStable, Isotopes4)
NoStable = setdiff(NoStable, Isotopes5)
##NoStable = setdiff(NoStable, Isotopes6)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% PLOT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 2022-09-01
% Colors_special
OxfordBlue = [0, .33, .71]
RoyalMail = 4.58*[0.218, .032, 0.042]
Pantone = 3*[0.128, 0.140, 0.036]

gradeNo = 2
step = fix(length(viridis)/ gradeNo /2)
ColorArrayAll = viridis;
ColorArray= zeros(gradeNo,3);
for ii = 1:gradeNo
  argcolor = fix(length(viridis) /2) + ii*step;
  ColorArray(ii,:) = ColorArrayAll(argcolor,:);
end
%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Table Properties %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
stepxx = 4*4
stepyy = 4*4
ww = 4*4
hh = 4*4
%
% 2025-10-21
LinesTableMax=10
ElemPeriodChemical = 18
% Table Size
maxXX = LinesTableMax*stepxx
maxYY = ElemPeriodChemical*stepyy
%
scomma = strfind(Namearray, ',');

%%%%%%%%%%%%%%%%%%% Color Basic Plot %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure
hold on
for rr = 1:10
  for cc = 1:18
    yy = maxYY - rr*stepxx
    xx = cc*stepyy
    TF = isnan(NamearrayPlace(rr ,cc))
      if ( TF ~= 1 )
       textnow = num2str(NamearrayPlace(rr ,cc))
       h = rectangle('Position', [xx yy ww hh]);
       ColorNow = 1 * [1 1 1]
      ElemNow = NamearrayPlace(rr ,cc)
      % IC - Element isotope count
      if  ~isempty(Isotopes1(Isotopes1 == ElemNow)) CO = 1 end;
      if  ~isempty(Isotopes2(Isotopes2 == ElemNow)) CO = 2 end;
      if  ~isempty(Isotopes3(Isotopes3 == ElemNow)) CO = 3 end;
      if  ~isempty(Isotopes4(Isotopes4 == ElemNow)) CO = 4 end;
      if  ~isempty(Isotopes5(Isotopes5 == ElemNow)) CO = 5 end;
%      if  ~isempty(Isotopes6(Isotopes6 == ElemNow)) CO = 6 end;
##      if  ~isempty(Isotopes7(Isotopes7 == ElemNow)) CO = 7 end;
##      if  ~isempty(Isotopes8(Isotopes8 == ElemNow)) CO = 8 end;
##      if  ~isempty(Isotopes9(Isotopes9 == ElemNow)) CO = 9 end;
##      if  ~isempty(Isotopes10(Isotopes10 == ElemNow)) CO = 10 end;
      if  ~isempty(NoStable(NoStable == ElemNow)) CO = 11 end;
      switch (CO)
        case 1
          ColorNow = ColorArray(1,:);
        case 2
          ColorNow = ColorArray(2,:);
        case 3
          ColorNow = ColorArray(3,:);
        case 4
          ColorNow = ColorArray(4,:);
        case 5
          ColorNow = ColorArray(5,:);
##        case 6
##          ColorNow = ColorArray(6,:);
##        case 7
##          ColorNow = ColorArray(7,:);
##        case 8
##          ColorNow = ColorArray(8,:);
##        case 9
##          ColorNow = ColorArray(9,:);
##        case 10
##          ColorNow = ColorArray(10,:);
        case 11
           ColorNow = [1 1 1];
      endswitch
       set (h, "FaceColor", ColorNow);
       %%%%%%%%%%%%%%%%%% Inside rectangle %%%%%%%%%%%%%%%%%
       ht = text(xx+stepxx/2, yy+3*stepyy/4, textnow);
       set (ht, "FontSize", 12);
       ii = NamearrayPlace(rr ,cc);
       strnow = Namearray( scomma(ii)+1:scomma(ii+1)-1);
       hn = text(xx+stepxx/2, yy+stepyy/4, strnow);
       set (hn, "FontSize", 12);
       %%%%%%%%%%%%%%%%%% /Inside rectangle %%%%%%%%%%%%%%%%
      end
  end
end
%%%%%%%%%%%%%%%%%%% /Color Basic Plot %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
set(gca,  "fontsize", 14);
axis off


%%%%%%%%%%%%%%%%%% Legend %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

LegendText = [ ', Неолит, ВС' ]
scommaLegend = strfind(LegendText, ',')

stepxx = 4*4
stepyy = 4*4
ww = 4*4
hh = 4*4

rr = 1
ccbase = 3
    yy = maxYY
    xx = ccbase*stepyy
    h = rectangle('Position', [xx yy ww hh/2]);
    ColorNow = [1 1 1]
    set (h, "FaceColor", ColorNow);
 %   ht = text(xx+stepxx/8, yy+3*stepyy/4, 'No Stable');
            ht = text(xx+stepxx/2, yy-1*stepyy/4, 'Unknown');
    set (ht, "FontSize", 12);
##    hn = text(xx+stepxx/8, yy+stepyy/4, 'Isotopes');
##    set (hn, "FontSize", 12);
for ii = 1:gradeNo-1
  cc = ccbase + ii
    yy = maxYY
    xx = cc*stepyy
    h = rectangle('Position', [xx yy ww hh/2]);
    ColorNow = ColorArray(ii,:);
    set (h, "FaceColor", ColorNow);
 %   ht = text(xx+stepxx/8, yy+3*stepyy/4, '1 (One)');
      strnow = LegendText( scommaLegend(ii)+1:scommaLegend(ii+1)-1);
        ht = text(xx+stepxx/2, yy-1*stepyy/4, strnow);
    set (ht, "FontSize", 12);
end
ii = gradeNo
  cc = ccbase + ii
      xx = cc*stepyy
   h = rectangle('Position', [xx yy ww hh/2]);
    ColorNow = ColorArray(ii,:);
    set (h, "FaceColor", ColorNow);
 %   ht = text(xx+stepxx/8, yy+3*stepyy/4, '1 (One)');
      strnow = LegendText( scommaLegend(ii)+1:end);
        ht = text(xx+stepxx/2, yy-1*stepyy/4, strnow);
    set (ht, "FontSize", 12);
%%%%%%%%%%%%%%%%%% /Legend %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure_name_out=strcat('MendeleevTableElemIsotopeCount10','.png')
print('-dpng', '-r300', figure_name_out), pwd
