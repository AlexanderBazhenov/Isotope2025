% 2026-03-23
% Balmer series Ritz compatibilty
% ADS data
##			Observed   Unc.  Ritz  Unc.  Lower Upper;
##			Wavelength Vac (nm)   Wavelength Vac (nm)   Level Level;
##			656.279         	0.003     	656.2819       	0.0007   2  3;
##			486.135        	0.005     	486.1333       	0.0003  2  4 ;
##			434.0472       	0.0006    	434.0471       	0.0003  2  5 ;
##			410.1734       	0.0006    	410.17415       	0.00024  2  6 ;

BalmerData =  [
656.279        	0.003    	656.2819      	0.0007  2 3;
			486.135       	0.005    	486.1333      	0.0003 2 4;
			434.0472      	0.0006   	434.0471      	0.0003 2 5;
			410.1734      	0.0006   	410.17415      	0.00024 2 6
]

##BalmerExp = BalmerData(:,1)
##BalmerExpErrors =  BalmerData(:,2)
##BalmerExpInt = midrad(BalmerExp, BalmerExpErrors)
##
##BalmerRitz = BalmerData(:,3)
##BalmerRitzErrors =  BalmerData(:,4)
##BalmerRitzInt = midrad(BalmerRitz, BalmerRitzErrors)


clear J1, J2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

JaccardBalmerRitz = NaN(1,length(BalmerData(:,1)))
J1ind = NaN(1,length(BalmerExp))
J2ind = NaN(1,length(BalmerExp))
for ii = 1:length(BalmerExp)
  JaccardBalmerRitz(ii) = NaN(1)
x = BalmerData(ii,1)
y = BalmerData(ii,3)
  zinf = min(x-BalmerData(ii,2), y-BalmerData(ii,4))
  zsup = max(x+BalmerData(ii,2), y+BalmerData(ii,4))
    J2 = -zinf+zsup
    J2ind(ii) = J2
   zinf = max(x-BalmerData(ii,2), y-BalmerData(ii,4))
  zsup = min(x+BalmerData(ii,2), y+BalmerData(ii,4))
    J1  = -zinf+zsup
    J1ind(ii) = J1
    JaccardBalmerRitz(ii) = J1/J2
end
%

% Lyman series Ritz compatibilty
% ADS data
##			Observed   Unc.  Ritz  Unc.  Lower Upper;
##			Wavelength Vac (nm)   Wavelength Vac (nm)   Level Level;
##			121.56701      0.00021   	121.56701      0.00015   1  2 ;
##			102.5728       .0003    &	102.57220   &	0.00003    1  3;
##			97.2517       	0.0014    	97.253650     	0.000011   1  4 ;
##			94.9742       	0.0004    	94.974287     	0.000005  1  5 ;
##			93.7814       	0.0014    	93.780331     	0.000004  1  6 ;
##			93.0751      	0.0014    	93.0748142     0.0000020    1  7 ;
##			92.6249       	0.0014    	92.6225605     0.0000013    1  8;
##			92.3148       	0.0014    	92.3150275    	0.0000009     1  9 ;
##			92.0947       	0.0014    	92.0963006    	0.0000007   1  10 ;
##			91.9342      	0.0014    	91.9351334    	0.0000005   1  11;
##			91.8125       	0.0013    	91.8129300    	0.0000004  1  12;
LymanData =  [
			121.56701      0.00021   	121.56701      0.00015   1  2 ;
			102.5728       .0003    	102.57220   	0.00003    1  3;
			97.2517       	0.0014    	97.253650     	0.000011   1  4 ;
			94.9742       	0.0004    	94.974287     	0.000005  1  5 ;
			93.7814       	0.0014    	93.780331     	0.000004  1  6 ;
			93.0751      	0.0014    	93.0748142     0.0000020    1  7 ;
			92.6249       	0.0014    	92.6225605     0.0000013    1  8;
			92.3148       	0.0014    	92.3150275    	0.0000009     1  9 ;
			92.0947       	0.0014    	92.0963006    	0.0000007   1  10 ;
			91.9342      	0.0014    	91.9351334    	0.0000005   1  11;
			91.8125       	0.0013    	91.8129300    	0.0000004  1  12;
]

JaccardLymanRitz = NaN(1,length(LymanData(:,1)))
J1ind = NaN(1,length(LymanData(:,1)))
J2ind = NaN(1,length(LymanData(:,1)))
for ii = 1:length(LymanData(:,1))
  JaccardLymanRitz(ii) = NaN(1)
x = LymanData(ii,1)
y = LymanData(ii,3)
  zinf = min(x-LymanData(ii,2), y-LymanData(ii,4))
  zsup = max(x+LymanData(ii,2), y+LymanData(ii,4))
    J2 = -zinf+zsup
    J2ind(ii) = J2
   zinf = max(x-LymanData(ii,2), y-LymanData(ii,4))
  zsup = min(x+LymanData(ii,2), y+LymanData(ii,4))
    J1  = -zinf+zsup
    J1ind(ii) = J1
    JaccardLymanRitz(ii) = J1/J2
end



