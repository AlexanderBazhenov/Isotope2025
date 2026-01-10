% 2026-01-10
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     Time Slices Colors  %%%%%%%%%%%%%%%%%%%%%%%%

gradeNo = length(YYall)
%step = fix(length(viridis)/ gradeNo /2)
step = fix(length(viridis)/ gradeNo )
ColorArrayAll = viridis;
ColorArray= zeros(gradeNo,3);
for ii = 1:gradeNo-1
%  argcolor = fix(length(viridis) /2) + ii*step;
    argcolor =  ii*step;
  ColorArray(ii,:) = ColorArrayAll(argcolor,:);
end
ColorArray(end,:) = ColorArrayAll(end,:)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     /Time Slices Colors  %%%%%%%%%%%%%%%%%%%%%%%
