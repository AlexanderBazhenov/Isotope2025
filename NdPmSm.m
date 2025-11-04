% 2025-11-03
% 2025-10-23
figure
hold on
xlim([84 87])
ylim([60 63])

% Nd 146
h = rectangle('Position', [86 60 1 1]);
ColorNow = 1 * [1 1 1]
set (h, "FaceColor", ColorNow);
%
hNd145 = text(86.5, 60.5, 'Nd')
set(hNd145, 'Fontsize', 24)
hZ60 = text(86.1, 60.5, '146')
set(hZ60, 'Fontsize', 20)
hN86 = text(86.3, 60.2, 'STABLE')
set(hN86, 'Fontsize', 18)

% Pm 146
h = rectangle('Position', [85 61 1 1]);
ColorNow = 1 * [1 1 0]
set (h, "FaceColor", ColorNow);
%
hPm146 = text(85.5, 61.5, 'Pm')
set(hPm146, 'Fontsize', 24)
hZ61 = text(85.1, 61.5, '146')
set(hZ61, 'Fontsize', 20)

% Ru 98
h = rectangle('Position', [84 62 1 1]);
ColorNow = 1 * [1 1 1]
set (h, "FaceColor", ColorNow);
%
hSm146 = text(84.5, 62.5, 'Sm')
set(hSm146, 'Fontsize', 24)
hZ62 = text(84.1, 62.5, '146')
set(hZ62, 'Fontsize', 20)
hN84 = text(84.3, 62.2, 'STABLE')
set(hN84, 'Fontsize', 18)

set(gca, 'Fontsize', 18)
xlabel('N, число нейтронов')
ylabel('Z, электрический заряд')

axis on
xTICKVAL = [84.5 85.5 86.5]
xticks(xTICKVAL)
xLABEL = xticklabels
xLABEL{1,1}='84'
xLABEL{1,2}='85'
xLABEL{1,3}='86'
xticklabels(xLABEL)
yTICKVAL = [60.5 61.5 62.5]
yticks(yTICKVAL)
yLABEL = yticklabels
yLABEL{1,1}='60'
yLABEL{1,2}='61'
yLABEL{1,3}='62'
yticklabels(yLABEL)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
filestr = strcat("Nd-Pm-Sm146")
figure_name_out=strcat(filestr,'.png')
print('-dpng', '-r300', figure_name_out), pwd


