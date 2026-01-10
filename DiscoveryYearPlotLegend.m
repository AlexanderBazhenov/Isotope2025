% 2025-12-30
%





figure
hold on

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Plot Data %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
DiscoveryYearPlotData
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Plot Data %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% Color Legend %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
xlim([0 300])
ylim([0 130])

ww = 4*4
hh = 2

stepxx = ww
stepyy = 4

##maxXX = LinesTableMax*stepxx
maxYY = 120 %ElemPeriodChemical*stepyy

ccbase = 1

for ii = 1:gradeNo
  cc = ccbase + ii-1
    yy = maxYY
    xx = cc*stepxx
    h = rectangle('Position', [xx yy ww-1 hh]);
    ColorNow = ColorArray(ii,:);
    set (h, "FaceColor", ColorNow);
%
   textnow = num2str(YYall(ii));
   ht = text(xx+stepxx/8, yy+5*stepyy/4, textnow);
   set (ht, "FontSize", 12);
end

set(gca, 'Fontsize', 14)
box on
grid on
xlabel('A')
ylabel('Z')

axis on
xTICKVAL = [206:2:240]
xticks(xTICKVAL)


figure_name_out=strcat("DiscoveryYearAZ",num2str(FirstYY(1)),'-',num2str(FirstYY(end)),'.png')
print('-dpng', '-r300', figure_name_out), pwd

%%%%%%%%%%%%%%%%%%%% Color Legend %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
xlim([205.5 242])
ylim([81 94])

ccbase = 206

for ii = 1:gradeNo-1
  cc = ccbase + ii-1
    yy = 93
    xx = cc
    h = rectangle('Position', [xx yy 3 hh]);
    ColorNow = ColorArray(ii,:);
    set (h, "FaceColor", ColorNow);
%
   textnow = num2str(YYall(ii));
   ht = text(xx+1/4, yy-1/2, textnow);
   set (ht, "FontSize", 12);
end

ii = gradeNo
  cc = ccbase + ii-1
    yy = 93
    xx = cc
    h = rectangle('Position', [xx yy 3 hh]);
    ColorNow = ColorArray(ii,:);
    set (h, "FaceColor", ColorNow);
%
   textnow = num2str(YYall(ii));
   ht = text(xx+1/4, yy-1/2, textnow);
   set (ht, "FontSize", 12);

dy = 0%.5
dx = 0%.5
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

pAc = text(241, 91+dy, 'Pa')
set (pAc, "fontsize", 14);
pAc = text(241, 89+dy, 'Ac')
set (pAc, "fontsize", 14);
pFr = text(241, 87+dy, 'Fr')
set (pFr, "fontsize", 14);
pAt = text(241, 85+dy, 'At')
set (pAt, "fontsize", 14);
pBi = text(241, 83+dy, 'Bi')
set (pBi, "fontsize", 14);



figure_name_out=strcat("DiscoveryYearAZ",num2str(FirstYY(1)),'-',num2str(FirstYY(end)),'zoom.png')
print('-dpng', '-r300', figure_name_out), pwd
