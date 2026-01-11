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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure_name_out=strcat("DiscoveryYearAZ",num2str(FirstYY(1)),'-',num2str(FirstYY(end)),'.png')
print('-dpng', '-r300', figure_name_out), pwd
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%% Color Legend Zoom %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
xlim([205.5 242])
ylim([81 94])

ccbase = 206

for ii = 1:gradeNo-1
  cc = ccbase + ii-1
    yy = 93
    xx = cc
    h = rectangle('Position', [xx yy 1 hh]);
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
    h = rectangle('Position', [xx yy 1 hh]);
    ColorNow = ColorArray(ii,:);
    set (h, "FaceColor", ColorNow);
%
   textnow = num2str(YYall(ii));
   ht = text(xx+1/4, yy-1/2, textnow);
   set (ht, "FontSize", 12);
%%%%%%%%%%%%%%%%%%%% /Color Legend Zoom %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ActinoidNames
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure_name_out=strcat("DiscoveryYearAZ",num2str(FirstYY(1)),'-',num2str(FirstYY(end)),'zoom.png')
print('-dpng', '-r300', figure_name_out), pwd
