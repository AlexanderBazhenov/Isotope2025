% 2026-02-28
% Richards 1914

% Namearray = [,H,He,Li,Be,B,C,N,O,F,Ne,Na,Mg,Al,Si,P,S,Cl,Ar,K,Ca,Sc,Ti,V,Cr,Mn,
%Fe,Co,Ni,Cu,Zn,Ga,Ge,As,Se,Br,Kr,Rb,Sr,Y, Zr,Nb,Mo,Tc,Ru,Rh,Pd,Ag,Cd,In,Sn,Sb,
%Te,I,Xe,Cs,Ba,La,Ce,Pr,Nd,Pm,Sm,Eu,Gd,Tb,Dy,Ho,Er,Tm,Yb,Lu,Hf,Ta,W,Re,Os,Ir,Pt,
% Au,Hg,Tl,Pb,Bi,Po,At,Rn,Fr,Ra,Ac,Th,Pa,U,Np,Pu]

RichardsWeight  = [,1.008, 4.0,6.94, 9.1, 11.0,12.0,14.01,16.00,19.0,20.0,23.00,24.32,27.1,28.3,31.0,32.07,35.46,39.9, ...
39.1,40.086,44.1,48.1,51.2,52.01,54.93, 55.85,58.97,58.68,63.57,65.37,69.9, 72.5,74.96,79.2,79.916,83.0,85.45,87.62,89.0, ...
90.6,93.5,96.0,NaN(1),101.7,102.9,106.7,107.88,112.42,114.8,119.0,119.9, 127.5,126.93, 130.7,132.81,137.37,139.0,140.25, ...
140.6, 144.3, NaN(1), 150.4, 152.0, 157.3, 159.2, 162.5, NaN(1), 167.4, NaN(1), ...
 172., 174., NaN(1), 181.0,184.0,NaN(1),190.9,193.1,195.0, 197.2,200.0, ...
204.0, 207.09, 208.0, NaN(1), NaN(1), NaN(1),NaN(1), 226.4, NaN(1), 232.42,NaN(1),238.5,NaN(1), NaN(1)]

figure
plot( RichardsWeight, 'sk' )
set(gca,  "fontsize", 14);
grid on
xlabel('Z')
ylabel('Weight H=1')
figure_name_out=strcat('RichardsWeight','.png')
print('-dpng', '-r300', figure_name_out), pwd
