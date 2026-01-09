% 2025-12-30
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     Time Slices   %%%%%%%%%%%%%%%%%%%%%%%%
%
##YY1898ind = zeros(NN,1);
##YY1898indZ = zeros(NN,1);
##YY1898indN = zeros(NN,1);
##YY1899ind = zeros(NN,1);
##YY1899indZ = zeros(NN,1);
##YY1899indN = zeros(NN,1);
##%
##YY1900ind = zeros(NN,1);
##YY1900indZ = zeros(NN,1);
##YY1900indN = zeros(NN,1);
##YY1901ind = zeros(NN,1);
##YY1901indZ = zeros(NN,1);
##YY1901indN = zeros(NN,1);
##YY1902ind = zeros(NN,1);
##YY1902indZ = zeros(NN,1);
##YY1902indN = zeros(NN,1);
##YY1903ind = zeros(NN,1);
##YY1903indZ = zeros(NN,1);
##YY1903indN = zeros(NN,1);
##YY1904ind = zeros(NN,1);
##YY1904indZ = zeros(NN,1);
##YY1904indN = zeros(NN,1);
##YY1905ind = zeros(NN,1);
##YY1905indZ = zeros(NN,1);
##YY1905indN = zeros(NN,1);
##YY1906ind = zeros(NN,1);
##YY1906indZ = zeros(NN,1);
##YY1906indN = zeros(NN,1);
##YY1907ind = zeros(NN,1);
##YY1907indZ = zeros(NN,1);
##YY1907indN = zeros(NN,1);
##YY1908ind = zeros(NN,1);
##YY1908indZ = zeros(NN,1);
##YY1908indN = zeros(NN,1);
##YY1909ind = zeros(NN,1);
##YY1909indZ = zeros(NN,1);
##YY1909indN = zeros(NN,1);
##YY1910ind = zeros(NN,1);
##YY1910indZ = zeros(NN,1);
##YY1910indN = zeros(NN,1);
##YY1911ind = zeros(NN,1);
##YY1911indZ = zeros(NN,1);
##YY1911indN = zeros(NN,1);
##YY1912ind = zeros(NN,1);
##YY1912indZ = zeros(NN,1);
##YY1912indN = zeros(NN,1);
##YY1913ind = zeros(NN,1);
##YY1913indZ = zeros(NN,1);
##YY1913indN = zeros(NN,1);
##YY1914ind = zeros(NN,1);
##YY1914indZ = zeros(NN,1);
##YY1914indN = zeros(NN,1);
%
FirstYY = [1898:1914]
YYall = [FirstYY 2020]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     Time Slices   %%%%%%%%%%%%%%%%%%%%%%%%

gradeNo = length(YYall)
%step = fix(length(viridis)/ gradeNo /2)
step = fix(length(viridis)/ gradeNo )
ColorArrayAll = viridis;
ColorArray= zeros(gradeNo,3);
for ii = 1:gradeNo-1
%  argcolor = fix(length(viridis) /2) + ii*step;
    argcolor =  ii*step;
  ColorArray(ii,:) = ColorArrayAll(argcolor,:);
end
ColorArray(end,:) = ColorArrayAll(end,:)

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

figure_name_out=strcat("DiscoveryYearAZ",num2str(FirstYY(1)),'-',num2str(FirstYY(end)),'.png')
print('-dpng', '-r300', figure_name_out), pwd
