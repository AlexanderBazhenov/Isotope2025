% 2024
%%%%%%%%%%%%%%%%%%%%%%%%%%%%     4n Thorium series   %%%%%%%%%%%%%%%%%%%%%%%%%%%
% Data
% ThoriumSeriesNZ
% 2024-02-3
% CalculateThoriumSeries

% 4n
PlotThoriumSeries
INarrayTh = INarray
AarrayTh = Narray + Zarray
ZarrayTh =  Zarray
% 4n+2
U238SeriesNZ
INarrayU238= INarray
AarrayU238 = Narray + Zarray
ZarrayU238 =  Zarray
% 4n+3
U235SeriesNZ
INarrayU235= INarray
AarrayU235 = Narray + Zarray
ZarrayU235 =  Zarray

%%%%%%%%%%%%%%%%%%%%%% PLOT %%%%%%%%%%%%%%%%%%%%%%%%
figure
hold on
[X, Y] = meshgrid (1:maxA, 1:maxZ);
dy = 0%.5
dx = 0%.5
pTh = plot(AarrayTh+dx, ZarrayTh+dy, '-r')
pTh = plot(AarrayTh+dx, ZarrayTh+dy, 'sr')
set(pTh, 'markersize', 12)
set(pTh, "MarkerFaceColor", RoyalMail)
pU238 = plot(AarrayU238 +dx, ZarrayU238 +dy, '-b')
pU238 = plot(AarrayU238 +dx, ZarrayU238 +dy, 'sb')
set(pU238, 'markersize', 12)
set(pU238, "MarkerFaceColor", OxfordBlue)
pU235 = plot(AarrayU235 +dx, ZarrayU235 +dy, '-g')
pU235 = plot(AarrayU235 +dx, ZarrayU235 +dy, 'sg')
set(pU235, 'markersize', 12)
set(pU235, "MarkerFaceColor", Pantone)
%
AarrayPB = [ 206 207 208]
ZarrayPB = [ 82 82 82 ]
pPB= plot(AarrayPB+dx, ZarrayPB+dy, 'sk')
set(pPB, 'markersize', 12)
set(pPB, "MarkerFaceColor", [0 0 0])
%
xlim([205 240])
ylim([81 93])
xticksarray = union(206:2:240, 207:208)
xticks(xticksarray)
yticks(82:2:92)
grid on
box on
colorbar off
xlabel('\it A')
ylabel('\it Z')
set(gca, 'fontsize', 14)
%
pU = text(241, 92+dy, 'U')
set (pU, "color", "red");
set(pU, 'fontweight', 'bold')
set (pU, "fontsize", 14);
pT = text(241, 90+dy, 'Th')
set (pT, "fontsize", 14);
set (pT, "color", "red");
set(pT, 'fontweight', 'bold')
pP = text(241, 82+dy, 'Pb')
set (pP, "fontsize", 14);
set (pP, "color", [0 0.4 0.7]);
set(pP, 'fontweight', 'bold')
%
pRa = text(241, 88+dy, 'Ra')
set (pRa, "fontsize", 14);
pRn = text(241, 86+dy, 'Rn')
set (pRn, "fontsize", 14);
pPo = text(241, 84+dy, 'Po')
set (pPo, "fontsize", 14);
##pHg= text(241, 80+dy, 'Hg')
##set (pHg, "fontsize", 14);

pAc = text(242, 91+dy, 'Pa')
set (pAc, "fontsize", 14);
pAc = text(242, 89+dy, 'Ac')
set (pAc, "fontsize", 14);
pFr = text(242, 87+dy, 'Fr')
set (pFr, "fontsize", 14);
pAt = text(242, 85+dy, 'At')
set (pAt, "fontsize", 14);
pBi = text(242, 83+dy, 'Bi')
set (pBi, "fontsize", 14);

lgd123 = legend([pTh  pU238 pU235], ...
  {'^{232}Th - ^{208}Pb, ряд тория', '^{238}U  - ^{206}Pb, ряд радия', ....
  '^{235}U  - ^{207}Pb, ряд актиния'})
set(lgd123, 'location', 'north')
set(lgd123, 'fontsize', 14)

p238 = text(238, 92+0.5, '^{238}U')
set (p238, "fontsize", 14);
set (p238, "color", OxfordBlue);
p235 = text(235, 92+0.5, '^{235}U')
set (p235, "fontsize", 14);
set (p235, "color", Pantone);
p232 = text(232, 90-0.5, '^{232}Th')
set (p232, "fontsize", 14);
set (p232, "color", RoyalMail);
p206 = text(206-0.5, 82-0.5, '^{206}Pb')
set (p206, "fontsize", 14);
p207 = text(207-0.25, 82-0.5, '^{207}Pb')
set (p207, "fontsize", 14);
p208 = text(208, 82-0.5, '^{208}Pb')
set (p208, "fontsize", 14);

figure_name_out=strcat("Lead206207208SeriesAZ",'.png')
print('-dpng', '-r300', figure_name_out), pwd

