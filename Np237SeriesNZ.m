% 2026-01-11
% Радиоактивный ряд нуклидов с массовым числом, представимым в виде 4n + 1,
% называется рядом нептуния. Ряд начинается с нептуния-237 и
% завершается образованием стабильного таллия-205.

%%%%%%%%%%%%%%%%%%%%%%%%%%% START %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
StartNucleiZ = 93
StartNucleiA = 237
StartNucleiN = StartNucleiA - StartNucleiZ
% array of comma places for names of isotopes
Inamecomma = strfind(Iname, ',');
Inamess = '';
%plot(StartNucleiN, StartNucleiZ, '.b')
Zarray = StartNucleiZ
Narray = StartNucleiN
INarray = ''
Znow = StartNucleiZ
Nnow = StartNucleiN
%%%%%%%%%%%%%%%%%%%%%%%%%%% START %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%  ITERATE SERIES %%%%%%%%%%%%%%%%%%%%%%%%%%%
jj = 0
%while (j<10)
 for k =1:14
%  jj= jj+1
    jj= jj+k
% Check Decay Mode
mode = ''
% Z region
%
zind = find(Z ==  Znow)
% N = StartNucleiN
nind = find( N(zind) == Nnow )
% index
iind = zind(1) + nind + 1
sscc=Iname(Inamecomma(iind(1)-1):Inamecomma(iind(1)))
ss= sscc(2:end-1)
INarray = [INarray, ',',ss]
%
%AlphaInd(iind)
% check Mode == Alpha
sA = find( AlphaInd(iind) == 1)
if (sA >0)
%   inow = iind(1) + find( AlphaInd(iind) == 1) -1
%    AlphaInd(inow)
    mode = 'A'
end
% check Mode == Beta
sB = find( BetaInd(iind) == 1)
if (sB > 0)
 %   inow = iind(1) + find( BetaInd(iind) == 1) -1
 %   BetaInd(inow)
    mode = 'B'
end
%
 switch (mode)
   case {"A"}
     Znew = Znow -2;   Nnew= Nnow -2; mode
  case {"B"}
    Znew = Znow + 1;   Nnew = Nnow -1; mode
  otherwise
    error ("invalid value");
 endswitch
%
Zarray = [Zarray, Znew]
Narray = [Narray, Nnew]
%

%
plot(Nnew, Znew, '.k')
NN = [Nnow Nnew]
ZZ = [Znow Znew]
plot(NN, ZZ, '-r')

Nnow = Nnew
Znow = Znew
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%  /ITERATE SERIES %%%%%%%%%%%%%%%%%%%%%%%%%%%
