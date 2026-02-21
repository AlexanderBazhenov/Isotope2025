% 2026-02-12
% Mendeleev Weight
%
##Mendeleev Dmitri (1869). Versuche eines Systems der Elemente nach ihren
##Atomgewichten und chemischen Functionen / D. Mendeleev // Journal f¨ur
##Praktische Chemie.— 106: 251.
%
% Namearray = [,H,He,Li,Be,B,C,N,O,F,Ne,Na,Mg,Al,Si,P,S,Cl,Ar,K,Ca,Sc,Ti,V,Cr,Mn,
%Fe,Co,Ni,Cu,Zn,Ga,Ge,As,Se,Br,Kr,Rb,Sr,Y, Zr,Nb,Mo,Tc,Ru,Rh,Pd,Ag,Cd,In,Sn,Sb,
%Te,I,Xe,Cs,Ba,La,Ce,Pr,Nd,Pm,Sm,Eu,Gd,Tb,Dy,Ho,Er,Tm,Yb,Lu,Hf,Ta,W,Re,Os,Ir,Pt,
% Au,Hg,Tl,Pb,Bi,Po,At,Rn,Fr,Ra,Ac,Th,Pa,U,Np,Pu]

% H = 1

MendeleevWeight  = [,1, NaN(1),7,9.4,11,12,14,16,19,NaN(1),23,24,27.4,28,31,32,35.5,NaN(1), ...
39,40,NaN(1),50,51,52,55, 56,59,59,64.3,65.2,NaN(1), NaN(1),75,79.4,80,NaN(1),85.4,87.6,NaN(1), ...
90,94,96,NaN(1),104.4,104.4,106.6,108,112,NaN(1),118,122, 128,127,NaN(1),133,137,94,92, ...
NaN(1), NaN(1), NaN(1),NaN(1), NaN(1), NaN(1), NaN(1), 95,NaN(1), NaN(1), NaN(1), ...
 NaN(1), NaN(1), NaN(1), 182,186,NaN(1),199,198,197.4, 197,200, ...
204,207,210,NaN(1), NaN(1), NaN(1),NaN(1), NaN(1), NaN(1), 118,NaN(1),116,NaN(1), NaN(1)]


## [,1, NaN(1), NaN(1), NaN(1), NaN(1),6,14,16, NaN(1), NaN(1), NaN(1),12,8, NaN(1),14,16,36, NaN(1),40,20, NaN(1),144, NaN(1), ...
## 18,56, 28,28,28,32,32, NaN(1), NaN(1),48, NaN(1), NaN(1), NaN(1), NaN(1),48, ...
## NaN(1),  NaN(1),  NaN(1),48,  NaN(1), NaN(1),120,  NaN(1),108,  NaN(1),  NaN(1), ...
## 60,88, 32,124,  NaN(1), NaN(1), 70, NaN(1),92,NaN(1), NaN(1), NaN(1),NaN(1), ...
## NaN(1), NaN(1),NaN(1), NaN(1), NaN(1),NaN(1), NaN(1), NaN(1),NaN(1), NaN(1), NaN(1), 96, ...
## NaN(1), NaN(1), NaN(1),96, 200,100, NaN(1),104,72, NaN(1), NaN(1), NaN(1), ...
## NaN(1), NaN(1), NaN(1), NaN(1), NaN(1),96, NaN(1), NaN(1)]

figure
hM = plot( MendeleevWeight, 'sb' )
set(hM, 'markersize', 6)
set(hM, 'markerfacecolor', [0 0 1])
set(hM, 'markeredgecolor', [1 0 0])

xlabel('Z')
ylabel('Weight  H = 1')

set(gca,  "fontsize", 12);
grid on

xticksarray = [2, 10, 18, 21, 31, 32, 36, 43, 49, 54, 86]
xticks(xticksarray)
%yticks(81:1:93)


figure_name_out=strcat('MendeleevWeight','.png')
print('-dpng', '-r300', figure_name_out), pwd


xlim([72.5 80.5])
ylim([180 201])
xticksarray = [73:80]
xticks(xticksarray)
set(hM, 'markersize', 10)
set(gca,  "fontsize", 14);
grid on
figure_name_out=strcat('MendeleevWeightPlatinoid','.png')
print('-dpng', '-r300', figure_name_out), pwd

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
