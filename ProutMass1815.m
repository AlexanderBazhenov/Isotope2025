% 2026-02-10
% Prout mass
% Prout, W. On the Relation between the Specific Gravities of Bodies
% in their Gaseous State and the Weights of their Atoms (англ.) //
% Annals of Philosophy[англ.] : journal. — Vol. 6 , 1815. — P. 321 — 330.
%
% Namearray = [,H,He,Li,Be,B,C,N,O,F,Ne,Na,Mg,Al,Si,P,S,Cl,Ar,K,Ca,Sc,Ti,V,Cr,Mn,
%Fe,Co,Ni,Cu,Zn,Ga,Ge,As,Se,Br,Kr,Rb,Sr,Y, Zr,Nb,Mo,Tc,Ru,Rh,Pd,Ag,Cd,In,Sn,Sb,
%Te,I,Xe,Cs,Ba,La,Ce,Pr,Nd,Pm,Sm,Eu,Gd,Tb,Dy,Ho,Er,Tm,Yb,Lu,Hf,Ta,W,Re,Os,Ir,Pt,
% Au,Hg,Tl,Pb,Bi,Po,At,Rn,Fr,Ra,Ac,Th,Pa,U,Np,Pu]

%
%ProutMass1815  = [,1,He,Li,Be,B,6,14,16,F,Ne,Na,Mg,Al,Si,14,16,36,Ar,40,20,Sc,Ti,V,Cr,Mn, ...
%28,Co,Ni,Cu,32,Ga,Ge,As,Se,Br,Kr,Rb,Sr,Y, Zr,Nb,Mo,Tc,Ru,Rh,Pd,Ag,Cd,In,Sn,Sb, ...
%Te,124,Xe,Cs,Ba,La,Ce,Pr,Nd,Pm,Sm,Eu,Gd,Tb,Dy,Ho,Er,Tm,Yb,Lu,Hf,Ta,W,Re,Os,Ir,Pt, ...
% Au,Hg,Tl,Pb,Bi,Po,At,Rn,Fr,Ra,Ac,Th,Pa,U,Np,Pu]

 ProutMass1815  =  [,1, NaN(1), NaN(1), NaN(1), NaN(1),6,14,16, NaN(1), NaN(1), NaN(1),12,8, NaN(1),14,16,36, NaN(1),40,20, NaN(1),144, NaN(1), ...
 18,56, 28,28,28,32,32, NaN(1), NaN(1),48, NaN(1), NaN(1), NaN(1), NaN(1),48, ...
 NaN(1),  NaN(1),  NaN(1),48,  NaN(1), NaN(1),120,  NaN(1),108,  NaN(1),  NaN(1), ...
 60,88, 32,124,  NaN(1), NaN(1), 70, NaN(1),92,NaN(1), NaN(1), NaN(1),NaN(1), ...
 NaN(1), NaN(1),NaN(1), NaN(1), NaN(1),NaN(1), NaN(1), NaN(1),NaN(1), NaN(1), NaN(1), 96, ...
 NaN(1), NaN(1), NaN(1),96, 200,100, NaN(1),104,72, NaN(1), NaN(1), NaN(1), ...
 NaN(1), NaN(1), NaN(1), NaN(1), NaN(1),96, NaN(1), NaN(1)]

figure
plot( ProutMass1815, 'sk' )
set(gca,  "fontsize", 14);
grid on
xlabel('Z')
ylabel('Weight H=1')
figure_name_out=strcat('ProutWeight1815','.png')
print('-dpng', '-r300', figure_name_out), pwd
