CREATE DATABASE SalaryAnalysis;

USE SalaryAnalysis;

CREATE TABLE salary_data (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Age INT,
    Gender VARCHAR(20),  -- Adjusted to accommodate different gender options
    Education_Level INT,
    Job_Title VARCHAR(100),  -- Adjusted to accommodate longer job titles
    Years_of_Experience FLOAT,
    Salary FLOAT,
    Country VARCHAR(50),  -- Adjusted to accommodate country names
    Race VARCHAR(50),  -- Adjusted to accommodate race names
    Senior INT
);
