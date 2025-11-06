% 2025-10-28
% Rev_Tables_&_charts_for_isotope_abundance_var_&_at_wt_of_sel_elements_2016.xlsx
%
Ocategory = [
Standard atomic weight
VSMOW
Oxygen gas	Air
Water	Sea Water
Water	Continental water
Water	Fruit juice and wine
Carbon monoxide	Air
Carbon monoxide	Commercial tank gas†
Carbon dioxide	Air
Carbon dioxide	Commercial tank gas
Carbonates	Typical marine carbonate
Carbonates	Igneous (carbonatite)
Carbonates	Other carbonate
Nitrogen oxides	N20 (air and water)
Nitrogen oxides	Nitrate (air and water)
Oxides	Al and Fe oxides
Oxides	Chert
Phosphates 	Skeletal parts (phosphates)
Phosphates 	Phosphorite rocks
Silicates
Sulfates	Air
Sulfates	Sea water
Sulfates	Other water
Sulfates	Minerals
Plants and animals	Cellulose, lipids, and tissue
]

Odata= [
-65.5	111.3;
0 0;
23.8	23.8;
-1	0.6;
-62.8	31.3;
-4.4	15.3;
-6.9	1.7;
-65	7.6;
40	53;
3.9	22.2;
26	34;
-1.3	7.7;
-20.5	36.4;
20	109;
-2.5	76;
-15.5	16;
9.4	45;
6	26.7;
8.6	25.1;
-16.2	34.9;
-19	14.1;
9.3	9.6;
-19.8	23.2;
-10	31.2;
-4.3	37
]

pkg load interval

intervals = infsup(Odata(:,1), Odata(:,2))

figure
hold on
hdelta = errorbar (mid(intervals), 1:length(Odata),  rad(intervals), ">.");
set(hdelta, 'color', [0 0 1])

xlabel('\delta ^{18}O(VSMOW) ')
ylabel('Категория')
set(gca, 'Fontsize', 14)

grid on

ylim( [0.5 26.5])
%xlim( [-1000 3500] )
##yticks = [1:21]
##yticklabels =  [1:21]
##h1 = plot(mid(intervals(1)), 1, 'ok')
##h2 = plot(mid(intervals(2)), 2, 'ok')
##lgd = legend(Hcategory(9,:), Hcategory(8,:), Hcategory(7,:), Hcategory(6,:), Hcategory(5,:), ...
##Hcategory(4,:), Hcategory(3,:), Hcategory(2,:), Hcategory(1,:))
##set(lgd, 'location', 'NorthEast')
##%legend(Hcategory(9,:), '8. Hydroxides.	Aluminum and iron', '7. Silicates.	Other', ...
##'6. Silicates.	Pectolite', '5. Water.	Fruit juice and wine', '4. Water.	Other natural', '3.Water.	Sea water (deep)', '2. VSMOW', '1. Standard atomic weight')
##%lgd = legend( [h1, h2] {'1. Standard atomic weight', '2. VSMOW'} )

figure_name_out=strcat("OxygenDeltaFigure2",'.png')
print('-dpng', '-r300', figure_name_out), pwd
