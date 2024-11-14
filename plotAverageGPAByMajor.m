% Author Name: Heidi Kling
% Email: klingh24@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Midterm
% Task: GPA Avergae Visulization
% Date: 11/11/2024

#Creates plot of average GPA by major
function plotAverageGPAByMajor(students)
    majors = unique({students.Major});
    avgGPA = arrayfun(@(m) mean([students(strcmp({students.Major}, m)).GPA]), majors);
    bar(avgGPA);
    set(gca, 'XTickLabel', majors);
    title('Average GPA by Major');
    xlabel('Major');
    ylabel('Average GPA');
end

