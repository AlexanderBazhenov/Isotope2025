% 2025-12-08
% GetStable2

figure
hold on
[X, Y] = meshgrid (1:maxA, 1:maxZ);
%surf(X,Y,AbudanceA')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
pN = pcolor(X,Y,NEnergyA'), set(pN, 'linewidth', 0.5), set(pN, 'edgecolor', [1 1 1])
pP = pcolor(X,Y,PEnergyA'), set(pP, 'linewidth', 0.5), set(pP, 'edgecolor', [1 1 1])
pB = pcolor(X,Y,BetaEnergyA'), set(pB, 'linewidth', 0.5), set(pB, 'edgecolor', [1 1 1])
pE = pcolor(X,Y,ECEnergyA'), set(pE, 'linewidth', 0.5), set(pE, 'edgecolor', [1 1 1])
pA = pcolor(X,Y,AlphaEnergyA'), set(pA, 'linewidth', 0.5), set(pA, 'edgecolor', [1 1 1])
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
pN = pcolor(X,Y,NEnergyA'), set(pN, 'linewidth', 0.5), set(pN, 'edgecolor', [1 1 1])
pP = pcolor(X,Y,PEnergyA'), set(pP, 'linewidth', 0.5), set(pP, 'edgecolor', [1 1 1])
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
pA = pcolor(X,Y,AlphaEnergyA'), set(pA, 'linewidth', 0.5), set(pA, 'edgecolor', [1 1 1])
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
pB = pcolor(X,Y,BetaEnergyA'), set(pB, 'linewidth', 0.5), set(pB, 'edgecolor', [1 1 1])
pE = pcolor(X,Y,ECEnergyA'), set(pE, 'linewidth', 0.5), set(pE, 'edgecolor', [1 1 1])
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
hc=colorbar('southoutside')
pos = get(hc, 'Position')
% [left, bottom, width, height]
pos(2)=0.18
pos(3) = 0.775; % New width (e.g., 3% of figure width)
pos(4) = 0.02;  % New height (e.g., 50% of figure height)
set(hc, 'Position', pos);
set(hc, 'fontsize', 14)
caxis([0 10000])
xlabel('A')
ylabel('Z')
set(gca, 'fontsize', 14)
% GetStable2
##
##for ii=1:length(StableInd)
##  if ( StableInd(ii) ==1 )
##   pStable = plot(StableNind(ii)+StableZind(ii)+0.5, StableZind(ii),'sw');
## %     pStable = plot(StableNind(ii), StableZind(ii),'sr');
##%            pStable = plot(StableNind(ii)+0.5, StableZind(ii)+0.5,'sr');
##            set(pStable, "markerfacecolor", 0.9*[1 0 0])
##            set(pStable, "markeredgecolor", 0* [1 1 0])
##            set(pStable, "markersize", 4)
## end
##end
##
##ylim([0 121])
box on

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
##hbox = rectangle("Position", [0,0,300,120] )
##set(hbox, 'EdgeColor', 0.1*[1 1 1])
##set(hbox, 'linewidth', 1)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure_name_out=strcat("DecayPositiveALL",'.png')
figure_name_out=strcat("DecayPositivePN",'.png')
figure_name_out=strcat("DecayPositiveAlpha",'.png')
figure_name_out=strcat("DecayPositiveBetaEC",'.png')
print('-dpng', '-r300', figure_name_out), pwd
