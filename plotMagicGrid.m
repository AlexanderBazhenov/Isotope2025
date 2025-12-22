% 2025-12-19
% plot Magic Grid


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure
hold on
xlim([0 170])
ylim([1 110])

axis on
xTICKVAL = [8 20 28 50 82 126]
xticks(xTICKVAL)
yTICKVAL = [8 20 28 50 82 ]
yticks(yTICKVAL)
% Grid Magic
for ii=1:length(xTICKVAL)
  xx = [ xTICKVAL(ii)+0.5  xTICKVAL(ii)+0.5 ]
  yy = [ 0 110 ]
  hGx = plot(xx, yy, '--k')
end
for ii=1:length(yTICKVAL)
  yy = [ yTICKVAL(ii)+0.5  yTICKVAL(ii)+0.5 ]
  xx = [ 0 170 ]
  hGy = plot(xx, yy, '--k')
end
