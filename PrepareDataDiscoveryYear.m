% 2025-12-30
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     Time Slices   %%%%%%%%%%%%%%%%%%%%%%%%
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
YY1950ind = zeros(NN,1);
YY1950indZ = zeros(NN,1);
YY1950indN = zeros(NN,1);
%
FirstYY = [1898:1914]
YY1910 = [1915:1920]
YY1920 = [1921:1930]
YY1930 = [1931:1940]
YY1940 = [1941:1950]
YY1950 = [1951:2020]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     Time Slices   %%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Prepare Data %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
sYY1950 = 0;
 if (YY >= min(YY1950) ) & (YY <= max(YY1950) )
   sYY1950 = 1;
 endif
 % check YY in
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
 if (sYY1950 == 1)
       YY1950ind(ii) = 1;
       YY1950indZ(ii) = X(ii,1);
       YY1950indN(ii) = X(ii,2);
 endif
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% /Prepare Data %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
