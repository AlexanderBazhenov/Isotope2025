% 2026-02-02
% compare Richards 1914 w Stable Isotopes

load NZdata
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     START    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
GetStable2

RichardsWeight

WeightHalfEmpiricInt

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
OxfordBlue = [0, .33, .71]
RoyalMail = 4.58*[0.218, .032, 0.042]
Pantone = 3*[0.128, 0.140, 0.036]


figure
hold on
hzinf = plot(nZW,infAtomicWint, '-g')
set(hzinf, 'color', Pantone)
hzsup = plot(nZW,supAtomicWint, '-g')
set(hzsup, 'color', Pantone)
hM = plot( RichardsWeight, 'sb' )
set(hM, 'markersize',4)
set(hM, 'markerfacecolor', [0 0 1])
set(hM, 'markeredgecolor', [1 0 0])
set(hM, 'markeredgecolor', [0 0 1])

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
set(lgd123, 'fontsize', 20)

xlabel('Z')
ylabel('Weight  H = 1')

set(gca,  "fontsize", 20);
grid on
box on

figure_name_out=strcat('RichardsWeightHalfEmpiricalStable','.png')
print('-dpng', '-r300', figure_name_out), pwd


