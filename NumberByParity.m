%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%2025-11-18

% Number Odd-Odd
% non-zero OO
OOind1 = find(OOind>0)
% Z non-zero OO
OOZ = StableZind(OOind1)
% Y - unique Z OO
% I - unique elements key in OOind1
 [Y, I, J] = unique(OOZ)
%  unique OOind1
OOind1 = OOind1(I)

OOnames = []
for ii=1:length(OOind1)
  strNo = OOind1(ii);
  % Z & N
  Znow = StableZind(strNo);
  Nnow = StableNind(strNo);
  % Element
  Namenow =  Namearray( scomma(Znow)+1:scomma(Znow+1)-1);
  % Isotope A_Element
  Isotopenow =strcat(num2str(Znow+Nnow),Namenow)
  % Array of Isotopes
  OOnames = [OOnames; Isotopenow]
end
% 2H 6Li 10B 14N 40K 50V 138La 176Lu 180Ta

OEind1 = find(OEind>0)
% Z non-zero OO
OEN = StableNind(OEind1)
% Y - unique Z OO
% I - unique elements key in OOind1
 [Y, I, J] = unique(OEN)
%  unique OOind1
OEind1 = OEind1(I)
length(OEind1)

OEnames = []
for ii=1:length(OEind1)
  strNo = OEind1(ii);
  % Z & N
  Znow = StableZind(strNo);
  Nnow = StableNind(strNo);
  % Element
  Namenow =  Namearray( scomma(Znow)+1:scomma(Znow+1)-1);
  % Isotope A_Element
  Isotopenow =strcat(num2str(Znow+Nnow),Namenow)
  % Array of Isotopes
  OEnames = [OEnames; Isotopenow]
end


EOind1 = find(EOind>0);
% Z non-zero
EON = StableNind(EOind1);
% Y - unique Z
% I - unique elements key in OOind1
 [Y, I, J] = unique(EON);
%  unique OOind1
EOind1 = EOind1(I);
length(EOind1)

EOnames = []
for ii=1:length(EOind1)
  strNo = EOind1(ii);
  % Z & N
  Znow = StableZind(strNo);
  Nnow = StableNind(strNo);
  % Element
  Namenow =  Namearray( scomma(Znow)+1:scomma(Znow+1)-1);
  % Isotope A_Element
  Isotopenow =strcat(num2str(Znow+Nnow),Namenow)
  % Array of Isotopes
  EOnames = [EOnames; Isotopenow]
end


EEind1 = find(EEind>0);
% Z non-zero OO
EEN = StableNind(EEind1);
% Y - unique Z
% I - unique elements key in OOind1
 [Y, I, J] = unique(EEN);
%  unique OOind1
EEind1 = EEind1(I);
length(EEind1)

EEnames = []
for ii=1:length(EEind1)
  strNo = EEind1(ii);
  % Z & N
  Znow = StableZind(strNo);
  Nnow = StableNind(strNo);
  % Element
  Namenow =  Namearray( scomma(Znow)+1:scomma(Znow+1)-1);
  % Isotope A_Element
  Isotopenow =strcat(num2str(Znow+Nnow),Namenow);
  % Array of Isotopes
  EEnames = [EEnames; Isotopenow];
end

length(OOind1)+length(EEind1)+length(OEind1)+length(EOind1)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
