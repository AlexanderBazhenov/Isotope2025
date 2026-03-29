% 2026-03-29
% Thomson 1897

##			Air	& 8/110 & 5.5  & 1.5 & 5  & 1.3 & 2.8  \\
##			Air	& 9.5/110 & 5.4  & 1.5 & 5  & 1.1 & 2.8  \\
##			Air	& 13/110 & 6.6 & 1.5 & 5  & 1.2 & 2.3  \\
##			Hydrogen	& 9/110 & 6.3 & 1.5 & 5  & 1.5 & 2.5  \\
##			Carbonicacid	& 11/110 & 6.9 & 1.5 & 5  & 1.5 & 2.2  \\
##			Air	& 6/110 & 5 & 1.8 & 5  & 1.3 & 3.6  \\
##			Air	& 7/110 & 3.6 & 1.8 & 5  & 1.1 & 2.8 \\
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ThomsonData  = [
 8/110  5.5   1.5  5   1.3  2.8  ;
	 9.5/110  5.4   1.5  5   1.1  2.8  ;
	 13/110  6.6  1.5  5   1.2  2.3  ;
	 9/110  6.3  1.5  5   1.5  2.5  ;
	 11/110  6.9  1.5  5   1.5  2.2  ;
	 6/110  5  1.8  5   1.3  3.6  ;
	 7/110  3.6  1. 5   1.1  2.8 ;
]

theta = ThomsonData(:,1)
H = ThomsonData(:,2)
F = ThomsonData(:,3)
l = ThomsonData(:,4)
me = ThomsonData(:,5)
v = ThomsonData(:,6)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

pkg load interval

err = 0.1/2
thetaint = midrad(theta, err*theta)
Hint = midrad(H, err*H)
Fint = midrad(F, err*F)
lint = midrad(l, err*l)
%
for ii=1:length(me)
  memid(ii) = H(ii)^2*l(ii)/(F(ii)*theta(ii));
  vmid(ii) = F(ii)/H(ii);
end
%

for ii=1:length(me)
  meint(ii) = Hint(ii)^2*lint(ii)/(Fint(ii)*thetaint(ii));
  vint(ii) = Fint(ii)/Hint(ii);
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
OxfordBlue = [0, .33, .71]
RoyalMail = 4.58*[0.218, .032, 0.042]
Pantone = 3*[0.128, 0.140, 0.036]

figure
hold on
h1 = errorbar (1:length(me), mid(meint)/1000, rad(meint)/1000,".b");
set (h1, 'linewidth', 2);
set (h1, 'color', RoyalMail);

xticksarray = [1:length(me)]
xticks(xticksarray)

set(gca, 'fontsize', 16)
grid on

xlabel('k')
ylabel('m/e, 10^{-7} ')

figure_name_out=strcat('Thosmon',' err=',num2str(err),'.png')
print('-dpng', '-r300', figure_name_out), pwd

[ min(inf(meint)), max(sup(meint)) ]
[ max(inf(meint)), min(sup(meint)) ]

dirroot2 = 'd:\ST\2026\T\'
addpath(dirroot2)

X = meint/1000
[mode, mu_array, max_mu, mode_ind, c_array, C, multi]= modeIR4(X)
retval = ModePlot (mode, mu_array, max_mu, mode_ind, c_array, C, multi) %, PlotColor)
xlim([0.6 2.2])
xlabel('m/e')
figure_name_out=strcat('ThosmonMode',' err=',num2str(err),'.png')
print('-dpng', '-r300', figure_name_out), pwd

