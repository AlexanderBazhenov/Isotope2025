% 2025-10-28
% Rev_Tables_&_charts_for_isotope_abundance_var_&_at_wt_of_sel_elements_2016.xlsx
%
Hcategory = [
Standard atomic weight
VPDB
NBS19
Carbonate and bicarbonate	Sea water
Carbonate and bicarbonate	Other water
Carbonate and bicarbonate	Metamorphic and igneous rock
Carbonate and bicarbonate	Typical marine carbonate rock
Carbonate and bicarbonate	Other carbonate
Carbon dioxide	Air
Carbon dioxide	Soil gas
Carbon dioxide	Volcanic gas
Carbon dioxide	Oil, gas, coal, and landfills
Carbon dioxide	Commercial tank gas and reference materials
Oxalates	CaC2O4·xH20 (whewellite)
Carbon monoxide	Air (CO)
Organic carbon	Land Plants (C3 metabolic process)
Organic carbon	Land plants (C4 metabolic process)
Organic carbon	Land Plants (CAM metabolic process)
Organic carbon	Marine Organisms
Organic carbon	Marine sediments and compounds
Organic carbon	Coal
Organic carbon	Crude Oil
Organic carbon	Ethanol (naturally occurring)
Elemental carbon	Graphite
Elemental carbon	Diamonds
Ethane	Hydrocarbon gas
Methane	Air
Methane	Marine and other sources
Methane	Fresh water sources
Methane	Commercial tank gas
]

Cdata= [
-135.9	46.2;
0	0;
1.95		1.95;
-0.8	2.2;
-37.1	37.5;
-11.9	24.8;
-6	6;
-64.5	21.1;
-8.2	-6.7;
-31	6.9;
-37	23;
-37.6	28;
-54	-28.76;
-31.7	33.7;
-31.5	-22;
-35	-21;
-16	-9;
-34	-10;
-74.3	-2;
-130.3	7;
-30	-19;
-44	-16.8;
-32	-10.3;
-41	6.2;
-34.4	5;
-55.6	6.6;
-50.6	-39;
-109	12.7;
-86	-50;
-51	-38
]

pkg load interval

intervals = infsup(Cdata(:,1), Cdata(:,2))

figure
hold on
hdelta = errorbar (mid(intervals), 1:length(Cdata),  rad(intervals), ">.");
set(hdelta, 'color', [0 0 1])

xlabel('\delta ^{13}C(VPDB) ')
ylabel('Категория')
set(gca, 'Fontsize', 14)

grid on

ylim( [0.5 31.5])
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

figure_name_out=strcat("CarbonDeltaFigure2",'.png')
print('-dpng', '-r300', figure_name_out), pwd
