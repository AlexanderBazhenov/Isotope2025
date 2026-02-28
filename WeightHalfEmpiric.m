% 2026-02-27
% Fermi 1951

AtomicW = [1:240]

W23 = AtomicW.^(2/3)
for aa = 1:length(AtomicW)
  WAA(aa) = 1/(1.98 + 0.015*W23(aa));
  ZW(aa) = aa*WAA(aa);
end


figure
plot(ZW,AtomicW)

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


