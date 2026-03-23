% 2026-03-23
% Balmer series Ritz compatibilty
% ADS data
##			Observed &  Unc. & Ritz & Unc. & Lower& Upper\\
##			Wavelength Vac (nm) & & Wavelength Vac (nm) & & Level& Level\\
##			656.279 &        	0.003 &    	656.2819   &    	0.0007  & 2 & 3\\
##			486.135   &     	0.005 &    	486.1333   &    	0.0003 & 2 & 4 \\
##			434.0472  &     	0.0006  &  	434.0471   &    	0.0003 & 2 & 5 \\
##			410.1734 &      	0.0006  &  	410.17415  &     	0.00024 & 2 & 6 \\

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

JaccardBalmerRitz = NaN(1,length(BalmerExp))
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
