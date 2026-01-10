% 2026-01-09
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Plot Data %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ww = 1
hh = 1
%
for ii = 1:NN
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
YY = X(ii,3);
% check YY in grade
for kk=1:gradeNo-1
%kk
  if ( YY >= YYall(kk)  & YY < YYall(kk+1) )
    xx = X(ii,1)+X(ii,2);
    yy = X(ii,1);
    h = rectangle('Position', [xx-1/2 yy-1/2 ww hh]);
    ColorNow = ColorArray(kk,:);
    set (h, "FaceColor", ColorNow);
    set (h, "EdgeColor", 0.9*[1 1 1]);
  endif
end
kk = gradeNo;
  if ( YY > YYall(kk-1)   )
    xx = X(ii,1)+X(ii,2);
    yy = X(ii,1);
    h = rectangle('Position', [xx-1/2 yy-1/2 ww hh]);
    ColorNow = ColorArray(kk,:);
    set (h, "FaceColor", ColorNow);
    set (h, "EdgeColor", 0.9*[1 1 1]);
  endif
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% /Plot Data %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

