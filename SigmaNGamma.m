% 2025-12-08
% 2025-12-13
%%%%%%%%%%%%%%%%%%%%%%%%%%%%    Sigma NGamma   %%%%%%%%%%%%%%%%%%%%%%%%%%
%
figure
hold on
Zmin = 1
Zmax = 117
Amin = 1
Amax = 294
[Xmm, Ymm] = meshgrid (Amin:Amax, Zmin:Zmax);
pSNG = pcolor(Xmm,Ymm, log10(SNGA(Amin:Amax, Zmin:Zmax))')
set(pSNG, 'linewidth', 1)
set(pSNG, 'edgecolor', 1*[1 1 1])

hc = colorbar('location', 'southoutside')
set(hc, 'FontSize', 16);
grid on
set(gca, 'Fontsize', 16)

pos = get(hc, 'Position')
% [left, bottom, width, height]
pos(2)=0.18
pos(3) = 0.775; % New width (e.g., 3% of figure width)
pos(4) = 0.02;  % New height (e.g., 50% of figure height)
set(hc, 'Position', pos);
set(hc, 'fontsize', 14)


xlim([1 265])
ylim([1 110])

xlabel('A')
ylabel('Z')
xlabel('')
ylabel('')
box on

titlestr = strcat("Сечения радиационного захвата нейтронов (бн). Логарифмическая шкала")
titlestrfile = strcat("(N,Gamma) cross-section")
ht = title(titlestr)
set(hc, 'Fontsize', 16)
set(ht, 'Fontweight', 'normal')
figure_name_out=strcat(titlestrfile,'.png')
print('-dpng', '-r300', figure_name_out), pwd

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure
hold on
Zmin = 1
Zmax = 117
Amin = 1
Amax = 294
[Xmm, Ymm] = meshgrid (Amin:Amax, Zmin:Zmax);
%pSNG = pcolor(Xmm,Ymm, SNGA(Amin:Amax, Zmin:Zmax)')
pSNG = image(Xmm,Ymm, SNGA(Amin:Amax, Zmin:Zmax)')
set(pSNG, 'linewidth', 1)
set(pSNG, 'edgecolor', 0.9*[1 1 1])

caxis([0 100])
hc = colorbar('location', 'southoutside')
set(hc, 'FontSize', 16);
grid on
set(gca, 'Fontsize', 16)

xlim([1 265])
ylim([1 110])

xlabel('A')
ylabel('Z')

titlestr = strcat("Сечения радиационного захвата нейтронов")
titlestrfile = strcat("(N,Gamma) cross-section")
ht = title(titlestr)
set(ht, 'Fontweight', 'normal')
figure_name_out=strcat(titlestrfile,'.png')
print('-dpng', '-r300', figure_name_out), pwd
