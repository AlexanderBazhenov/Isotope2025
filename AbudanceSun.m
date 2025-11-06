% 2025-1027
% Katharina Lodders	Solar System Abundances and Condensation Temperatures of the Elements 2003
% The Astrophysical Journal, Volume 591, Number 2 DOI 10.1086/375492
%
maxZSun = 92 % Earth max Z
%
ABZSolar = zeros(1, maxZSun)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
FID = fopen ("SolarSystemAbudanceProto.txt", "r")
%
for ii = 1:maxZSun
  ss = fgets(FID);
  sblank = strfind(ss, ' ');
  ab = ss( sblank(1):sblank(2));
  ABZSolar(ii) = str2num(ab);
end
fclose(FID);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

