% Author Name: Heidi Kling
% Email: klingh24@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Midterm
% Task: GPA Distrabution Visulization
% Date: 11/11/2024

#Creates plot of GPA distrabution
function plotGPADistribution(students)
    gpas = [students.GPA];
    histogram(gpas, 'FaceColor', 'b');
    title('GPA Distribution');
    xlabel('GPA');
    ylabel('Number of Students');
end
