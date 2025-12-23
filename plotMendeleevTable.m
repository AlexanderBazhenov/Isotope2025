% 2025-10-20
% 2025-12-21
% plot Mendeleev Table

clear all
close all
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     PLACE    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
dirroot = 'd:\ST\2025\T\Isotopes'
##dirki = 'd:\ST\2024\T\kinterval-0.0.1'
##dirOld =  'd:\ST\2023\T\'
% HomePC
##dirroot = 'D:\ST\2024\T\'
##dirki = 'D:\ST\2024\T\kinterval-0.0.1'
##dirOld =  'd:\ST\2023\T\'
% FTI
dirroot ='E:\Users\Public\Documents\ST\2025\T\Isotopes\'
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

%%%%%%%%%%%%%%%%%%%%%%%% Plot Mendeleev Table Blank  %%%%%%%%%%%%%%%%%%%%%%%%%%%
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
       ColorNow = 0.9 * [1 1 1]
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
set(gca,  "fontsize", 14);
axis off
figure_name_out=strcat('MendeleevTableBlank','.png')
print('-dpng', '-r300', figure_name_out), pwd
%%%%%%%%%%%%%%%%%%%%%%%% /Plot Mendeleev Table Blank  %%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%% Plot Mendeleev Table Origin  %%%%%%%%%%%%%%%%%%%%%%%%%%%
BigBang = [ 1 2 ]
SmallStars = [ 3 6 7 38:42 ]
CosmicRays = [4 5]
BigStars = [ 8:37 ]
NeutronStars = [ 44: 60 62:92]
NoStable = [ 43 61 ]


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
      % CO - class origin
      if  ~isempty(BigBang(BigBang == ElemNow)) CO = 1 end;
      if  ~isempty(SmallStars(SmallStars == ElemNow)) CO = 2 end;
      if  ~isempty(CosmicRays(CosmicRays == ElemNow)) CO = 3 end;
      if  ~isempty(BigStars(BigStars == ElemNow)) CO = 4 end;
      if  ~isempty(NeutronStars(NeutronStars == ElemNow)) CO = 5 end;
      if  ~isempty(NoStable(NoStable == ElemNow)) CO = 6 end;
      switch (CO)
        case 1
           ColorNow = [1 0 0];
        case 2
          ColorNow = [1 1 0];
        case 3
          ColorNow = [1 0 1];
        case 4
          ColorNow = 0.7*[0 1 1];
        case 5
          ColorNow = [0 1 1];
        case 6
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
set(gca,  "fontsize", 14);
axis off
%%%%%%%%%%%%%%%%%% Legend %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
rr = 1
cc = 4-0.5
    yy = maxYY - rr*stepxx
    xx = cc*stepyy
    h = rectangle('Position', [xx yy ww hh]);
    ColorNow = [1 0 0]
    set (h, "FaceColor", ColorNow);
    ht = text(xx+stepxx/4, yy+3*stepyy/4, 'Big');
    set (ht, "FontSize", 12);
    hn = text(xx+stepxx/4, yy+stepyy/4, 'Bang');
    set (hn, "FontSize", 12);
cc = 6-0.5
    yy = maxYY - rr*stepxx
    xx = cc*stepyy
    h = rectangle('Position', [xx yy ww hh]);
    ColorNow = [1 1 0]
    set (h, "FaceColor", ColorNow);
    ht = text(xx+stepxx/4, yy+3*stepyy/4, 'Small');
    set (ht, "FontSize", 12);
    hn = text(xx+stepxx/4, yy+stepyy/4, 'Stars');
    set (hn, "FontSize", 12);
cc = 8-0.5
     yy = maxYY - rr*stepxx
    xx = cc*stepyy
    h = rectangle('Position', [xx yy ww hh]);
    ColorNow = [1 0 1]
    set (h, "FaceColor", ColorNow);
    ht = text(xx+stepxx/4, yy+3*stepyy/4, 'Cosmic');
    set (ht, "FontSize", 12);
    hn = text(xx+stepxx/4, yy+stepyy/4, 'Rays');
    set (hn, "FontSize", 12);
cc = 10-0.5
     yy = maxYY - rr*stepxx
    xx = cc*stepyy
    h = rectangle('Position', [xx yy ww hh]);
    ColorNow = 0.7*[0 1 1];
    set (h, "FaceColor", ColorNow);
    ht = text(xx+stepxx/4, yy+3*stepyy/4, 'Big');
    set (ht, "FontSize", 12);
    hn = text(xx+stepxx/4, yy+stepyy/4, 'Stars');
    set (hn, "FontSize", 12);
cc = 12-0.5
     yy = maxYY - rr*stepxx
    xx = cc*stepyy
    h = rectangle('Position', [xx yy ww hh]);
    ColorNow = [0 1 1];
    set (h, "FaceColor", ColorNow);
    ht = text(xx+stepxx/4, yy+3*stepyy/4, 'Neutron');
    set (ht, "FontSize", 12);
    hn = text(xx+stepxx/4, yy+stepyy/4, 'Stars');
    set (hn, "FontSize", 12);
%%%%%%%%%%%%%%%%%% /Legend %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure_name_out=strcat('MendeleevTableElemOrigin','.png')
print('-dpng', '-r300', figure_name_out), pwd
%%%%%%%%%%%%%%%%%%%%%%%% /Plot Mendeleev Table Origin  %%%%%%%%%%%%%%%%%%%%%%%%%%

ii = 1
scomma = strfind(Namearray, ',');
strnow = Namearray( scomma(ii)+1:scomma(ii+1)-1);


%%%%%%%%%%%%%%%%   Plot Mendeleev Table Number of Isotopes  %%%%%%%%%%%%%%%%%%%%
MultiIsotopes = [ 1 2 ...
3 5 6 7 8  10 12 14 16 17 18 ...
19 20 22 23 24 26 28 29 30 31 32 34 35 36 ...
37 38 40 42 44 46 47 48 49 50 51 52 54 ...
56 57 58 60 62 63 64 66 68 70 71 72 73 74 75 76 77 78 80 81 82 ...
90 92 ...
]
MonoIsotopes = [ 4 9 11 13 21 25 27 33 39 41 45 53 55 57 59 65 67 69 71 75 79 83  91 ]
IntervalValuesIsotopes = [ 1 3 5 6 7 8 12 14 16 17 18  35 81 82 ]
NoStable = [ 43 61 84:89 93:103 ]

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
      if  ~isempty(MonoIsotopes(MonoIsotopes == ElemNow)) CO = 1 end;
      if  ~isempty(MultiIsotopes(MultiIsotopes == ElemNow)) CO = 2 end;
%      if  ~isempty(CosmicRays(CosmicRays == ElemNow)) CO = 3 end;
%      if  ~isempty(BigStars(BigStars == ElemNow)) CO = 4 end;
%     if  ~isempty(NeutronStars(NeutronStars == ElemNow)) CO = 5 end;
      if  ~isempty(NoStable(NoStable == ElemNow)) CO = 6 end;
      switch (CO)
        case 1
           ColorNow = [1 1 0];
        case 2
          ColorNow = 0.7*[0 1 1];
##        case 3
##          ColorNow = [1 0 1];
##        case 4
##          ColorNow = 0.5*[0 1 1];
##        case 5
##          ColorNow = [0 1 1];
        case 6
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
set(gca,  "fontsize", 14);
axis off
%%%%%%%%%%%%%%%%%% Legend %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
rr = 1
cc = 4
    yy = maxYY - rr*stepxx
    xx = cc*stepyy
    h = rectangle('Position', [xx yy ww hh]);
    ColorNow = [1 1 0]
    set (h, "FaceColor", ColorNow);
    ht = text(xx+stepxx/4, yy+3*stepyy/4, 'Mono');
    set (ht, "FontSize", 12);
    hn = text(xx+stepxx/8, yy+stepyy/4, 'Isotopes');
    set (hn, "FontSize", 12);
cc = 6
    yy = maxYY - rr*stepxx
    xx = cc*stepyy
    h = rectangle('Position', [xx yy ww hh]);
    ColorNow = 0.7*[0 1 1];
    set (h, "FaceColor", ColorNow);
    ht = text(xx+stepxx/4, yy+3*stepyy/4, 'Multi');
    set (ht, "FontSize", 12);
    hn = text(xx+stepxx/8, yy+stepyy/4, 'Isotopes');
    set (hn, "FontSize", 12);
cc = 8
     yy = maxYY - rr*stepxx
    xx = cc*stepyy
    h = rectangle('Position', [xx yy ww hh]);
    ColorNow = [1 1 1]
    set (h, "FaceColor", ColorNow);
    ht = text(xx+stepxx/4, yy+3*stepyy/4, 'No');
    set (ht, "FontSize", 12);
    hn = text(xx+stepxx/4, yy+stepyy/4, 'Stable');
    set (hn, "FontSize", 12);
%%%%%%%%%%%%%%%%%% /Legend %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure_name_out=strcat('MendeleevTableElemIsotopeCount','.png')
print('-dpng', '-r300', figure_name_out), pwd
%%%%%%%%%%%%%%%%   Plot Mendeleev Table Number of Isotopes  %%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%   Plot Mendeleev Table Number of Isotopes  %%%%%%%%%%%%%%%%%%%%
% 2025-12-19
% 2025-12-22

NoStable = [ 43 61 84:103 ]
Isotopes1 = [ 4 9 11 13 15 21 25 27 33 39 41 45 53 55  59 65 67 69  79 83 ]
Isotopes2 = [ 1 2 3 5 6 7 17 19 23 29 31 35 37 47 49 51 57 63 71 73 75 77 81 ]
Isotopes3 = [ 8 10 16 18 ]
Isotopes4 = [ 16 24 26  38 58 82 ]
Isotopes5 = [ 22 28 30 32 40 74 ]
Isotopes6 = [ 20 34 36 46 68 72 78 ]
Isotopes7 = [ 42 44 56 60 62 64 66 70 76 80 ]
Isotopes8 = [ 48 52 ]
Isotopes9 = [ 54 ]
Isotopes10 = [ 50 ]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% PLOT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 2022-09-01
% Colors_special
OxfordBlue = [0, .33, .71]
RoyalMail = 4.58*[0.218, .032, 0.042]
Pantone = 3*[0.128, 0.140, 0.036]

gradeNo = 10
step = fix(length(viridis)/ gradeNo /2)
ColorArrayAll = viridis;
ColorArray= zeros(gradeNo,3);
for ii = 1:gradeNo
  argcolor = fix(length(viridis) /2) + ii*step;
  ColorArray(ii,:) = ColorArrayAll(argcolor,:);
end
%

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
      if  ~isempty(Isotopes6(Isotopes6 == ElemNow)) CO = 6 end;
      if  ~isempty(Isotopes7(Isotopes7 == ElemNow)) CO = 7 end;
      if  ~isempty(Isotopes8(Isotopes8 == ElemNow)) CO = 8 end;
      if  ~isempty(Isotopes9(Isotopes9 == ElemNow)) CO = 9 end;
      if  ~isempty(Isotopes10(Isotopes10 == ElemNow)) CO = 10 end;
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
        case 6
          ColorNow = ColorArray(6,:);
        case 7
          ColorNow = ColorArray(7,:);
        case 8
          ColorNow = ColorArray(8,:);
        case 9
          ColorNow = ColorArray(9,:);
        case 10
          ColorNow = ColorArray(10,:);
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
            ht = text(xx+stepxx/2, yy-1*stepyy/4, '0');
    set (ht, "FontSize", 12);
##    hn = text(xx+stepxx/8, yy+stepyy/4, 'Isotopes');
##    set (hn, "FontSize", 12);
for ii = 1:10
  cc = ccbase + ii
    yy = maxYY
    xx = cc*stepyy
    h = rectangle('Position', [xx yy ww hh/2]);
    ColorNow = ColorArray(ii,:);
    set (h, "FaceColor", ColorNow);
 %   ht = text(xx+stepxx/8, yy+3*stepyy/4, '1 (One)');
        ht = text(xx+stepxx/2, yy-1*stepyy/4, num2str(ii));
    set (ht, "FontSize", 12);
end
ii = 11
  cc = ccbase + ii
      xx = cc*stepyy
         ht = text(xx+stepxx/4, yy-1*stepyy/4, 'Число стабильных изотопов');
    set (ht, "FontSize", 12);
%%%%%%%%%%%%%%%%%% /Legend %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure_name_out=strcat('MendeleevTableElemIsotopeCount10','.png')
print('-dpng', '-r300', figure_name_out), pwd
