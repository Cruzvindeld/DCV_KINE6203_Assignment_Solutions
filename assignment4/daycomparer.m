function [Day1toDay2,Day2toDay3] = daycomparer(SubjectID,Day1,Day2,Day3)
%return a matrix with the SubjectsID who increase from D1 to D2 or from 
% D2 to D3
%write more detailed comments

Day1toDay2=SubjectID(Day2>Day1)
Day2toDay3=SubjectID(Day3>Day2)

end