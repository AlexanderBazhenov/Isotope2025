% 2025-10-23
figure
hold on
Zmin = 79
Zmax = 86
Amin = 203
Amax = 214
[Xmm, Ymm] = meshgrid (Amin:Amax, Zmin:Zmax);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
pB = pcolor(Xmm,Ymm,-10*BetaIndA(Amin:Amax, Zmin:Zmax)')
set(pB, 'linewidth', 0.5)
set(pB, 'edgecolor', [1 1 1])
pE = pcolor(Xmm,Ymm,-5*ECIndA(Amin:Amax, Zmin:Zmax)')
set(pE, 'linewidth', 0.5)
set(pE, 'edgecolor', [1 1 1])
pA = pcolor(Xmm,Ymm,10*AlphaIndA(Amin:Amax, Zmin:Zmax)')
set(pA, 'linewidth', 0.5)
set(pA, 'linewidth', 4)
set(pA, 'edgecolor', 0.7*[1 1 1])
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
xlim([203 212])
ylim([79.5 85.5])
axis off


hHg204 = text(204.5, 80.5, 'Hg')
set(hHg204, 'Fontsize', 24)
hZ80 = text(204.3, 80.8, '80')
set(hZ80, 'Fontsize', 20)
hN204 = text(204.3, 80.2, '204')
set(hN204, 'Fontsize', 20)
%
hTl203 = text(203.5, 81.5, 'Tl')
set(hTl203, 'Fontsize', 24)
hZ81 = text(203.3, 81.8, '81')
set(hZ81, 'Fontsize', 20)
hN203 = text(203.3, 81.2, '203')
set(hN203, 'Fontsize', 20)
%
hTl205 = text(205.5, 81.5, 'Tl')
set(hTl205, 'Fontsize', 24)
hZ81 = text(205.3, 81.8, '81')
set(hZ81, 'Fontsize', 20)
hN205 = text(205.3, 81.2, '205')
set(hN205, 'Fontsize', 20)
%
hPb206 = text(206.5, 82.5, 'Pb')
set(hPb206, 'Fontsize', 24)
hZ82 = text(206.3, 82.8, '82')
set(hZ82, 'Fontsize', 20)
hN206 = text(206.3, 82.2, '206')
set(hN206, 'Fontsize', 20)
%
hPb207 = text(207.5, 82.5, 'Pb')
set(hPb207, 'Fontsize', 24)
hZ82 = text(207.3, 82.8, '82')
set(hZ82, 'Fontsize', 20)
hN207 = text(207.3, 82.2, '207')
set(hN207, 'Fontsize', 20)
%
hPb208 = text(208.5, 82.5, 'Pb')
set(hPb208, 'Fontsize', 24)
hZ82 = text(208.3, 82.8, '82')
set(hZ82, 'Fontsize', 20)
hN208 = text(208.3, 82.2, '208')
set(hN208, 'Fontsize', 20)
%
hBi209 = text(209.5, 83.5, 'Bi')
set(hBi209, 'Fontsize', 24)
hZ83 = text(209.3, 83.8, '83')
set(hZ83, 'Fontsize', 20)
hN209 = text(209.3, 83.2, '209')
set(hN209, 'Fontsize', 20)



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
       h = rectangle('Position', [204 82 1 1]);
       ColorNow = 1 * [1 1 1]
       set (h, "FaceColor", ColorNow);
%
hPb204 = text(204.5, 82.5, 'Pb')
set(hPb204, 'Fontsize', 24)
hZ82 = text(204.3, 82.8, '82')
set(hZ82, 'Fontsize', 20)
hN204 = text(204.3, 82.2, '204')
set(hN204, 'Fontsize', 20)

       h = rectangle('Position', [209 83 1 1]);
       ColorNow = 1 * [1 1 1]
       set (h, "FaceColor", ColorNow);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


titlestr = strcat("s-process termination")
t =title(titlestr)
set(t, 'Fontsize', 20)
figure_name_out=strcat(titlestr,'.png')
print('-dpng', '-r300', figure_name_out), pwd
