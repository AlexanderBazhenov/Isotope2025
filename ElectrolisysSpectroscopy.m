% 2026-04-01
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
NoStable = [ 1:92 ]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Электролиз  = Литий Фтор Натрий Магний Калий  Кальций Барий .
Electrolysis = [ 3 9 11 12 19 20 56 ]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% BC = Скандий Галлий Рубидий Иттербий  Цезий  Празеодим  Неодим    Самарий Европий
% Гадолиний  Диспрозий Гольмий   Тулий Таллий
Spectra = [ 21 31 37  39 55 59 60 62 63 64 66 67 69 81  ]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

AllElements  = [1:92]
NoStable = [ 1:92 ]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
NoStable = setdiff(NoStable, Electrolysis)
NoStable = setdiff(NoStable, Spectra)

LegendText = [ ', Электролиз, Спектральный анализ' ]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
scommaLegend = strfind(LegendText, ',')

gradeNo = length(scommaLegend)
step = fix(length(viridis)/ gradeNo /2)
ColorArrayAll = viridis;
ColorArray= zeros(gradeNo,3);
for ii = 1:gradeNo
  argcolor = fix(length(viridis) /2) + ii*step;
  ColorArray(ii,:) = ColorArrayAll(argcolor,:);
end

%%%%%%%%%%%%%%%%%%% Electrolysis Spectra %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure
hold on
for rr = 1:10
  for cc = 1:18
    yy = maxYY - rr*stepxx
    xx = cc*stepyy
    TF = isnan(NamearrayPlace(rr ,cc))
      if ( TF ~= 1 )
       textnow = num2str(NamearrayPlace(rr ,cc))
       h = rectangle('Position', [xx yy ww hh]);
       ColorNow = 1 * [1 1 1]
      ElemNow = NamearrayPlace(rr ,cc)
      % IC - Element isotope count
      if  ~isempty(Electrolysis(Electrolysis == ElemNow)) CO = 1 end;
      if  ~isempty(Spectra(Spectra == ElemNow)) CO = 2 end;
      if  ~isempty(NoStable(NoStable == ElemNow)) CO = 11 end;
      switch (CO)
        case 1
          ColorNow = ColorArray(1,:);
       case 2
          ColorNow = ColorArray(2,:);
##        case 3
##          ColorNow = ColorArray(3,:);
##        case 4
##          ColorNow = ColorArray(4,:);
##        case 5
##          ColorNow = ColorArray(5,:);
##       case 6
##          ColorNow = ColorArray(6,:);
##        case 7
##          ColorNow = ColorArray(7,:);
##        case 8
##          ColorNow = ColorArray(8,:);
##        case 9
##          ColorNow = ColorArray(9,:);
##        case 10
##          ColorNow = ColorArray(10,:);
        case 11
           ColorNow = [1 1 1];
      endswitch
       set (h, "FaceColor", ColorNow);
       %%%%%%%%%%%%%%%%%% Inside rectangle %%%%%%%%%%%%%%%%%
       ht = text(xx+stepxx/2, yy+3*stepyy/4, textnow);
       set (ht, "FontSize", 12);
       ii = NamearrayPlace(rr ,cc);
       strnow = Namearray( scomma(ii)+1:scomma(ii+1)-1);
       hn = text(xx+stepxx/2, yy+stepyy/4, strnow);
       set (hn, "FontSize", 12);
       %%%%%%%%%%%%%%%%%% /Inside rectangle %%%%%%%%%%%%%%%%
      end
  end
end


%%%%%%%%%%%%%%%%%% Legend %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



stepxx = 4*4
stepyy = 4*4
ww = 4*4
hh = 4*4

rr = 1
ccbase = 3
    yy = maxYY
    xx = ccbase*stepyy
    h = rectangle('Position', [xx yy ww hh/2]);
    ColorNow = [1 1 1]
    set (h, "FaceColor", ColorNow);
 %   ht = text(xx+stepxx/8, yy+3*stepyy/4, 'No Stable');
            ht = text(xx+stepxx/2, yy-1*stepyy/4, 'Other');
    set (ht, "FontSize", 12);
##    hn = text(xx+stepxx/8, yy+stepyy/4, 'Isotopes');
##    set (hn, "FontSize", 12);
for ii = 1:gradeNo-1
  cc = ccbase + ii
    yy = maxYY
    xx = cc*stepyy
    h = rectangle('Position', [xx yy ww hh/2]);
    ColorNow = ColorArray(ii,:);
    set (h, "FaceColor", ColorNow);
 %   ht = text(xx+stepxx/8, yy+3*stepyy/4, '1 (One)');
      strnow = LegendText( scommaLegend(ii)+1:scommaLegend(ii+1)-1);
        ht = text(xx+stepxx/2, yy-1*stepyy/4, strnow);
    set (ht, "FontSize", 12);
end
ii = gradeNo
  cc = ccbase + ii
      xx = cc*stepyy
   h = rectangle('Position', [xx yy ww hh/2]);
    ColorNow = ColorArray(ii,:);
    set (h, "FaceColor", ColorNow);
 %   ht = text(xx+stepxx/8, yy+3*stepyy/4, '1 (One)');
      strnow = LegendText( scommaLegend(ii)+1:end);
        ht = text(xx+stepxx/2, yy-1*stepyy/4, strnow);
    set (ht, "FontSize", 12);

 set(gca,  "fontsize", 14);
axis off
%%%%%%%%%%%%%%%%%% /Legend %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure_name_out=strcat('MendeleevTableElectrolysisSpectra','.png')
print('-dpng', '-r300', figure_name_out), pwd
