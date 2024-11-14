% Author Name: Andrew Slavin
% Email: slavin36@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Midterm
% Task: Main Script
% Date: 11/13/2024

% Creates plot of average GPA by major
function plotAverageGPAByMajor(students)
    majors = unique({students.Major});
    avgGPA = arrayfun(@(m) mean([students(strcmp({students.Major}, m)).GPA]), majors);
    bar(avgGPA);
    set(gca, 'XTickLabel', majors);
    title('Average GPA by Major');
    xlabel('Major');
    ylabel('Average GPA');
end

