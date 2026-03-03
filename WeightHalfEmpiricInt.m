% 2026-03-01
% Fermi 1951

AtomicW = [1:240]

W23 = AtomicW.^(2/3)
for aa = 1:length(AtomicW)
  WAA(aa) = 1/(1.98 + 0.015*W23(aa));
  ZW(aa) = aa*WAA(aa);
end
%
figure
plot(ZW,AtomicW, '.')

rZW = round(ZW)
figure
plot(rZW,AtomicW, '.')

nZW = unique(rZW)

pkg load interval

dirki = 'd:\Users\Public\Documents\ST\2026\T\Isotopes\kinterval-0.0.1'
addpath(dirki)

##AtomicWint = NaN(max(rZW),1)
##clear AtomicWint

for ii = 1:max(rZW)
zii = find(rZW == ii);
AtomicWint (ii) = infsup(min(zii),max(zii));
end

infAtomicWint = inf(AtomicWint)
supAtomicWint = sup(AtomicWint)
widAtomicWint = wid(AtomicWint)

figure
hold on
hzinf = plot(nZW,infAtomicWint, '-b')
hzsup = plot(nZW,supAtomicWint, '-b')
hM = plot( RichardsWeight, 'sb' )
set(hM, 'markersize', 6)
set(hM, 'markerfacecolor', [0 0 1])
set(hM, 'markeredgecolor', [1 0 0])

lgd12 = legend([hM hzinf hzsup ], ...
  {'Richards data', 'Half-empiric formula inf', 'Half-empiric formula sup'})
set(lgd12, 'location', 'north')
set(lgd12, 'fontsize', 16)

xlabel('Z')
ylabel('Weight  H = 1')

set(gca,  "fontsize", 16);
grid on

figure_name_out=strcat('RichardsWeightHalfEmpiricalInt','.png')
print('-dpng', '-r300', figure_name_out), pwd
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dA = mid(AtomicWint) - RichardsWeight
figure
hold on
hM = plot( dA, 'sb' )
set(hM, 'markersize', 6)
set(hM, 'markerfacecolor', [0 0 1])
set(hM, 'markeredgecolor', [1 0 0])
xlabel('Z')
ylabel('\Delta A, H = 1')
##xx = [0 max(rZW)]
##yy = [1 1]
##pUp = plot(xx, yy,  '--k')
##yy = [-1 -1]
##pLo = plot(xx, yy,  '--k')
%
pradUp = plot(widAtomicWint(1:end-1)/2, '-b')
pradLo = plot(-widAtomicWint(1:end-1)/2, '-b')

set(gca,  "fontsize", 16);
grid on
xlim([1 max(rZW)])

lgd12 = legend([hM pradUp pradLo], ...
  {'Delta A', 'Half-empiric formula rad', 'Half-empiric formula rad'})
set(lgd12, 'location', 'north')
set(lgd12, 'fontsize', 16)

figure_name_out=strcat('DeltaRichardsWeightHalfEmpirical','.png')
print('-dpng', '-r300', figure_name_out), pwd

%%%%%%%%%%%%%%%%%%%%%%%%%     Ji    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

RichardsErrors = 0.01
RichardsWeightInt = midrad(RichardsWeight, RichardsErrors)

##dirki = 'e:\Users\Public\Documents\ST\2024\T\kinterval-0.0.1'
##addpath(dirki)


Jaccard = NaN(1,max(rZW))
for ii = 1:max(rZW)
  Jaccard(ii) = NaN(1)
x = kinterval(inf(RichardsWeightInt(ii)),sup(RichardsWeightInt(ii)))
if ~isnan(inf(x))
    y = kinterval(inf(AtomicWint(ii)),sup(AtomicWint(ii)))
    J1 = wedge(x,y)
    J2 = vee(x,y)
    Jaccard(ii) = wid(J1)/wid(J2)
end
end



find(Jaccard > 0)

Jaccardx = NaN(1,max(rZW))
for ii = 1:max(rZW)
x = kinterval(inf(RichardsWeightInt(ii)),sup(RichardsWeightInt(ii)))
if ~isnan(inf(x))
    y = kinterval(inf(AtomicWint(ii)),sup(AtomicWint(ii)))
    J1 = wedge(x,y)
    J2 = x
    Jaccardx(ii) = wid(J1)/wid(J2)
end
end

find(Jaccardx > 0)



figure
hold on
%plot(Jaccard, 'ob')
hJ = plot( Jaccard, 'sb' )
set(hJ, 'markersize', 10)
set(hJ, 'markerfacecolor', [0 0 1])
set(hJ, 'markeredgecolor', [1 0 0])
xlabel('Z')
ylabel('Ji')
figure_name_out=strcat('RichardsWeightHalfEmpiricalJi',' Err=', num2str(RichardsErrors),'.png')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure
hold on
%plot(Jaccard, 'ob')
hJ = plot( Jaccardx, 'sb' )
set(hJ, 'markersize', 8)
set(hJ, 'markerfacecolor', [0 0 1])
set(hJ, 'markeredgecolor', [1 0 0])
xlabel('Z')
ylabel('Jix')
ylim([-250 2])

figure_name_out=strcat('RichardsWeightHalfEmpiricalJix',' Err=', num2str(RichardsErrors),'.png')

set(gca,  "fontsize", 16);
grid on


print('-dpng', '-r300', figure_name_out), pwd

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MendeleevWeight.m
% MendeleevWeight (1:94)

figure
hold on
hM = plot( MendeleevWeight, 'sb' )
set(hM, 'markersize', 6)
set(hM, 'markerfacecolor', [0 0 1])
set(hM, 'markeredgecolor', [1 0 0])
hZ = plot(ZW,AtomicW, '.k')

lgd12 = legend([hM hZ], ...
  {'1869 data', 'Half-empiric formula'})
set(lgd12, 'location', 'north')
set(lgd12, 'fontsize', 16)


xlabel('Z')
ylabel('Weight  H = 1')

set(gca,  "fontsize", 16);
grid on


figure_name_out=strcat('MendeleevWeightHalfEmpirical','.png')
print('-dpng', '-r300', figure_name_out), pwd

xticksarray = [2, 10, 18, 21, 31, 32, 36, 43, 49, 54, 86]
xticks(xticksarray)
%yticks(81:1:93)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure
hold on
hM = plot( RichardsWeight, 'sb' )
set(hM, 'markersize', 6)
set(hM, 'markerfacecolor', [0 0 1])
set(hM, 'markeredgecolor', [1 0 0])
hZ = plot(ZW,AtomicW, '.k')

lgd12 = legend([hM hZ], ...
  {'Richards data', 'Half-empiric formula'})
set(lgd12, 'location', 'north')
set(lgd12, 'fontsize', 16)

figure_name_out=strcat('RichardsWeightHalfEmpirical','.png')
print('-dpng', '-r300', figure_name_out), pwd

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



figure
hold on
hM = plot( BerzeliusWeight, 'sb' )
set(hM, 'markersize', 6)
set(hM, 'markerfacecolor', [0 0 1])
set(hM, 'markeredgecolor', [1 0 0])
hZ = plot(ZW,AtomicW, '.k')

lgd12 = legend([hM hZ], ...
  {'BerzeliusWeight data', 'Half-empiric formula'})
set(lgd12, 'location', 'north')
set(lgd12, 'fontsize', 16)

figure_name_out=strcat('BerzeliusWeightHalfEmpirical','.png')
print('-dpng', '-r300', figure_name_out), pwd

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure
hold on
hM = plot( ProutMass1815, 'sb' )
set(hM, 'markersize', 6)
set(hM, 'markerfacecolor', [0 0 1])
set(hM, 'markeredgecolor', [1 0 0])
hZ = plot(ZW,AtomicW, '.k')

lgd12 = legend([hM hZ], ...
  {'Prout data', 'Half-empiric formula'})
set(lgd12, 'location', 'north')
set(lgd12, 'fontsize', 16)

figure_name_out=strcat('ProutWeightHalfEmpirical','.png')
print('-dpng', '-r300', figure_name_out), pwd

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure
hold on
hP = plot( ProutMass1815, 'sb' )
set(hP, 'markersize', 6)
set(hP, 'markerfacecolor', [0 0 0])
set(hP, 'markeredgecolor', [0 0 0])

hB = plot( BerzeliusWeight, 'sb' )
set(hB, 'markersize', 6)
set(hB, 'markerfacecolor', 0.5*[1 1 1])
set(hB, 'markeredgecolor', 0.5*[1 1 1])

hM = plot( MendeleevWeight, 'sb' )
set(hM, 'markersize', 6)
set(hM, 'markerfacecolor', [0 1 1])
set(hM, 'markeredgecolor', [0 1 1])

hR = plot( RichardsWeight, 'sb' )
set(hR, 'markersize', 6)
set(hR, 'markerfacecolor', 1*[1 1 1])
set(hR, 'markeredgecolor', 0.5*[1 0 0])

hZ = plot(ZW,AtomicW, '.k')

xlabel('Z')
ylabel('Weight  H = 1')
set(gca,  "fontsize", 16);
grid on

ylim([0 450])

lgd1234 = legend([hP hB hM hR hZ], ...
  {'Prout', 'Berzelius', 'Mendeleev', 'Richards', 'Half-empiric formula'})
set(lgd1234, 'location', 'north')
set(lgd1234, 'fontsize', 16)

figure_name_out=strcat('ProutRichardsHalfEmpirical','.png')
print('-dpng', '-r300', figure_name_out), pwd
