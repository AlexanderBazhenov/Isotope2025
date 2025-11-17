% 2024-10-20
% 2024-01-05
%
% Get Isotope per Element
% File DecayModeAbudance.csv
% Export from https://www.nndc.bnl.gov/nudat3/
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  DecayModeAbudance.csv   %%%%%%%%%%%%%%%%%%%%%%%%%
##z,n,name,decayModes,abundance
##0,1,Neutron,B- = 100.00,NaN
##1,0,1H,NaN,99.9885%
##1,1,2H,NaN,0.0115%
##1,2,3H,B- = 100.00,NaN
##1,3,4H,N = 100.00,NaN
##1,4,5H,2N = 100.00,NaN
##1,5,6H,N = 100.00,NaN
##1,6,7H,2N?  ,NaN
##2,1,3He,NaN,0.000134%
##2,2,4He,NaN,99.999866%
##2,3,5He,A = 100.00,NaN
##2,3,5He,N = 100.00,NaN
##2,4,6He,B- = 100.00,NaN
##2,5,7He,N  ,NaN
##2,6,8He,B- = 100.,NaN
##2,6,8He,BN = 16.,NaN
##2,7,9He,N = 100.00,NaN
##2,8,10He,N = 100.00,NaN
IsotopeElem = zeros(maxZ,1);

FID = fopen ("DecayModeAbudance.csv", "r")
% Head
ss  = fgets(FID)
% 0,1,Neutron,B- = 100.00,NaN
ss  = fgets(FID)
%
for indz = 1 : maxZ
  indn = find(Z == indz);
  IsotopeElem (indz) = length(indn);
end
fclose(FID);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% ALL %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% StableZ %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
IsotopeElemStable = zeros(maxZ,1);

for indz = 1 : 92
  indn = find(ABZind == indz);
  [C,ia,ic] = unique(ABNind(indn));
%   plot all isotopes
  IsotopeElemStable (indz) = length(C);
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% StableZ %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Plot all and Stable Isotopes %%%%%%%%%%%%%%%%%%%
figure
hold on
pAll = plot(IsotopeElem, 'sb')
plot(IsotopeElem, '--b')
set(pAll, 'markersize', 4)
pStable = plot(IsotopeElemStable, 'sk')
plot(IsotopeElemStable, '--k')
set(pStable, 'markersize', 4)
grid on
xlim([-0.5 maxZ+ 0.5])
legend
%axis('equal')
xticks([2 10 18 36 54 82 86 92])
set(gca,  "fontsize", 14);
xlabel('\it Z')
ylabel('\it Isotope count')

yylim = ylim
scomma = strfind(Namearray, ',');
for ii = 1:  Zcount-1
  strnow = Namearray( scomma(ii)+1:scomma(ii+1)-1);
  if mod(ii,2) == 0
    text(ii, yylim(2)+7, strnow, 'Fontsize', 12);
   end
  if mod(ii,2) == 1
    text(ii, yylim(2)+3, strnow, 'Fontsize', 12);
   end
end

pleg = legend([pAll pStable],{'all isotopes', 'stable isotopes'})
set(pleg, 'fontsize', 14);

figure_name_out=strcat("Isotopes_per_Elements",'.png')
print('-dpng', '-r300', figure_name_out), pwd
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Plot all and Stable Isotopes %%%%%%%%%%%%%%%%%%%

##sum(IsotopeElem)
##sum(IsotopeElemStable)

% 2025-10-20
% by hands
hedges = -0.5:1:10.5
binc = 0:10
arrayIsotopeElemStable = [2   24   19   6    5    6    7   10    2    1    1
]
figure
bar(binc, arrayIsotopeElemStable)
xlim([-0.5 10.5])
set(gca,  "fontsize", 14);
xlabel('\it Number of Isotopes per Element')
ylabel('\it Freq of NIE')
figure_name_out=strcat("HIST Isotopes_per_Elements",'.png')
print('-dpng', '-r300', figure_name_out), pwd


##hedges = -0.5:1:10.5
##histIsotopeElemStable = hist(IsotopeElemStable, hedges)
##binc = 0:10
##figure
##bar(binc, histIsotopeElemStable(1:end-1))
##xlim([-0.5 10.5])
##set(gca,  "fontsize", 14);
##xlabel('\it Number of Isotopes per Element')
##ylabel('\it Freq of NIE')
##figure_name_out=strcat("HIST Isotopes_per_Elements",'.png')
##print('-dpng', '-r300', figure_name_out), pwd
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Plot all and Stable Isotopes %%%%%%%%%%%%%%%%%%%

##xx = 1:10
##reshape(xx, [5,2])

ZZ = 1: length(IsotopeElemStable)-1
Zevens=ZZ(mod(ZZ,2)==0)
Zodds=ZZ(mod(ZZ,2)==1)

% 2025-10-20
% by hands
Zevens = Zevens(1:41) % He-Pb
Zodds = Zodds(1:42) % H-Bi

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% HIST Even-Odd %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[histEven, histIsotopeElemStableZevens] = hist(IsotopeElemStable(Zevens), [0:10])
[histOdd, histIsotopeElemStableZodds] = hist(IsotopeElemStable(Zodds),  [0:3])

figure
hold on
pOdd = bar(binc(1:length(histOdd)), histOdd)
pEven = bar(binc, histEven)
pleg = legend([pOdd pEven],{'Odd isotopes', 'Even isotopes'})
xlim([-0.5 10.5])
set(gca,  "fontsize", 14);
xlabel('\it Number of Isotopes per Element')
ylabel('\it Freq of NIE')
figure_name_out=strcat("HIST Isotopes_per_Elements Even-Odd",'.png')
print('-dpng', '-r300', figure_name_out), pwd
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% /HIST Even-Odd %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

ZZ = 1: length(IsotopeElemStable)-1
Zevens=ZZ(mod(ZZ,2)==0)
Zodds=ZZ(mod(ZZ,2)==1)

figure
hold on
grid on
xlim([-0.5 maxZ+ 0.5])
pEven = bar(Zevens, IsotopeElemStable(Zevens), 0.5)
set(pEven, 'FaceColor', [0 0.4470 0.7410])
pOdd = bar(Zodds, IsotopeElemStable(Zodds), 0.5)
set(pOdd , 'FaceColor', [0.8500 0.3250 0.0980])

ZZp = find(IsotopeElemStable > 0);
xlim([-0.5 max(ZZp) + 1.5])
%axis('equal')
xticks([2 10 18 36 43 54 61 82 86 92])
set(gca,  "fontsize", 18);
xlabel('Число протонов (заряд ядра)')
ylabel('Число изотопов')

ylim([0 12])
yylim = ylim
scomma = strfind(Namearray, ',');
for ii = 1:  Zcount-1
  strnow = Namearray( scomma(ii)+1:scomma(ii+1)-1);
  if mod(ii,2) == 0
    text(ii-0.5, yylim(2)+0.5, strnow, 'Fontsize', 12);
   end
  if mod(ii,2) == 1
    text(ii-0.5, yylim(2)+1, strnow, 'Fontsize', 12);
   end
end

pleg = legend([pOdd pEven],{'Нечетный заряд', 'Четный заряд'})
set(pleg, 'fontsize', 18);
figure_name_out=strcat("Isotopes_per_Elements Even-Odd",'.png')
print('-dpng', '-r300', figure_name_out), pwd

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  Isotope Count = 2  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
GroupIsotopeCount =2

figure
hold on
grid on
Zmin = 1
Zmax = 8
xlim([-1.5+Zmin Zmax + 1.5])
pEven = bar(Zevens, IsotopeElemStable(Zevens), 0.5)
set(pEven, 'FaceColor', [0 0.4470 0.7410])
pOdd = bar(Zodds, IsotopeElemStable(Zodds), 0.5)
set(pOdd , 'FaceColor', [0.8500 0.3250 0.0980])

% 2024-01-26
% divide into 2 groups
ZZ2 = find(IsotopeElemStable == GroupIsotopeCount);
%
Elem2loind = zeros(length(ZZ2),1)
for ii  = 1:length(ZZ2)
  indz = ZZ2(ii)
  indn = find(ABZind == indz);
  [C,ia,ic] = unique(ABNind(indn));
  widC = max(C)-min(C)
%   plot all isotopes
  if widC == 1
    Elem2loind (ii) = 1;
  end
end

%ZZ2lo = find(ZZ2 < Zmax)
Elem2lo = ZZ2 (Elem2loind==1)
%Elem2upind = ones(length(ZZ2),1)
Elem2up = ZZ2(Elem2loind ==0)
Elem2 = union(Elem2lo, Elem2up)
%
xticks(Elem2lo)
set(gca,  "fontsize", 14);
xlabel('\it Z')
ylabel('\it Isotope count')

ylim([0 max(IsotopeElemStable(Zmin:Zmax))+1])
yylim = ylim
scomma = strfind(Namearray, ',');
for jj = 1:length(Elem2lo)
  ii = Elem2lo(jj)
  strnow = Namearray( scomma(ii)+1:scomma(ii+1)-1);
  if mod(ii,2) == 0
    text(ii, yylim(2)-0.5, strnow, 'Fontsize', 14);
   end
  if mod(ii,2) == 1
    text(ii, yylim(2), strnow, 'Fontsize', 14);
   end
end
set(gca,  "fontsize", 14);
xlabel('\it Z')
ylabel('\it Isotope count')
pleg = legend([pOdd pEven],{'Odd isotopes', 'Even isotopes'})
set(pleg, 'fontsize', 14);
figure_name_out=strcat("Elements Isotope Count =",num2str(GroupIsotopeCount),'Lo','.png')
print('-dpng', '-r300', figure_name_out), pwd

figure
hold on
grid on
Zmin = 15
Zmax = 82

ZZ2up= find(ZZ2 > Zmin)
Elem2up = ZZ2 (ZZ2up)
xticks(Elem2up)
set(gca,  "fontsize", 16);
xlabel('\it Z')
ylabel('\it Isotope count')
xlim([-1.5+Zmin Zmax + 1.5])

pEven = bar(Zevens, IsotopeElemStable(Zevens), 0.5)
set(pEven, 'FaceColor', [0 0.4470 0.7410])
pOdd = bar(Zodds, IsotopeElemStable(Zodds), 0.5)
set(pOdd , 'FaceColor', [0.8500 0.3250 0.0980])

ylim([0 max(IsotopeElemStable(Zmin:Zmax))+1])
yylim = ylim
scomma = strfind(Namearray, ',');
for jj = 1:length(Elem2up)
  ii = Elem2up(jj)
  strnow = Namearray( scomma(ii)+1:scomma(ii+1)-1);
  if mod(ii,2) == 0
    text(ii-0.5, yylim(2), strnow, 'Fontsize', 16);
   end
  if mod(ii,2) == 1
    text(ii-0.5, yylim(2)*2, strnow, 'Fontsize', 16);
   end
end
pleg = legend([pOdd pEven],{'Odd isotopes', 'Even isotopes'})
set(pleg, 'fontsize', 16);
figure_name_out=strcat("Elements Isotope Count =",num2str(GroupIsotopeCount),'Up','.png')
print('-dpng', '-r300', figure_name_out), pwd

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% HIST Even-Odd Parts %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% after AbudanceEarthCrust.m
% zyarray = max / min abudance
% 2024-01-26

figure
hold on
grid on
pElem2up = semilogy(Elem2up, zyarray(Elem2up), 'sr')
set(pElem2up, 'markersize', 12)
set(pElem2up, 'linewidth', 2)
%set(pEven, 'FaceColor', [0 0.4470 0.7410])
pElem2lo = plot(Elem2lo, zyarray(Elem2lo), 'sb')
set(pElem2lo, 'markersize', 12)
set(pElem2lo, 'linewidth', 2)
%set(pOdd , 'FaceColor', [0.8500 0.3250 0.0980])

xlim([-1.5 Zmax + 1.5])
ylim([0.05 4e6])

Elem2 = union(Elem2lo, Elem2up)

xticks(Elem2)

scomma = strfind(Namearray, ',');
for jj = 1:length(Elem2)
  ii = Elem2(jj)
  strnow = Namearray( scomma(ii)+1:scomma(ii+1)-1);
  if mod(ii,2) == 0
    text(ii-0.5, yylim(2)*1.5, strnow, 'Fontsize', 14);
   end
  if mod(ii,2) == 1
    text(ii-0.5, yylim(2)*2, strnow, 'Fontsize', 14);
   end
end

pleg = legend([pElem2lo pElem2up ],{'Different parity isotopes', 'Same parity isotopes'})
set(pleg, 'fontsize', 16);
set(pleg, 'location', 'east');

xx = [-1.5 Zmax + 1.5]
yy = [ 10 10]
pzero = plot(xx, yy, ':k')
set(pzero, 'linewidth', 2)

set(gca,  "fontsize", 14);
xlabel('\it Z')
ylabel('\it Element ratio max min abudances Earth Crust Isotopes')


figure_name_out=strcat("Elements Isotope Count =",num2str(GroupIsotopeCount),'Ratio Abudances','.png')
print('-dpng', '-r300', figure_name_out), pwd

