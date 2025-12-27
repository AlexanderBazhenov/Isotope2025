% 2025-12-26
% Discovery Year.csv
% z,n,year
##1,0,1918
##2,0,1936
##1,1,1932
##2,1,1934
##3,1,1965
##1,2,1934
##2,2,1908
##3,2,1941
##4,2,1958
##5,2,1967
##6,2,1974
##7,2,2023
##1,3,1981
##2,3,1937
##3,3,1921
##4,3,1938
##5,3,1950
##6,3,1964
##7,3,2002
##8,3,2019
##1,4,2001

FILENAME = 'Discovery Year.csv'

X = csvread (FILENAME);
X(1,:) = [];
X(end,:) = [];

YY = X(:,3);
[S, I] = sort (YY);

figure
plot(S(3:end))

min(S(3:end))
nzero = max(S(3:end))-min(S(3:end))

figure
hist(S(3:end), nzero)
xlim([min(S(3:end))  max(S(3:end))])
filestr = strcat("HIST","_Discovery Year")
figure_name_out=strcat(filestr,'.png')
print('-dpng', '-r300', figure_name_out), pwd

last=1960
xlim([min(S(3:end))  last])
HH = hist(S(3:last),last-min(S(3:end)))

figure
bar(HH)
ylim([0 max(HH)])
