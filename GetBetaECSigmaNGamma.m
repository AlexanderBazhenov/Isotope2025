%%%%%%%%%%%%%%%%%%%%%%%%%%%%    Sigma NGamma & Beta & EC   %%%%%%%%%%%%%%%%%%%%%%%%%%
% 2024-02-13
%GetSigmaNGamma
%
BetaIndA  = NaN(maxA, maxZ);

for indz = 1 : maxZ
  indn = find(BetaZind == indz);
  for jj = indn
##    jj
##    ABNind(jj) + indz <-> N + Z
        BetaIndA ( BetaNind(jj) + indz, indz ) = BetaInd(jj);
   end
end
ECIndA  = NaN(maxA, maxZ);
%
for indz = 1 : maxZ
  indn = find(ECZind == indz);
  for jj = indn
##    jj
##    ABNind(jj) + indz <-> N + Z
        ECIndA ( ECNind(jj) + indz, indz ) = ECInd(jj);
   end
end
%
SNGIndA  = NaN(maxA, maxZ);
%
for indz = 1 : maxZ
  indn = find(SNGZind == indz);
  for jj = indn
##    jj
##    ABNind(jj) + indz <-> N + Z
        SNGIndA ( SNGNind(jj) + indz, indz ) = SNGInd(jj);
   end
end
% 2025-10-22
maxA = 294
maxZ = 117
AlphaIndA  = NaN(maxA, maxZ);
%
for indz = 1 : maxZ
  indn = find(AlphaZind == indz);
  for jj = indn
##    jj
##    ABNind(jj) + indz <-> N + Z
        AlphaIndA ( AlphaNind(jj) + indz, indz ) = AlphaInd(jj);
   end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%    Alpha & Beta & EC   %%%%%%%%%%%%%%%%%%%%%%%%%%
