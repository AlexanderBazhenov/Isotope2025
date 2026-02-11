% 2026-02-11
% Berzelius mass
%
% Jöns Jacob Berzelius.  Essay on the Cause of Chemical Proportions, and
% on Some Circumstances Relating to Them: Together with a Short and
% Easy Method of Expressing Them.
% Annals of Philosophy 2, 443-454 (1813), 3, 51-62, 93-106, 244-257, 353-364
%
% Namearray = [,H,He,Li,Be,B,C,N,O,F,Ne,Na,Mg,Al,Si,P,S,Cl,Ar,K,Ca,Sc,Ti,V,Cr,Mn,
%Fe,Co,Ni,Cu,Zn,Ga,Ge,As,Se,Br,Kr,Rb,Sr,Y, Zr,Nb,Mo,Tc,Ru,Rh,Pd,Ag,Cd,In,Sn,Sb,
%Te,I,Xe,Cs,Ba,La,Ce,Pr,Nd,Pm,Sm,Eu,Gd,Tb,Dy,Ho,Er,Tm,Yb,Lu,Hf,Ta,W,Re,Os,Ir,Pt,
% Au,Hg,Tl,Pb,Bi,Po,At,Rn,Fr,Ra,Ac,Th,Pa,U,Np,Pu]

% O = 100

 BerzeliusWeight  = [,6.636,NaN(1), NaN(1), NaN(1),73.273,75.1,79.54,100,60.,NaN(1),579.32,315.46, ...
228.025,216.66 ,167.5,201,NaN(1), NaN(1),978.0,510.2,NaN(1),1801,NaN(1),708,711.575, ...
693.64,732.61,733.8,806.48,806.45,NaN(1), NaN(1),839.9,NaN(1), NaN(1),NaN(1), NaN(1), ...
1418.14,881.66,  NaN(1), NaN(1),601.56, NaN(1), NaN(1),1490.31, NaN(1), NaN(1), ...
NaN(1), NaN(1),1470.59,1612.96, 806.48,NaN(1), NaN(1),NaN(1), 1709., NaN(1), 1148.8,...
NaN(1), NaN(1), NaN(1),NaN(1), NaN(1), NaN(1),NaN(1), NaN(1), NaN(1),NaN(1), NaN(1), NaN(1), ...
NaN(1), NaN(1), NaN(1),2424.2,NaN(1), NaN(1), NaN(1),1206.7,  2483.8,2531.6, NaN(1), ...
 2597.4	,1774.,NaN(1), NaN(1), NaN(1),NaN(1), NaN(1), NaN(1),NaN(1), NaN(1), NaN(1),NaN(1), NaN(1)]


 BerzeliusWeight  = BerzeliusWeight  / 100 * 16

##Muriatic radicle &	M&139.56	&...	& 157.7	&... \\
##Fluoric radicle	& F &	60. &	... &	... &	... \\




## [,1, NaN(1), NaN(1), NaN(1), NaN(1),6,14,16, NaN(1), NaN(1), NaN(1),12,8, NaN(1),14,16,36, NaN(1),40,20, NaN(1),144, NaN(1), ...
## 18,56, 28,28,28,32,32, NaN(1), NaN(1),48, NaN(1), NaN(1), NaN(1), NaN(1),48, ...
## NaN(1),  NaN(1),  NaN(1),48,  NaN(1), NaN(1),120,  NaN(1),108,  NaN(1),  NaN(1), ...
## 60,88, 32,124,  NaN(1), NaN(1), 70, NaN(1),92,NaN(1), NaN(1), NaN(1),NaN(1), ...
## NaN(1), NaN(1),NaN(1), NaN(1), NaN(1),NaN(1), NaN(1), NaN(1),NaN(1), NaN(1), NaN(1), 96, ...
## NaN(1), NaN(1), NaN(1),96, 200,100, NaN(1),104,72, NaN(1), NaN(1), NaN(1), ...
## NaN(1), NaN(1), NaN(1), NaN(1), NaN(1),96, NaN(1), NaN(1)]

figure
plot( BerzeliusWeight, 'sk' )
set(gca,  "fontsize", 14);
grid on
xlabel('Z')
ylabel('Weight O=100')
figure_name_out=strcat('BerzeliusWeight','.png')
print('-dpng', '-r300', figure_name_out), pwd

figure
hold on
pB = plot( BerzeliusWeight, 'sb' )
pP = plot( ProutMass1815, 'sr' )
set(gca,  "fontsize", 14);
grid on
xlabel('Z')
ylabel('Weight')
figure_name_out=strcat('ProutBerzeliusWeight','.png')
print('-dpng', '-r300', figure_name_out), pwd
