 2025-11-17
%%%%%%%%%%%%%%%%%%%%% Plot Odd-Odd, ... Even-Even %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% GetStable2.m
##StableZind = StableZind2 ;
##StableNind = StableNind2;
##StableInd = StableInd2;

EEind = zeros(length(N),1);
EOind = zeros(length(N),1);
OEind = zeros(length(N),1);
OOind = zeros(length(N),1);

for ii=1:length(StableInd2)
  if ( StableInd2(ii) ==1 )
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    if (mod(StableZind2(ii),2) == 0) & (mod(StableNind2(ii),2) == 0)
      EEind(ii) = 1;
   end
    if (mod(StableZind2(ii),2) == 0) & (mod(StableNind2(ii),2) == 1)
      EOind(ii) = 1;
   end
   if (mod(StableZind2(ii),2) == 1) & (mod(StableNind2(ii),2) == 0)
      OEind(ii) = 1;
   end
   if (mod(StableZind2(ii),2) == 1) & (mod(StableNind2(ii),2) == 1)
      OOind(ii) = 1;
   end
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 end
end

%DataAbudance = csvread("DecayModeAbudance.csv");

scomma = strfind(Namearray, ',');


sum(OOind)
sum(EEind)
sum(OEind)
sum(EOind)
sum(OOind)+sum(EEind)+sum(OEind)+sum(EOind)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%2025-11-18 Number Odd-Odd
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


figure
hold on
for ii=1:length(StableInd2)
  if ( OOind(ii) ==1 )
   pOOind = plot(StableNind2(ii), StableZind2(ii),'sk');
 end
 if ( EEind(ii) ==1 )
   pEEind = plot(StableNind2(ii), StableZind2(ii),'sr');
 end
  if ( OEind(ii) ==1 )
   pOEind = plot(StableNind2(ii), StableZind2(ii),'sb');
 end
 if ( EOind(ii) ==1 )
   pEOind = plot(StableNind2(ii), StableZind2(ii),'sg');
 end
end
lgdOE = legend([pOOind pEEind pOEind pEOind],{"Нечет-нечет", "Чет-чет", ...
"Нечет-чет", "Чет-нечет"});
set(lgdOE, 'fontsize', 18)
set(lgdOE, 'location', 'North')



xlim([1 150])
ylim([1 100])
set(gca, 'Fontsize', 18)
xlabel('N, число нейтронов')
ylabel('Z, электрический заряд')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
axis on
xTICKVAL = [8 20 28 50 82 126]
xticks(xTICKVAL)
yTICKVAL = [8 20 28 50 82 ]
yticks(yTICKVAL)
grid on
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
hbox = rectangle("Position", [0,1,149,99] )
set(hbox, 'EdgeColor', 0.1*[1 1 1])
set(hbox, 'linewidth', 1)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
titlestr = strcat("Стабильные изотопы различной четности")
ht = title(titlestr)
set(ht, 'Fontweight', 'normal')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
filestr = strcat("StableParity")
figure_name_out=strcat(filestr,'.png')
print('-dpng', '-r300', figure_name_out), pwd
