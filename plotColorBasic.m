% 2025-12-23
%%%%%%%%%%%%%%%%%%% Plot Color Basic  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ColorBasic = [ 0 1 1 ]
ColorVector = [0.9 0.75 0.7 0.65 0.6 0.55 0.5 .45 .4 .35]
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
      if  ~isempty(Isotopes1(Isotopes1 == ElemNow)) CO = 1 end;
      if  ~isempty(Isotopes2(Isotopes2 == ElemNow)) CO = 2 end;
      if  ~isempty(Isotopes3(Isotopes3 == ElemNow)) CO = 3 end;
      if  ~isempty(Isotopes4(Isotopes4 == ElemNow)) CO = 4 end;
      if  ~isempty(Isotopes5(Isotopes5 == ElemNow)) CO = 5 end;
      if  ~isempty(Isotopes6(Isotopes6 == ElemNow)) CO = 6 end;
      if  ~isempty(Isotopes7(Isotopes7 == ElemNow)) CO = 7 end;
      if  ~isempty(Isotopes8(Isotopes8 == ElemNow)) CO = 8 end;
      if  ~isempty(Isotopes9(Isotopes9 == ElemNow)) CO = 9 end;
      if  ~isempty(Isotopes10(Isotopes10 == ElemNow)) CO = 10 end;
      if  ~isempty(NoStable(NoStable == ElemNow)) CO = 11 end;
      switch (CO)
        case 1
          ColorNow = ColorVector(1)*ColorBasic;
        case 2
          ColorNow = ColorVector(2)*ColorBasic;
        case 3
          ColorNow = ColorVector(3)*ColorBasic;
        case 4
          ColorNow = ColorVector(4)*ColorBasic;
        case 5
          ColorNow = ColorVector(5)*ColorBasic;
        case 6
          ColorNow = ColorVector(6)*ColorBasic;
        case 7
          ColorNow = ColorVector(7)*ColorBasic;
        case 8
          ColorNow = ColorVector(8)*ColorBasic;
        case 9
          ColorNow = ColorVector(9)*ColorBasic;
        case 10
          ColorNow = ColorVector(10)*ColorBasic;
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
%%%%%%%%%%%%%%%%%%% /Color Basic Plot %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
