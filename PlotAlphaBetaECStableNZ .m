% 2025-11-02
%%%%%%%%%%%%%%%%%%%%%%% Alpha & Beta & EC + Stable NZ %%%%%%%%%%%%%%%%%%%%%%%%%%
figure
hold on
Zmin = 1
Zmax = 117
Nmin = 1
Nmax = 177
[XN, YN] = meshgrid (Nmin:Nmax, Zmin:Zmax);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
pB = pcolor(XN,YN,+5*BetaIndNZ(Nmin:Nmax, Zmin:Zmax)')
set(pB, 'linewidth', 0.5)
set(pB, 'edgecolor', [1 1 1])
pE = pcolor(XN,YN,-5*ECIndNZ(Nmin:Nmax, Zmin:Zmax)')
set(pE, 'linewidth', 0.5)
set(pE, 'edgecolor', [1 1 1])
pA = pcolor(XN,YN,10*AlphaIndNZ(Nmin:Nmax, Zmin:Zmax)')
set(pA, 'linewidth', 0.5)
set(pA, 'edgecolor', 0.1*[1 1 1])
%
for ii=1:length(StableInd)
  if ( StableInd(ii) ==1 )
%   pStable = plot(StableNind(ii)+StableZind(ii), StableZind(ii),'sr');
 %     pStable = plot(StableNind(ii), StableZind(ii),'sr');
            pStable = plot(StableNind(ii)+0.5, StableZind(ii)+0.5,'sr');
            set(pStable, "markerfacecolor", 0.9*[1 0 0])
            set(pStable, "markeredgecolor", 0* [1 1 0])
            set(pStable, "markersize", 6)
 end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
xlim([1 175])
ylim([1 110])
set(gca, 'Fontsize', 18)
xlabel('N, число нейтронов')
ylabel('Z, электрический заряд')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
titlestr = strcat("Основные моды ядерных превращений")
ht = title(titlestr)
set(ht, 'Fontweight', 'normal')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
filestr = strcat("Alpha", " Beta-decay", " Electron Conversion", " Stable","NZ")
figure_name_out=strcat(filestr,'.png')
print('-dpng', '-r300', figure_name_out), pwd

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
xlim([1 175])
ylim([1 110])
% Plot Magic NZ
PlotMagicNZ

filestr = strcat("Alpha", " Beta-decay", " Electron Conversion", " Stable","NZ","Magic")
figure_name_out=strcat(filestr,'.png')
print('-dpng', '-r300', figure_name_out), pwd
