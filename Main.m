% Author Name: Andrew Slavin
% Email: slavin36@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Midterm
% Task: Main Script
% Date: 11/13/2024

clear;
clc;


db = StudentDatabase();

% Creates 6 students with vaiorus attriutes
s1 = Student('1', 'Mike', 16, 3.2, 'MechE');
s2 = Student('2', 'Steve', 19, 3.9, 'ChemE');
s3 = Student('3', 'April', 20, 2.6, 'Computer Science');
s4 = Student('4', 'Ashley', 26, 4.0, 'Civil Engineering');
s5 = Student('5', 'Adam', 17, 3.1, 'Buisness');
s6 = Student('6', 'Alyssa', 18, 1.8, 'EcE');

% Add students to the database
db = db.addStudent(s1);
db = db.addStudent(s2);
db = db.addStudent(s3);
db = db.addStudent(s4);
db = db.addStudent(s5);
db = db.addStudent(s6);

% Save database to a file
db.saveToFile('studentDatabase.mat');

% Load database from a file
loadedDB = db.loadFromFile('studentDatabase.mat');

% Find student by ID
studentFound = loadedDB.findStudentByID('002');
if ~isempty(studentFound)
    studentFound.displayInfo();
end

% List students by major
csStudents = loadedDB.getStudentsByMajor('Computer Science');
for i = 1:length(csStudents)
    csStudents(i).displayInfo();
end

% Generate graphs
figure;
subplot(3, 1, 1);
plotGPADistribution(loadedDB.Students);

subplot(3, 1, 2);
plotAverageGPAByMajor(loadedDB.Students);

subplot(3, 1, 3);
plotAgeDistribution(loadedDB.Students);
