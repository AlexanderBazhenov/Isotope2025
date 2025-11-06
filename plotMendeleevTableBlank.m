% 2025-10-20
% plot Mendeleev Table
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
NamearrayPlace =  ...
[ 1  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  2;
 3  4  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  5  6  7  8  9  10;
 11 12 NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  13 14 15 16 17 18;
 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36;
 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 ;
 55 56 NaN(1)  72 73 74 75 76 77 78 79 80 81 82 83 84 85 86;
 87 88 NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  ;
 NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1);
 NaN(1)  NaN(1)  NaN(1)  57 58 59 60 61 62 63 64 65 66 67 68 69 70 71;
 NaN(1)  NaN(1)  NaN(1)  89 90 91 92 NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1)  NaN(1) ]

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

