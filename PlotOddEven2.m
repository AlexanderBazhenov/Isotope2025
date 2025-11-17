 2025-11-17
%%%%%%%%%%%%%%%%%%%%% Plot Odd-Odd, ... Even-Even %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

EEind = zeros(length(N),1);
EOind = zeros(length(N),1);
OEind = zeros(length(N),1);
OOind = zeros(length(N),1);

for ii=1:length(StableInd2)
  if ( StableInd2(ii) ==1 )
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    if (mod(StableZind2(ii),2) == 0) & (mod(StableNind2(ii),2) == 0)
      EEind(ii) = 1;
   end
    if (mod(StableZind2(ii),2) == 0) & (mod(StableNind2(ii),2) == 1)
      EOind(ii) = 1;
   end
   if (mod(StableZind2(ii),2) == 1) & (mod(StableNind2(ii),2) == 0)
      OEind(ii) = 1;
   end
   if (mod(StableZind2(ii),2) == 1) & (mod(StableNind2(ii),2) == 1)
      OOind(ii) = 1;
   end
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 end
end

sum(OOind)
sum(EEind)
sum(OEind)
sum(EOind)

figure
hold on
for ii=1:length(StableInd2)
  if ( OOind(ii) ==1 )
   pOOind = plot(StableNind2(ii), StableZind2(ii),'sk');
 end
 if ( EEind(ii) ==1 )
   pEEind = plot(StableNind2(ii), StableZind2(ii),'sr');
 end
  if ( OEind(ii) ==1 )
   pOEind = plot(StableNind2(ii), StableZind2(ii),'sb');
 end
 if ( EOind(ii) ==1 )
   pEOind = plot(StableNind2(ii), StableZind2(ii),'sg');
 end
end
lgdOE = legend([pOOind pEEind pOEind pEOind],{"Нечет-нечет", "Чет-чет", ...
"Нечет-чет", "Чет-нечет"});
set(lgdOE, 'fontsize', 18)
set(lgdOE, 'location', 'North')



xlim([1 150])
ylim([1 100])
set(gca, 'Fontsize', 18)
xlabel('N, число нейтронов')
ylabel('Z, электрический заряд')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
axis on
xTICKVAL = [8 20 28 50 82 126]
xticks(xTICKVAL)
yTICKVAL = [8 20 28 50 82 ]
yticks(yTICKVAL)
grid on
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
hbox = rectangle("Position", [0,1,149,99] )
set(hbox, 'EdgeColor', 0.1*[1 1 1])
set(hbox, 'linewidth', 1)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
titlestr = strcat("Стабильные изотопы различной четности")
ht = title(titlestr)
set(ht, 'Fontweight', 'normal')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
filestr = strcat("StableParity")
figure_name_out=strcat(filestr,'.png')
print('-dpng', '-r300', figure_name_out), pwd
