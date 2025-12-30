% 2025-12-27
% Get Stable Isotopes
% File % Discovery Year.csv
% Export from https://www.nndc.bnl.gov/nudat3/
% length isotope csv

FILENAME = 'Discovery Year.csv'
% z,n,year
##1,0,1918
##2,0,1936
##1,1,1932
##2,1,1934
%
X = csvread (FILENAME);
X(1,:) = [];
X(end,:) = [];
%
NN = length(X)
% NN = 33380

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     Time Slices   %%%%%%%%%%%%%%%%%%%%%%%%
PrepareDataDiscoveryYear
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     Plot     %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
DiscoveryYearLegend
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
set(gca, 'Fontsize', 14)
box on
grid on
xlabel('A')
ylabel('Z')

figure_name_out=strcat("DiscoveryYearAZ",'.png')
print('-dpng', '-r300', figure_name_out), pwd
