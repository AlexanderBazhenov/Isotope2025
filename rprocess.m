% 2025-10-27
% {\bf Arnould M.}
% The r-process of stellar nucleosynthesis: Astrophysics and nuclear physics achievements and mysteries / M. Arnould, S. Goriely, K. Takahashi //
% Physics Reports --- 2007. --- Vol. 450 --- P. 97 – 213.
% Z A standard min max
%
ZAr = load("r-process contribution.txt");

Zr =ZAr(:, 1);
Ar =ZAr(:, 2);
Standardr = ZAr(:, 3);
Minr = ZAr(:, 4);
Maxr = ZAr(:, 5);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure

hrmarker = semilogy(Ar, Standardr, 'ok')
set(hrmarker, 'color', [0 0 1])

set(gca, 'Fontsize', 14)
xlim( [55 215] )
grid on
xlabel('A')
ylabel('r-abudances. [Si=10^6]')

titlestr = strcat("r-abudances")
ht = title(titlestr)
set(ht, 'Fontweight', 'normal')

figure_name_out=strcat("r-abudances",'.png')
print('-dpng', '-r300', figure_name_out), pwd
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
