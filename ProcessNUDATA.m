
% 2024-01-31
% 2025-10-03
% 2025-10-22
%
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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

ZZ = 29
figure
hold on
plotTripleZECEbeta
scomma = strfind(Namearray, ',');
NameZ = Namearray( scomma(ZZ)+1:scomma(ZZ+1)-1);
figure_name_out=strcat(NameZ, " with neighbors","1d",'.png')
print('-dpng', '-r300', figure_name_out), pwd
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

ZZ = 50
figure
hold on
plotTripleZECEbeta
scomma = strfind(Namearray, ',');
NameZ = Namearray( scomma(ZZ)+1:scomma(ZZ+1)-1);
figure_name_out=strcat(NameZ, " with neighbors","1d",'.png')
print('-dpng', '-r300', figure_name_out), pwd

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


ZZ = 54
figure
hold on
plotTripleZECEbeta
scomma = strfind(Namearray, ',');
NameZ = Namearray( scomma(ZZ)+1:scomma(ZZ+1)-1);
figure_name_out=strcat(NameZ, " with neighbors","1d",'.png')
figure_name_out=strcat(NameZ, '.png')
print('-dpng', '-r300', figure_name_out), pwd

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure
hold on
[X, Y] = meshgrid (1:maxA, 1:maxZ);
%surf(X,Y,AbudanceA')
pN = pcolor(X,Y,NEnergyA')
pB = pcolor(X,Y,BetaEnergyA')
pE = pcolor(X,Y,ECEnergyA')
pA = pcolor(X,Y,AlphaEnergyA')
colorbar('southoutside')
xlabel('A')
ylabel('Z')
set(gca, 'fontsize', 14)
figure_name_out=strcat("DecayPositive",'.png')
print('-dpng', '-r300', figure_name_out), pwd

%%%%%%%%%%%%%%%%%%%%%%%%%%%%    Sigma NGamma & Beta & EC   %%%%%%%%%%%%%%%%%%%%%%%%%%
% 2024-02-13
GetBetaECSigmaNGamma
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%    Alpha & Beta & EC   %%%%%%%%%%%%%%%%%%%%%%%%%%
% 2025-10-22
%
figure
hold on
Zmin = 1
Zmax = 117
Amin = 1
Amax = 294
[Xmm, Ymm] = meshgrid (Amin:Amax, Zmin:Zmax);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%pA = pcolor(Xmm,Ymm,10*AlphaIndA(Amin:Amax, Zmin:Zmax)')
pA = pcolor(Xmm,Ymm,10*AlphaEnergyA(Amin:Amax, Zmin:Zmax)')
set(pA, 'linewidth', 0.5)
set(pA, 'linewidth', 4)
set(pA, 'edgecolor', 0.7*[1 1 1])
pB = pcolor(Xmm,Ymm,-10*BetaIndA(Amin:Amax, Zmin:Zmax)')
set(pB, 'linewidth', 0.5)
set(pB, 'edgecolor', [1 1 1])
pE = pcolor(Xmm,Ymm,-5*ECIndA(Amin:Amax, Zmin:Zmax)')
set(pE, 'linewidth', 0.5)
set(pE, 'edgecolor', [1 1 1])
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
xlim([1 265])
ylim([1 110])
titlestr = strcat("Alpha", " Beta-decay", " Electron Conversion")
t =title(titlestr)
set(t, 'Fontsize', 14)
set(gca, 'Fontsize', 14)
figure_name_out=strcat(titlestr,'.png')
print('-dpng', '-r300', figure_name_out), pwd

%%%%%%%%%%%%%%%%%%%%%%%%% s-Process Termination  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 2025-10-23
sProcessTermination
%%%%%%%%%%%%%%%%%%%%%%%%%%%%    Sigma NGamma   %%%%%%%%%%%%%%%%%%%%%%%%%%
%
figure
hold on
Zmin = 1
Zmax = 117
Amin = 1
Amax = 294
[Xmm, Ymm] = meshgrid (Amin:Amax, Zmin:Zmax);
pSNG = pcolor(Xmm,Ymm, log(100000*SNGA(Amin:Amax, Zmin:Zmax))')
set(pSNG, 'linewidth', 1)
set(pSNG, 'edgecolor', 0.9*[1 1 1])

hc = colorbar('location', 'southoutside')
set(hc, 'FontSize', 16);
grid on
set(gca, 'Fontsize', 16)

xlim([1 265])
ylim([1 110])

xlabel('A')
ylabel('Z')

titlestr = strcat("Сечения радиационного захвата нейтронов. Логарифмическая шкала")
titlestrfile = strcat("(N,Gamma) cross-section")
ht = title(titlestr)
set(ht, 'Fontweight', 'normal')
figure_name_out=strcat(titlestrfile,'.png')
print('-dpng', '-r300', figure_name_out), pwd


figure
hold on
Zmin = 1
Zmax = 117
Amin = 1
Amax = 294
[Xmm, Ymm] = meshgrid (Amin:Amax, Zmin:Zmax);
%pSNG = pcolor(Xmm,Ymm, SNGA(Amin:Amax, Zmin:Zmax)')
pSNG = image(Xmm,Ymm, SNGA(Amin:Amax, Zmin:Zmax)')
set(pSNG, 'linewidth', 1)
set(pSNG, 'edgecolor', 0.9*[1 1 1])

caxis([0 100])
hc = colorbar('location', 'southoutside')
set(hc, 'FontSize', 16);
grid on
set(gca, 'Fontsize', 16)

xlim([1 265])
ylim([1 110])

xlabel('A')
ylabel('Z')

titlestr = strcat("Сечения радиационного захвата нейтронов")
titlestrfile = strcat("(N,Gamma) cross-section")
ht = title(titlestr)
set(ht, 'Fontweight', 'normal')
figure_name_out=strcat(titlestrfile,'.png')
print('-dpng', '-r300', figure_name_out), pwd

%%%%%%%%%%%%%%%%%%%%%%%%%%%%    Sigma NGamma Fe+  %%%%%%%%%%%%%%%%%%%%%%%%%%
%
figure
hold on
Zmin = 25
Zmax = 30
Amin = 53
Amax = 67
[Xmm, Ymm] = meshgrid (Amin:Amax, Zmin:Zmax);
pSNG = pcolor(Xmm,Ymm, SNGA(Amin:Amax, Zmin:Zmax)')
set(pSNG, 'linewidth', 1)
set(pSNG, 'edgecolor', 0.9*[1 1 1])

hc = colorbar('location', 'southoutside')
set(hc, 'FontSize', 16);
grid on
set(gca, 'Fontsize', 16)

xlim([53 67])
ylim([24 30])

xlabel('A')
ylabel('Z')

%
hFe = text(53, 26, 'Fe')
set(hFe, 'Position', [53.3, 26.5] )
set(hFe, 'Fontsize', 24)
%
hCo = text(53, 28, 'Co')
set(hCo, 'Position', [53.3, 27.5] )
set(hCo, 'Fontsize', 24)
%
hNi = text(53, 27, 'Ni')
set(hNi, 'Position', [53.3, 28.5] )
set(hNi, 'Fontsize', 24)
%
hCu = text(53, 29, 'Cu')
set(hCu, 'Position', [53.3, 29.5] )
set(hCu, 'Fontsize', 24)
%
axis off
text(54.3, 24.5, '54', 'Fontsize', 24)
text(56.3, 24.5, '56', 'Fontsize', 24)
text(58.3, 24.5, '58', 'Fontsize', 24)
text(60.3, 24.5, '60', 'Fontsize', 24)
text(60.3, 24.5, '60', 'Fontsize', 24)
text(62.3, 24.5, '62', 'Fontsize', 24)
text(64.3, 24.5, '64', 'Fontsize', 24)
text(66.3, 24.5, 'A', 'Fontsize', 24)

% Set custom tick positions and labels
##ax = gca
##ax.XTick = [54.5, 55.5, 56.5, 57.5, 58.5];
##ax.XTickLabel = {'54', '55', '56', '57', '58'};



titlestr = strcat("Сечения радиационного захвата нейтронов в области Fe")
titlestrfile = strcat("(N,Gamma) cross-section Fe")
ht = title(titlestr)
set(ht, 'Fontweight', 'normal')
figure_name_out=strcat(titlestrfile,'.png')
print('-dpng', '-r300', figure_name_out), pwd
%%%%%%%%%%%%%%%%%%%%%%%%%%%%    Sigma NGamma Fe+  %%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%    Sigma NGamma & Beta & EC   %%%%%%%%%%%%%%%%%%%%%%%%%%
%
figure
hold on
Zmin = 1
Zmax = 117
Amin = 1
Amax = 294
[Xmm, Ymm] = meshgrid (Amin:Amax, Zmin:Zmax);
pB = pcolor(Xmm,Ymm,-10*BetaIndA(Amin:Amax, Zmin:Zmax)')
set(pB, 'linewidth', 0.5)
set(pB, 'edgecolor', [1 1 1])
pE = pcolor(Xmm,Ymm,-5*ECIndA(Amin:Amax, Zmin:Zmax)')
set(pE, 'linewidth', 0.5)
set(pE, 'edgecolor', [1 1 1])
pSNG = pcolor(Xmm,Ymm,10*SNGIndA(Amin:Amax, Zmin:Zmax)')
set(pSNG, 'linewidth', 0.5)
set(pSNG, 'edgecolor', [1 1 1])
xlim([1 265])
ylim([1 110])
titlestr = strcat("(N,Gamma)", " Beta-decay", " Electron Conversion")
title(titlestr)
figure_name_out=strcat(titlestr,'.png')
print('-dpng', '-r300', figure_name_out), pwd

figure
hold on
Zmin = 81
Zmax = 85
Amin = 203
Amax = 211
%
[Xmm, Ymm] = meshgrid (Amin:Amax, Zmin:Zmax);
pSNG = surf(Xmm,Ymm, 10*SNGIndA(Amin:Amax, Zmin:Zmax)')
xlim([203 211])
ylim([81 85])
%
pB = pcolor(Xmm,Ymm,-5*BetaIndA(Amin:Amax, Zmin:Zmax)')
pE = pcolor(Xmm,Ymm,-10*ECIndA(Amin:Amax, Zmin:Zmax)')
set(pB, 'color', [1 0 0])

##lgd123 = legend([pSNG  pB pE], ...
##  {'n\gamma', '\beta^{-}', 'EC'})
##set(lgd123, 'location', 'north')
##set(lgd123, 'fontsize', 14)
%
axis('equal')
grid on
xlabel('A')
ylabel('Z')
set(gca, 'fontsize', 14)
set(gca, 'color', 0.9*[1 1 1])
colorbar('location', 'southoutside')
%surf(X,Y,AbudanceA')
titlestr = strcat("Sigma NGamma:"," Z=",num2str(Zmin),"-",num2str(Zmax)," A=",num2str(Amin),"-",num2str(Amax))
title(titlestr)
figure_name_out=strcat("Sigma NGamma"," Z=",num2str(Zmin),"-",num2str(Zmax)," A=",num2str(Amin),"-",num2str(Amax),'.png')
print('-dpng', '-r300', figure_name_out), pwd


xlim([203 211])
ylim([81 85])

%%%%%%%%%%%%%%%%%%%%%%%   Alpha & Beta & EC + Stable  %%%%%%%%%%%%%%%%%%%%%%%%%%
% 2025-11-01
GetQAlphaPN

figure
hold on
Zmin = 1
Zmax = 117
Amin = 1
Amax = 294
[Xmm, Ymm] = meshgrid (Amin:Amax, Zmin:Zmax);
pB = pcolor(Xmm,Ymm,+5*BetaIndA(Amin:Amax, Zmin:Zmax)')
set(pB, 'linewidth', 0.5)
set(pB, 'edgecolor', [1 1 1])
pE = pcolor(Xmm,Ymm,-5*ECIndA(Amin:Amax, Zmin:Zmax)')
set(pE, 'linewidth', 0.5)
set(pE, 'edgecolor', [1 1 1])
pA = pcolor(Xmm,Ymm,10*AlphaIndA(Amin:Amax, Zmin:Zmax)')
set(pA, 'linewidth', 0.5)
set(pA, 'edgecolor', 0.1*[1 1 1])
%
for ii=1:length(StableInd)
  if ( StableInd(ii) ==1 )
%   pStable = plot(StableNind(ii)+StableZind(ii), StableZind(ii),'sr');
 %     pStable = plot(StableNind(ii), StableZind(ii),'sr');
            pStable = plot(StableNind(ii)+StableZind(ii)+0.5, StableZind(ii)+0.5,'sr');
            set(pStable, "markerfacecolor", 0.9*[1 0 0])
            set(pStable, "markeredgecolor", 0* [1 1 0])
            set(pStable, "markersize", 6)
 end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ppB = plot(300, 5, 'sb'), set(ppB, 'color', 0.5*[0 1 1]), set(ppB, "markerfacecolor", 0.7*[0 1 1])
ppE = plot(300, 10, 'sg'), set(ppE, 'color', 0.5*[0 0 1]), set(ppE, "markerfacecolor", 0.5*[0 0 1])
ppA = plot(300, 15, 'sy'), set(ppA, 'color', 1*[1 1 0]), set(ppA, "markerfacecolor", 0.9*[1 1 0])
ppS = plot(300, 20, 'sr'), set(ppS, 'color', 1*[1 0 0]), set(ppS, "markerfacecolor", 0.9*[1 0 0])
%
lgdZ = legend([ppE  ppB ppA ppS],{"Электронная конверсия", "Бета-минус распад", ...
"Альфа-распад", "Стабильные ядра"});
set(lgdZ, 'fontsize', 18)
set(lgdZ, 'location', 'North')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
xlim([1 265])
ylim([1 110])
set(gca, 'Fontsize', 18)
xlabel('A, атомный вес')
ylabel('Z, электрический заряд')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
titlestr = strcat("Основные моды ядерных превращений")
ht = title(titlestr)
set(ht, 'Fontweight', 'normal')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
filestr = strcat("Alpha", " Beta-decay", " Electron Conversion", " Stable")
figure_name_out=strcat(filestr,'.png')
print('-dpng', '-r300', figure_name_out), pwd
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Ind -> Ind NZ
% 2025-11-01
Ind2IndNZ
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
PlotAlphaBetaECStableNZ


