% 2025-10-28
% Rev_Tables_&_charts_for_isotope_abundance_var_&_at_wt_of_sel_elements_2016.xlsx
%
Hcategory = [
'Standard atomic weight'
'VSMOW'
'Water.	Sea water (deep)'
'Water.	Other (naturally occurring)'
'Water.	Fruit juice and wint'
'Silicates.	Pectolite'
'Silicates.	Other'
'Hydroxides.	Aluminum and iron'
'Organic hydrogen.	Non-marine organisms'
'Organic hydrogen.	Marine organisms'
'Organic hydrogen.	Organic sediments'
'Organic hydrogen.	Coal'
'Organic hydrogen.	Crude oil'
'Organic hydrogen.	Ethanol (naturally occurring)'
'Organic hydrogen.	Reagents (synthetic)'
'Methane.	Atmospheric'
'Methane.	Other (naturally occurring)'
'Hydrogen Gas.	Air'
'Hydrogen Gas.	Other (naturally occurring)'
'Hydrogen Gas.	Commercial tank gas'
'Hydrogen Gas.	Automobile exhaust and industrial contamination']

Hdata= [
-904.5	818.9;
0	0;
-2.5	3.2;
-495	129;
-43	47;
-429	-281;
-208	5;
-220	-8;
-237	66;
-166	-13;
-103	-59;
-162	-65;
-163	-80;
-272	-200;
-140	802;
-232	-71;
-531	-133;
-136	180;
-836	-250;
-813	-56;
-690	-147;
]

pkg load interval

intervals = infsup(Hdata(:,1), Hdata(:,2))

figure
hold on
hdelta = errorbar (mid(intervals), 1:length(Hdata),  rad(intervals), ">.");
set(hdelta, 'color', [0 0 1])

xlabel('\delta ^{2}H(VSMOW) ')
ylabel('Категория')
set(gca, 'Fontsize', 14)

grid on

ylim( [0.5 21.5])
%xlim( [-1000 3500] )
yticks = [1:21]
yticklabels =  [1:21]
##h1 = plot(mid(intervals(1)), 1, 'ok')
##h2 = plot(mid(intervals(2)), 2, 'ok')
##lgd = legend(Hcategory(9,:), Hcategory(8,:), Hcategory(7,:), Hcategory(6,:), Hcategory(5,:), ...
##Hcategory(4,:), Hcategory(3,:), Hcategory(2,:), Hcategory(1,:))
##set(lgd, 'location', 'NorthEast')
##%legend(Hcategory(9,:), '8. Hydroxides.	Aluminum and iron', '7. Silicates.	Other', ...
##'6. Silicates.	Pectolite', '5. Water.	Fruit juice and wine', '4. Water.	Other natural', '3.Water.	Sea water (deep)', '2. VSMOW', '1. Standard atomic weight')
##%lgd = legend( [h1, h2] {'1. Standard atomic weight', '2. VSMOW'} )

figure_name_out=strcat("HydrogenDeltaFigure2",'.png')
print('-dpng', '-r300', figure_name_out), pwd
