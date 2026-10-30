function [maleIsoIndMeans,femaleIsoIndMeans,maleGroupIsoMean,femaleGroupIsoMean]= genderIsoCalc(D1,D2,D3,Gender)
%calculate each subjects mean across 3 days, and then separate them by
%gender 

Day1=D1;
Day2=D2;
Day3=D3;
Alldays=[D1,D2,D3];
subjectMean= mean(Alldays,2);
maleIsoIndMeans=subjectMean(Gender== 'M');
femaleIsoIndMeans = subjectMean(Gender == 'F');
maleGroupIsoMean = mean(maleIsoIndMeans);
femaleGroupIsoMean = mean(femaleIsoIndMeans);

end