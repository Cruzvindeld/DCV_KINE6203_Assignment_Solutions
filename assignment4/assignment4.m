% Using your import function, import each column as a separate vector and
% use the column headers as the variable names.

[SubjectID,Age,Gender,Weight,Day1,Day2,Day3]=importfile('isok_data_6803.csv');

%function for maleIsoIndMeans,maleGroupIsoMean, femaleIsoIndMeans,femaleGroupIsoMean
%call this function using 
[maleIsoIndMeans,maleGroupIsoMean, femaleIsoIndMeans,femaleGroupIsoMean]=genderIsoCalc(Day1,Day2,Day3,Gender);

%day comparer function compares subject each day to see if there is 
%increase
[Day1toDay2,Day2toDay3]= daycomparer(SubjectID,Day1,Day2,Day3);

%normalize the iso-kinetic data for each day and then calculate the mean
normDay1=Day1 ./ Weight;
normDay2=Day2 ./ Weight;
normDay3=Day3 ./ Weight;
normDay1mean= mean(normDay1);
normDay2mean = mean(normDay2);
normDay3mean = mean(normDay3);

%Export your results to a csv file: iso_results.csv.
iso_results=table(normDay1mean',normDay2mean',normDay3mean', ...
    'VariableNames',{'normDay1mean','normDay2mean','normDay3mean'});
writetable(iso_results,'iso_results.csv');