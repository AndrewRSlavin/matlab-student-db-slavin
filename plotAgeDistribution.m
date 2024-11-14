% Author Name: Heidi Kling
% Email: klingh24@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Midterm
% Task: Age Distrabution Visulization
% Date: 11/11/2024

#Creates a age distrabution histogram
function plotAgeDistribution(students)
    ages = [students.Age];
    histogram(ages, 'FaceColor', 'r');
    title('Age Distribution');
    xlabel('Age');
    ylabel('Number of Students');
end
