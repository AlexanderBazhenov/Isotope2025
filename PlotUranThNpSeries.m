% 2024
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
% 4n+1
Np237SeriesNZ
INarrayNp= INarray
AarrayNp = Narray + Zarray
ZarrayNp =  Zarray

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
%
pU238 = plot(AarrayU238 +dx, ZarrayU238 +dy, '-b')
pU238 = plot(AarrayU238 +dx, ZarrayU238 +dy, 'sb')
set(pU238, 'markersize', 12)
set(pU238, "MarkerFaceColor", OxfordBlue)
%
pU235 = plot(AarrayU235 +dx, ZarrayU235 +dy, '-g')
pU235 = plot(AarrayU235 +dx, ZarrayU235 +dy, 'sg')
set(pU235, 'markersize', 12)
set(pU235, "MarkerFaceColor", Pantone)
%
pNp = plot(AarrayNp +dx, ZarrayNp +dy, '-k')
pNp = plot(AarrayNp +dx, ZarrayNp +dy, 'sk')
set(pNp, 'markersize', 12)
set(pNp, "MarkerFaceColor", 0.5*[1 1 1])
% Pb+Tl
AarrayPB = [ 205 206 207 208]
ZarrayPB = [ 81 82 82 82 ]
pPB= plot(AarrayPB+dx, ZarrayPB+dy, 'sk')
set(pPB, 'markersize', 12)
set(pPB, "MarkerFaceColor", [0 0 0])
%
xlim([204 240])
ylim([80 94])
xticksarray = union(206:2:240, 205:208)
xticks(xticksarray)
yticks(81:1:93)
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
pTl = text(242, 81+dy, 'Tl')
set (pTl, "fontsize", 14);
set (pTl, "color", [0 0.4 0.7]);
set(pTl, 'fontweight', 'bold')
%
pRa = text(241, 88+dy, 'Ra')
set (pRa, "fontsize", 14);
pRn = text(241, 86+dy, 'Rn')
set (pRn, "fontsize", 14);
pPo = text(241, 84+dy, 'Po')
set (pPo, "fontsize", 14);
##pHg= text(241, 80+dy, 'Hg')
##set (pHg, "fontsize", 14);


%
pN = text(242, 93+dy, 'Np')
set (pN, "color", "red");
set(pN, 'fontweight', 'bold')
set (pN, "fontsize", 14);
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

lgd123 = legend([pTh  pU238 pU235 pNp], ...
  {'^{232}Th - ^{208}Pb, ряд тория', '^{238}U  - ^{206}Pb, ряд радия', ....
  '^{235}U  - ^{207}Pb, ряд актиния', '^{237}Np  - ^{205}Tl, ряд нептуния'})
set(lgd123, 'location', 'north')
set(lgd123, 'fontsize', 14)

p238 = text(238, 92+0.5, '^{238}U')
set (p238, "fontsize", 14);
set (p238, "color", OxfordBlue);
p235 = text(235, 92+0.5, '^{235}U')
set (p235, "fontsize", 14);
set (p235, "color", 0.5*[0 1 0] );
p232 = text(232, 90-0.5, '^{232}Th')
set (p232, "fontsize", 14);
set (p232, "color", RoyalMail);
p237 = text(237, 93+0.5, '^{237}Np')
set (p237, "fontsize", 14);
set (p237, "color", 0.3*[1 1 1]);
%
p205 = text(205-0.5, 81-0.5, '^{205}Tl')
set (p205, "fontsize", 14);
p206 = text(206-0.5, 82-0.5, '^{206}Pb')
set (p206, "fontsize", 14);
p207 = text(207-0.25, 82-0.5, '^{207}Pb')
set (p207, "fontsize", 14);
p208 = text(208, 82-0.5, '^{208}Pb')
set (p208, "fontsize", 14);

figure_name_out=strcat("Lead206207208Tl205SeriesAZ",'.png')
print('-dpng', '-r300', figure_name_out), pwd

