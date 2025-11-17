% 2024-01-01
% 2025-11-17
% Get Stable Isotopes
% File DecayModeAbudance.csv
% Export from https://www.nndc.bnl.gov/nudat3/
% length isotope csv
NN = 6657
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     Beta Index Percent  %%%%%%%%%%%%%%%%%%%%%%%%
%
StableZind2 = zeros(length(N),1);
StableNind2 = zeros(length(N),1);
StableInd2 = zeros(length(N),1);
UnknownZind2 = zeros(length(N),1);
UnknownNind2 = zeros(length(N),1);
UnknownInd2 = zeros(length(N),1);
%
FID = fopen ("DecayModeAbudance.csv", "r")
##z,n,name,decayModes,abundance
##0,1,Neutron,B- = 100.00,NaN
##1,0,1H,NaN,99.9885%
##1,1,2H,NaN,0.0115%
##1,2,3H,B- = 100.00,NaN
% Head
ii = 1
ss  = fgets(FID)
% z,n,name,decayModes,abundance
ii =2
% 0,1,Neutron,B- = 100.00,NaN
% 1,0,1H,NaN,99.9885%
% ss = '1,0,1H,NaN,99.9885%'
ss  = fgets(FID)
% ii = 3
% ii = 37
% ss = '3,10,13Li,NaN,NaN'
while (ii < NN-2)
  ss = fgets(FID);
  ii = ii + 1;
       scomma = strfind(ss, ',');
       Stablestr = ss(scomma(3)+1:scomma(4)-1);
       Abstr = ss(scomma(4)+1:end);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
       sStable = strfind(Stablestr , 'NaN');
% check Unknown
sPercent = 0;
 sAb = strfind(Abstr, '%');
 sAbEnd = Abstr(end);
 if (sAb > 0)
   sPercent = 1;
 endif
% ii = 3
% 1,0,1H,NaN,99.9885%
 % get z n
##    if (sUnknown > 0)
##%     if (sStable > 0)
##       UnknownInd2(ii) = 1;
##       UnknownZind2(ii) = Z(ii-2);
##       UnknownNind2(ii) = N(ii-2);
##     endif
%    if ( (sStable > 0)  & (sUnknown < 1))
     if (sPercent == 1)
       StableInd2(ii) = 1;
       StableZind2(ii) = Z(ii-2);
       StableNind2(ii) = N(ii-2);
     endif
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
end
fclose(FID);
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     Z N Stable    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure
hold on
for ii=1:length(StableInd2)
  if ( StableInd2(ii) ==1 )
   pStable = plot(StableNind2(ii)+StableZind2(ii), StableZind2(ii),'sk');
 end
end
%
StableZind = StableZind2 ;
StableNind = StableNind2;
StableInd = StableInd2;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



