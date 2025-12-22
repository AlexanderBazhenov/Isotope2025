% 2025-12-03
% Сечение (n.g) при энергии нейтрона 0.0253 эВ (293К). барн
##Nuclei	203	204	205	206	207	208	209	210	211
##Po	5.25E-02	2.66E-02	3.21E-02	1.62E-02	1.85E-02	9.64E-03	8.24E-03	3.05E-02	5.4e-3**
##Bi	3.12E-02	3.31E-02	1.82E-02	1.73E-02	9.60E-03	7.50E-03	3.42E-02	5.40E-05	5.27E-03
##Pb	1.41E-02	0.703	5.00E-03	6.30E-03	6.22E-01	2.30E-04	1.07E-03	5.00E-04	2.54E-03
##Tl	1.14E-02	2.16E-02	1.04E-04	3.58E-04	9.53E-04	2.51E-03	2.42E-03	5.40E-03	4.36E-03
% ** Для Po-211 данные для основного состояния в базе данных отсутствуют. приведено значение для 1-го метастабильного состояния
% https://tendl.web.psi.ch/tendl_2019/neutron_html/neutron.html

Sigma8184 = [
5.25E-02	2.66E-02	3.21E-02	1.62E-02	1.85E-02	9.64E-03	8.24E-03	3.05E-02	5.4e-3 % 84
3.12E-02	3.31E-02	1.82E-02	1.73E-02	9.60E-03	7.50E-03	3.42E-02	5.40E-05	5.27E-03 % 83
1.41E-02	0.703	5.00E-03	6.30E-03	6.22E-01	2.30E-04	1.07E-03	5.00E-04	2.54E-03 % 82
1.14E-02	2.16E-02	1.04E-04	3.58E-04	9.53E-04	2.51E-03	2.42E-03	5.40E-03	4.36E-03 % 81
]

figure
 imagesc(Sigma8184)
 % surf(100*Sigma8184)
caxis([0.00 0.1])
colorbar("NorthOutside")

set(gca, 'Fontsize', 14)
xlabel('A')
ylabel('Z')


axis on
xTICK = [1	2 3 4 5 6 7 8 9]
xticks(xTICK)
xTICKVAL = [203	204	205	206	207	208	209	210	211]
xticklabels(xTICKVAL)

yTICK = [1 2 3 4]
yticks(yTICK)
yTICKVAL = [84 83 82 81 ]
yticklabels(yTICKVAL)
grid on

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
titlestr = strcat("NGammaSectionPb")
%ht = title(titlestr)
%set(ht, 'Fontweight', 'normal')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
filestr = strcat(titlestr)
figure_name_out=strcat(filestr,'.png')
print('-dpng', '-r300', figure_name_out), pwd


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
titlestr = strcat("Jaccard usual")
ht = title(titlestr)
set(ht, 'Fontweight', 'normal')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
filestr = strcat(titlestr)
figure_name_out=strcat(filestr,'.png')
print('-dpng', '-r300', figure_name_out), pwd
