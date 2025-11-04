%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Ind -> Ind NZ
% 2025-11-01
BetaIndNZ  = NaN(maxN, maxZ);
for indz = 1 : maxZ
  indn = find(BetaZind == indz);
  for jj = indn
##    jj
##    ABNind(jj) + indz <-> N + Z
        BetaIndNZ ( BetaNind(jj) , indz ) = BetaInd(jj);
   end
end
ECIndNZ  = NaN(maxN, maxZ);
%
for indz = 1 : maxZ
  indn = find(ECZind == indz);
  for jj = indn
##    jj
##    ABNind(jj) + indz <-> N + Z
        ECIndNZ( ECNind(jj), indz ) = ECInd(jj);
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
%
AlphaIndNZ  = NaN(maxN, maxZ);
%
for indz = 1 : maxZ
  indn = find(AlphaZind == indz);
  for jj = indn
##    jj
##    ABNind(jj) + indz <-> N + Z
        AlphaIndNZ( AlphaNind(jj), indz ) = AlphaInd(jj);
   end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
