% 2024-01-01
% Get Stable Isotopes
% File DecayModeAbudance.csv
% Export from https://www.nndc.bnl.gov/nudat3/
% length isotope csv
NN = 6657
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     Beta Index Percent  %%%%%%%%%%%%%%%%%%%%%%%%
%
StableZind = zeros(length(N),1);
StableNind = zeros(length(N),1);
StableInd = zeros(length(N),1);
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
sUnknown = 0;
 sAb = strfind(Abstr, 'NaN');
 if (sAb == 1)
   sUnknown = 1;
 endif
% ii = 3
% 1,0,1H,NaN,99.9885%
 % get z n
     if ( (sStable > 0)  & (sUnknown < 1))
       StableInd(ii) = 1;
       StableZind(ii) = Z(ii-2);
       StableNind(ii) = N(ii-2);
     endif
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
end
fclose(FID);
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     Z N A    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure
hold on
for ii=1:length(StableInd)
  if ( StableInd(ii) ==1 )
   pStable = plot(StableNind(ii)+StableZind(ii), StableZind(ii),'sk');
 end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%       Abudance A - Z    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
StableA = NaN(maxA, maxZ);

for indz = 1 : maxZ
  indn = find(StableZind == indz);
  for jj = indn
##    jj
##    ABNind(jj) + indz <-> N + Z
         StableA  ( StableNind(jj) + indz, indz ) = StableInd(jj);
   end
end

StableNZ = NaN(maxN, maxZ);

for indz = 2 : maxZ
  indn = find(StableZind == indz);
  for jj = indn
##    jj
##    ABNind(jj) + indz <-> N + Z
         StableNZ  ( StableNind(jj), indz ) = StableInd(jj);
   end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure
[X, Y] = meshgrid (1:maxA, 1:maxZ);
%surf(X,Y,AbudanceA')
pS = pcolor(X,Y,StableA')
set(pS, 'linewidth', 0.05)
set(pS, 'edgecolor', 'white')

