% 2025-12-29
% DiscoveryYearLegend
% for GetDiscoveryYear.m
##FirstYY = [1898:1914]
##YY1910 = [1915:1920]
##YY1920 = [1921:1930]
##YY1930 = [1931:1940]
##YY1940 = [1941:1950]
##YY1950 = [1951:2020]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% plot Properties %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

gradeNo = 10
step = fix(length(viridis)/ gradeNo /2)
ColorArrayAll = viridis;
ColorArray= zeros(gradeNo,3);
for ii = 1:gradeNo
%  argcolor = fix(length(viridis) /2) + ii*step;
    argcolor =  ii*step;
  ColorArray(ii,:) = ColorArrayAll(argcolor,:);
end


%
stepxx = 4*4
stepyy = 4*4

% 2025-10-21
LinesTableMax=10
ElemPeriodChemical = 18
% Table Size
maxXX = LinesTableMax*stepxx
maxYY = 100 %ElemPeriodChemical*stepyy
%




figure
hold on
%%%%%%%%%%%%%%%%%%%% Color Legend %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ww = 4*4
hh = 4

ccbase = 1

ii = 1
  cc = ccbase + ii
    yy = maxYY
    xx = cc*stepyy
    h = rectangle('Position', [xx yy ww hh]);
    ColorNow = [1 0 0];
    set (h, "FaceColor", ColorNow);

for ii = 2:9
  cc = ccbase + ii
    yy = maxYY
    xx = cc*stepyy
    h = rectangle('Position', [xx yy ww hh]);
    ColorNow = ColorArray(ii,:);
    set (h, "FaceColor", ColorNow);
 %   ht = text(xx+stepxx/8, yy+3*stepyy/4, '1 (One)');
## switch ii
##   case 1   textnow = '1898:1914'
## case 2 textnow = '1915:1920'
##      case 3   textnow = '1921:1930'
##   case 4 textnow = '1931:1940'
##            case 5   textnow = '1941:1950'
##   case 6 textnow = '1951:2020'
## endswitch
##        ht = text(xx+stepxx/4, yy-1*stepyy/4, textnow);
##    set (ht, "FontSize", 12);
end

ii = 10
  cc = ccbase + ii
    yy = maxYY
    xx = cc*stepyy
    h = rectangle('Position', [xx yy ww hh]);
    ColorNow = [1 1 0];
    set (h, "FaceColor", ColorNow);
%%%%%%%%%%%%%%%%%%%% /Color Legend %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% Text Legend %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

for ii = 1:10
  cc = ccbase + ii
    yy = maxYY
    xx = cc*stepyy
##    h = rectangle('Position', [xx yy ww hh]);
##    ColorNow = ColorArray(ii,:);
##    set (h, "FaceColor", ColorNow);
 %   ht = text(xx+stepxx/8, yy+3*stepyy/4, '1 (One)');
 switch ii
   case 1   textnow = '1898:1914'
   case 2 textnow = '1915:1920'
   case 3   textnow = '1921:1930'
   case 4 textnow = '1931:1940'
   case 5   textnow = '1941:1950'
             case 6   textnow = ''
             case 7   textnow = ''
             case 8   textnow = ''
             case 9   textnow = ''
   case 10 textnow = '1951:2020'
 endswitch
        ht = text(xx+stepxx/4, yy-1*stepyy/4, textnow);
    set (ht, "FontSize", 12);
end

ii = -1
  cc = ccbase + ii
      xx = cc*stepyy
         ht = text(xx+stepxx/4, yy-1*stepyy/4, 'Год открытия изотопа');
    set (ht, "FontSize", 12);
xlim([0 300])
ylim([0 120])
%%%%%%%%%%%%%%%%%%%% /Text Legend %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%% plot Data

ww = 1
hh = 1

for ii=1:NN%length(Firstind)
if ( Firstind(ii) ==1 )
  xx = FirstindN(ii)+FirstindZ(ii);
  yy = FirstindZ(ii);
  h = rectangle('Position', [xx yy ww hh]);
    ColorNow = [1 0 0];
    set (h, "FaceColor", ColorNow);
        set (h, "EdgeColor", 0.9*[1 1 1]);
 end
end

for ii=1:NN%length(Firstind)
##if ( Firstind(ii) ==1 )
##  xx = FirstindN(ii)+FirstindZ(ii);
##  yy = FirstindZ(ii);
##  h = rectangle('Position', [xx yy ww hh]);
##    ColorNow = ColorArray(1,:);
##    set (h, "FaceColor", ColorNow);
## end
if ( YY1910ind(ii) ==1 )
    xx = YY1910indN(ii)+YY1910indZ(ii);
  yy = YY1910indZ(ii);
  h = rectangle('Position', [xx yy ww hh]);
    ColorNow = ColorArray(1,:);
    set (h, "FaceColor", ColorNow);
            set (h, "EdgeColor", 0.9*[1 1 1]);
end
if ( YY1920ind(ii) ==1 )
    xx = YY1920indN(ii)+YY1920indZ(ii);
  yy = YY1920indZ(ii);
  h = rectangle('Position', [xx yy ww hh]);
    ColorNow = ColorArray(4,:);
    set (h, "FaceColor", ColorNow);
            set (h, "EdgeColor", 0.9*[1 1 1]);
end
if ( YY1930ind(ii) ==1 )
    xx = YY1930indN(ii)+YY1930indZ(ii);
  yy = YY1930indZ(ii);
  h = rectangle('Position', [xx yy ww hh]);
    ColorNow = ColorArray(7,:);
    set (h, "FaceColor", ColorNow);
            set (h, "EdgeColor", 0.9*[1 1 1]);
end
if ( YY1940ind(ii) ==1 )
    xx = YY1940indN(ii)+YY1940indZ(ii);
  yy = YY1940indZ(ii);
  h = rectangle('Position', [xx yy ww hh]);
    ColorNow = ColorArray(9,:);
    set (h, "FaceColor", ColorNow);
            set (h, "EdgeColor", 0.9*[1 1 1]);
end
##if ( YY1950ind(ii) ==1 )
##    xx = YY1950indN(ii)+YY1950indZ(ii);
##  yy = YY1950indZ(ii);
##  h = rectangle('Position', [xx yy ww hh]);
##    ColorNow = ColorArray(10,:);
##    set (h, "FaceColor", ColorNow);
##end
end

for ii=1:NN%length(Firstind)
if ( YY1950ind(ii) ==1 )
    xx = YY1950indN(ii)+YY1950indZ(ii);
  yy = YY1950indZ(ii);
  h = rectangle('Position', [xx yy ww hh]);
    ColorNow = [1 1 0];
    set (h, "FaceColor", ColorNow);
                set (h, "EdgeColor", 0.9*[1 1 1]);
end
end
%
