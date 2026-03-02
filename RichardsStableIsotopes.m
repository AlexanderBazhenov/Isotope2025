% 2026-02-02
% compare Richards 1914 w Stable Isotopes

load NZdata
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     START    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
GetStable2

RichardsWeight

WeightHalfEmpiricInt

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure
hold on
hzinf = plot(nZW,infAtomicWint, '-b')
hzsup = plot(nZW,supAtomicWint, '-b')
hM = plot( RichardsWeight, 'sb' )
set(hM, 'markersize',4)
set(hM, 'markerfacecolor', [0 0 1])
set(hM, 'markeredgecolor', [1 0 0])

for ii=1:length(StableInd2)
  if ( StableInd2(ii) ==1 )
   pStable = plot(StableZind2(ii), StableNind2(ii)+StableZind2(ii), 'or');
   set(pStable, 'markersize', 10)
set(pStable, 'markeredgecolor', [1 0 0] )
 end
end


lgd123 = legend([hM hzinf hzsup pStable], ...
  {'Richards data', 'Half-empiric formula inf', 'Half-empiric formula sup', 'Stable Isotopes'})
set(lgd123, 'location', 'north')
set(lgd123, 'fontsize', 16)

xlabel('Z')
ylabel('Weight  H = 1')

set(gca,  "fontsize", 16);
grid on

figure_name_out=strcat('RichardsWeightHalfEmpiricalStable','.png')
print('-dpng', '-r300', figure_name_out), pwd


