%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Table Properties %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
stepxx = 4*4
stepyy = 4*4
ww = 4*4
hh = 4*4
%
% 2025-10-21
LinesTableMax=10
ElemPeriodChemical = 18
% Table Size
maxXX = LinesTableMax*stepxx
maxYY = ElemPeriodChemical*stepyy
%
scomma = strfind(Namearray, ',');

##cc = 4
##    yy = maxYY
##    xx = cc*stepyy
##    h = rectangle('Position', [xx yy ww hh/2]);
##    ColorNow = ColorVector(1)*ColorBasic;
##    set (h, "FaceColor", ColorNow);
## %   ht = text(xx+stepxx/8, yy+3*stepyy/4, '1 (One)');
##        ht = text(xx+stepxx/8, yy-1*stepyy/4, '1 (One)');
##    set (ht, "FontSize", 12);
####    hn = text(xx+stepxx/8, yy+stepyy/4, 'Isotope');
####    set (hn, "FontSize", 12);
##cc = 5
##     yy = maxYY
##    xx = cc*stepyy
##    h = rectangle('Position', [xx yy ww hh/2]);
##    ColorNow = ColorVector(2)*ColorBasic;
##    set (h, "FaceColor", ColorNow);
## %   ht = text(xx+stepxx/8, yy+3*stepyy/4, '2 (Two)');
##         ht = text(xx+stepxx/8, yy-1*stepyy/4, '2 (Two)');
##    set (ht, "FontSize", 12);
####    hn = text(xx+stepxx/8, yy+stepyy/4, 'Isotopes');
####    set (hn, "FontSize", 12);
##cc = 6
##    yy = maxYY
##    xx = cc*stepyy
##    h = rectangle('Position', [xx yy ww hh/2]);
##    ColorNow = ColorVector(3)*ColorBasic;
##    set (h, "FaceColor", ColorNow);
## %   ht = text(xx+stepxx/8, yy+3*stepyy/4, '3 (Three)');
##             ht = text(xx+stepxx/8, yy-1*stepyy/4, '3 (Three)');
##    set (ht, "FontSize", 12);
####    hn = text(xx+stepxx/8, yy+stepyy/4, 'Isotopes');
####    set (hn, "FontSize", 12);
##cc = 7
##     yy = maxYY
##    xx = cc*stepyy
##    h = rectangle('Position', [xx yy ww hh/2]);
##    ColorNow = ColorVector(4)*ColorBasic;
##    set (h, "FaceColor", ColorNow);
##    ht = text(xx+stepxx/8, yy-stepyy/4, '4 (Four)');
##    set (ht, "FontSize", 12);
####    hn = text(xx+stepxx/8, yy+stepyy/4, 'Isotopes');
####    set (hn, "FontSize", 12);
##cc = 8
##    yy = maxYY
##    xx = cc*stepyy
##    h = rectangle('Position', [xx yy ww hh/2]);
##    ColorNow = ColorVector(5)*ColorBasic;
##    set (h, "FaceColor", ColorNow);
##    ht = text(xx+stepxx/8, yy-stepyy/4, '5 (Five)');
##    set (ht, "FontSize", 12);
####    hn = text(xx+stepxx/8, yy+stepyy/4, 'Isotopes');
####    set (hn, "FontSize", 12);
##cc = 9
##     yy = maxYY
##    xx = cc*stepyy
##    h = rectangle('Position', [xx yy ww hh/2]);
##    ColorNow = ColorVector(6)*ColorBasic;
##    set (h, "FaceColor", ColorNow);
##    ht = text(xx+stepxx/8, yy-stepyy/4, '6 (Six)');
##    set (ht, "FontSize", 12);
##cc = 10
##    yy = maxYY
##    xx = cc*stepyy
##    h = rectangle('Position', [xx yy ww hh/2]);
##    ColorNow =ColorVector(7)*ColorBasic;
##    set (h, "FaceColor", ColorNow);
##    ht = text(xx+stepxx/8, yy-stepyy/4, '7 (Seven)');
##    set (ht, "FontSize", 12);
##cc = 11
##     yy = maxYY
##    xx = cc*stepyy
##    h = rectangle('Position', [xx yy ww hh/2]);
##    ColorNow = ColorVector(8)*ColorBasic;
##    set (h, "FaceColor", ColorNow);
##    ht = text(xx+stepxx/8, yy-stepyy/4, '8 (Eight)');
##    set (ht, "FontSize", 12);
##cc = 12
##    yy = maxYY
##    xx = cc*stepyy
##    h = rectangle('Position', [xx yy ww hh/2]);
##    ColorNow = ColorVector(9)*ColorBasic;
##    set (h, "FaceColor", ColorNow);
##    ht = text(xx+stepxx/8, yy-stepyy/4, '9 (Nine)');
##    set (ht, "FontSize", 12);
##cc = 13
##    yy = maxYY
##    xx = cc*stepyy
##    h = rectangle('Position', [xx yy ww hh/2]);
##    ColorNow = ColorVector(10)*ColorBasic;
##    set (h, "FaceColor", ColorNow);
##    ht = text(xx+stepxx/8, yy-stepyy/4, '10 (Ten)');
##    set (ht, "FontSize", 12);
