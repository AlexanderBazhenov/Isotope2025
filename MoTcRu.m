% 2025-11-03
% 2025-10-23
figure
hold on
xlim([53 56])
ylim([42 45])

% Mo 98
h = rectangle('Position', [55 42 1 1]);
ColorNow = 1 * [1 1 1]
set (h, "FaceColor", ColorNow);
%
hMo98 = text(55.5, 42.5, 'Mo')
set(hMo98, 'Fontsize', 24)
hZ42 = text(55.2, 42.5, '98')
set(hZ42, 'Fontsize', 20)
hN98 = text(55.3, 42.2, 'STABLE')
set(hN98, 'Fontsize', 18)

% Tc 98
h = rectangle('Position', [54 43 1 1]);
ColorNow = 1 * [1 1 0]
set (h, "FaceColor", ColorNow);
%
hTc98 = text(54.5, 43.5, 'Tc')
set(hTc98, 'Fontsize', 24)
hZ43 = text(54.2, 43.5, '98')
set(hZ43, 'Fontsize', 20)

% Ru 98
h = rectangle('Position', [53 44 1 1]);
ColorNow = 1 * [1 1 1]
set (h, "FaceColor", ColorNow);
%
hRu98 = text(53.5, 44.5, 'Ru')
set(hRu98, 'Fontsize', 24)
hZ44 = text(53.2, 44.5, '98')
set(hZ44, 'Fontsize', 20)
hN98 = text(53.3, 44.2, 'STABLE')
set(hN98, 'Fontsize', 18)

set(gca, 'Fontsize', 18)
xlabel('N, число нейтронов')
ylabel('Z, электрический заряд')

axis on
xTICKVAL = [53.5 54.5 55.5]
xticks(xTICKVAL)
xLABEL = xticklabels
xLABEL{1,1}='53'
xLABEL{1,2}='54'
xLABEL{1,3}='55'
xticklabels(xLABEL)
yTICKVAL = [42.5 43.5 44.5]
yticks(yTICKVAL)
yLABEL = yticklabels
yLABEL{1,1}='42'
yLABEL{1,2}='43'
yLABEL{1,3}='44'
yticklabels(yLABEL)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
filestr = strcat("Mo-Tc-Ru98")
figure_name_out=strcat(filestr,'.png')
print('-dpng', '-r300', figure_name_out), pwd


