% 2025-12-27
% Get Stable Isotopes
% File % Discovery Year.csv
% Export from https://www.nndc.bnl.gov/nudat3/
% length isotope csv

FILENAME = 'Discovery Year.csv'
% z,n,year
##1,0,1918
##2,0,1936
##1,1,1932
##2,1,1934
%
X = csvread (FILENAME);
X(1,:) = [];
X(end,:) = [];
%
NN = length(X)
% NN = 33380
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     Beta Index Percent  %%%%%%%%%%%%%%%%%%%%%%%%
%
Firstind = zeros(NN,1);
FirstindZ = zeros(NN,1);
FirstindN = zeros(NN,1);
%
FirstYY = [1898:1914]
%
for ii = 1:NN
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
       YY = X(ii,3);
% check YY in FirstYY
sFirstYY = 0;
if (YY >= min(FirstYY) ) & (YY <= max(FirstYY) )
   sFirstYY = 1;
 endif
     if (sFirstYY == 1)
       Firstind(ii) = 1;
       FirstindZ(ii) = X(ii,1);
       FirstindN(ii) = X(ii,2);
     endif
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
end

%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     Z N First    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure
hold on
for ii=1:length(Firstind)
  if ( Firstind(ii) ==1 )
   pFirst = plot(FirstindN(ii)+FirstindZ(ii), FirstindZ(ii),'sk');
 end
end
%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


