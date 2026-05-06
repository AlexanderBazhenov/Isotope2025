% 2026-05-06
% Elements before Becquerel

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
AllElements  = [1:92]
% Tc Pm Yb Lu  Hf Re
NoStable = [  43 61 70 71 72 75 84:92 ]
% Origin RA
Origin = [ 90 92 ]
%
Normal = setdiff(AllElements, NoStable)
%
NoStable = setdiff(NoStable, Origin)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% PLOT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 2022-09-01
% Colors_special
OxfordBlue = [0, .33, .71]
RoyalMail = 4.58*[0.218, .032, 0.042]
Pantone = 3*[0.128, 0.140, 0.036]
%

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

%%%%%%%%%%%%%%%%%%% Color Basic Plot %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
      if  ~isempty(Normal(Normal == ElemNow)) CO = 1 end;
%      if  ~isempty(RA(RA == ElemNow)) CO = 2 end;
      if  ~isempty(Origin(Origin == ElemNow)) CO = 3 end;
 %     if  ~isempty(Isotopes4(Isotopes4 == ElemNow)) CO = 4 end;
%      if  ~isempty(Isotopes5(Isotopes5 == ElemNow)) CO = 5 end;
%      if  ~isempty(Isotopes6(Isotopes6 == ElemNow)) CO = 6 end;
##      if  ~isempty(Isotopes7(Isotopes7 == ElemNow)) CO = 7 end;
##      if  ~isempty(Isotopes8(Isotopes8 == ElemNow)) CO = 8 end;
##      if  ~isempty(Isotopes9(Isotopes9 == ElemNow)) CO = 9 end;
##      if  ~isempty(Isotopes10(Isotopes10 == ElemNow)) CO = 10 end;
      if  ~isempty(NoStable(NoStable == ElemNow)) CO = 11 end;
      switch (CO)
        case 1
          ColorNow = Pantone;
##        case 2
##          ColorNow = RoyalMail;
        case 3
          ColorNow = OxfordBlue;
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
%%%%%%%%%%%%%%%%%%% /Color Basic Plot %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
set(gca,  "fontsize", 14);
axis off

figure_name_out=strcat('MendeleevTableBecquerel','.png')
print('-dpng', '-r300', figure_name_out), pwd
