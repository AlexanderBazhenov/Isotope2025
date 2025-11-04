% 2025-10-30
%
% nndc_nudat_data_export_pairingGap.csv
%
AAA = csvread('nndc_nudat_data_export_pairingGap.csv');
% z,n,pairingGap(keV)
AAA(1,:) = [];
%
%
maxZ = 118
maxN = 176
maxA = maxZ+maxN

NN = length(AAA)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     Beta Index Percent  %%%%%%%%%%%%%%%%%%%%%%%%
%
##PairingZind = zeros(length(N),1);
##PairingNind = zeros(length(N),1);
##PairingAInd = zeros(length(N),1);
%PairingNZ = zeros(maxN ,maxZ)-1000;
PairingNZ = NaN(maxN ,maxZ);
%
FID = fopen ("nndc_nudat_data_export_pairingGap.csv", "r");
% z,n,pairingGap(keV)
% ii =1
% 1,1,2016.3319000000001
% ii = 2
% 3,1,5149.79005
% ss  = fgets(FID)
%
for ii = 1: NN
  ss = fgets(FID);
       scomma = strfind(ss, ',');
       zstr = ss(1:scomma(1)-1);
       nstr = ss(scomma(1)+1:scomma(2)-1);
       datastr = ss(scomma(2)+1:end);
       indz = str2num(zstr);
       indn = str2num(nstr);
       datanow = str2num(datastr);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
PairingNZ ( indn, indz ) = datanow;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
end
fclose(FID);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Zmin = 20
Nmin = 45
maxN = 130
maxZ = 1
[Xmm, Ymm] = meshgrid (Nmin:maxN, Zmin:maxZ);

figure
hold on
pA = pcolor(Xmm,Ymm, 10*PairingNZ(Nmin:maxN, Zmin:maxZ)')
set(pA, 'linewidth', 0.5)
set(pA, 'edgecolor', 0.5*[1 1 1])
xlim([Nmin maxN])
ylim([Zmin maxZ])
titlestr = strcat("Ширина нейтронной щели", "  N-Z=" ,"  ",  num2str(Nmin),"-", num2str(maxN), ", ", num2str(Zmin),"-", num2str(maxZ))
t =title(titlestr)
set(t, 'Fontsize', 14)
set(gca, 'Fontsize', 14)
xlabel('N')
ylabel('Z')
hc = colorbar('location', 'southoutside')
set(hc, 'FontSize', 14);
set(hc, 'LineWidth', 2);
##figure_name_out=strcat("Neutron Pairing",'.png')
##print('-dpng', '-r300', figure_name_out), pwd
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


for ii=1:length(StableInd)
  if ( StableInd(ii) ==1 )
%   pStable = plot(StableNind(ii)+StableZind(ii), StableZind(ii),'sr');
 %     pStable = plot(StableNind(ii), StableZind(ii),'sr');
            pStable = plot(StableNind(ii)+0.5, StableZind(ii)+0.5,'sr');
            set(pStable, "markerfacecolor", 0*[1 1 0])
            set(pStable, "markeredgecolor",  [1 1 0])
            set(pStable, "markersize", 10)
 end
end
xlim([Nmin maxN])
ylim([Zmin maxZ])

figure_name_out=strcat(titlestr,' w Stable','.png')
print('-dpng', '-r300', figure_name_out), pwd
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

[Nmax, Zmax] = size(StableNZ)
[XX, YY] = meshgrid (Nmin:Nmax, Zmin:Zmax);

figure
hold on
pS = pcolor(XX,YY, 50000*StableNZ(Nmin:Nmax, Zmin:Zmax)')
set(pS, 'edgecolor', 1*[1 1 1])
