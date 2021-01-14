%% Calculate Grades
load classGrades
disp(namesAndGrades(1:5, :))
grades = namesAndGrades(:, 2:end);
mean(grades) %results include NaNs
meanGrades = nanmean(grades) %doesn't consider absent students
meanMatrix = ones([15, 1]) * meanGrades;
row = [1, 15];
col = [1, 7];
curvedGrades = 3.5*(grades./meanMatrix); %./ does element-by-element division
nanmean(curvedGrades)
curvedGrades(curvedGrades > 5) = 5;
totalGrade = ceil(nanmean(curvedGrades.'));
letters = 'FDCBA';
letterGrades = letters(totalGrade);
disp(['Grades: ', letterGrades])
