% Author Name: Heidi Kling
% Email: klingh24@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Midterm
% Task: Main Script
% Date: 11/11/2024

clear;
clc;


db = StudentDatabase();

#creates 6 students with vaiorus attriutes
s1 = Student('1', 'Alice', 20, 3.5, 'MechE');
s2 = Student('2', 'Bob', 22, 3.8, 'Mathematics');
s3 = Student('3', 'Charlie', 21, 3.2, 'Computer Science');
s4 = Student('4', 'David', 23, 3.4, 'Physics');
s5 = Student('5', 'Thomas', 21, 3.6, 'EcE');
s6 = Student('6', 'Samantha', 20, 3.0, 'MechE');

# Add students to the database
db = db.addStudent(s1);
db = db.addStudent(s2);
db = db.addStudent(s3);
db = db.addStudent(s4);
db = db.addStudent(s5);
db = db.addStudent(s6);

# Save database to a file
db.saveToFile('studentDatabase.mat');

# Load database from a file
loadedDB = db.loadFromFile('studentDatabase.mat');

# Find a student by ID
studentFound = loadedDB.findStudentByID('002');
if ~isempty(studentFound)
    studentFound.displayInfo();
end

# Get students by major
csStudents = loadedDB.getStudentsByMajor('Computer Science');
for i = 1:length(csStudents)
    csStudents(i).displayInfo();
end

# Generate visualizations
figure;
subplot(3, 1, 1);
plotGPADistribution(loadedDB.Students);

subplot(3, 1, 2);
plotAverageGPAByMajor(loadedDB.Students);

subplot(3, 1, 3);
plotAgeDistribution(loadedDB.Students);
