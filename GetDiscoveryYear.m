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
YY1910ind = zeros(NN,1);
YY1910indZ = zeros(NN,1);
YY1910indN = zeros(NN,1);
YY1920ind = zeros(NN,1);
YY1920indZ = zeros(NN,1);
YY1920indN = zeros(NN,1);
YY1930ind = zeros(NN,1);
YY1930indZ = zeros(NN,1);
YY1930indN = zeros(NN,1);
YY1940ind = zeros(NN,1);
YY1940indZ = zeros(NN,1);
YY1940indN = zeros(NN,1);
%
FirstYY = [1898:1914]
YY1910 = [1915:1920]
YY1920 = [1921:1930]
YY1930 = [1931:1940]
YY1940 = [1941:1950]
%
for ii = 1:NN
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
YY = X(ii,3);
% check YY in FirstYY
sFirstYY = 0;
if (YY >= min(FirstYY) ) & (YY <= max(FirstYY) )
   sFirstYY = 1;
 endif
sYY1910 = 0;
 if (YY >= min(YY1910) ) & (YY <= max(YY1910) )
   sYY1910 = 1;
 endif
 sYY1920 = 0;
 if (YY >= min(YY1920) ) & (YY <= max(YY1920) )
   sYY1920 = 1;
 endif
  sYY1930 = 0;
 if (YY >= min(YY1930) ) & (YY <= max(YY1930) )
   sYY1930 = 1;
 endif
   sYY1940 = 0;
 if (YY >= min(YY1940) ) & (YY <= max(YY1940) )
   sYY1940 = 1;
 endif
if (sFirstYY == 1)
       Firstind(ii) = 1;
       FirstindZ(ii) = X(ii,1);
       FirstindN(ii) = X(ii,2);
endif
 if (sYY1910 == 1)
       YY1910ind(ii) = 1;
       YY1910indZ(ii) = X(ii,1);
       YY1910indN(ii) = X(ii,2);
 endif
 if (sYY1920 == 1)
       YY1920ind(ii) = 1;
       YY1920indZ(ii) = X(ii,1);
       YY1920indN(ii) = X(ii,2);
 endif
  if (sYY1930 == 1)
       YY1930ind(ii) = 1;
       YY1930indZ(ii) = X(ii,1);
       YY1930indN(ii) = X(ii,2);
 endif
   if (sYY1940 == 1)
       YY1940ind(ii) = 1;
       YY1940indZ(ii) = X(ii,1);
       YY1940indN(ii) = X(ii,2);
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
if ( YY1910ind(ii) ==1 )
   pYY1910 = plot(YY1910indN(ii)+YY1910indZ(ii), YY1910indZ(ii),'sb');
 end
if ( YY1920ind(ii) ==1 )
   pYY1920 = plot(YY1920indN(ii)+YY1920indZ(ii), YY1920indZ(ii),'sg');
 end
if ( YY1930ind(ii) ==1 )
   pYY1930 = plot(YY1930indN(ii)+YY1930indZ(ii), YY1930indZ(ii),'sr');
 end
 if ( YY1940ind(ii) ==1 )
   pYY1940 = plot(YY1940indN(ii)+YY1940indZ(ii), YY1940indZ(ii),'.k');
 end
end
%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


