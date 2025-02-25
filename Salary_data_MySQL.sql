SELECT * FROM salary_data;
 

 -- Average salary by country
SELECT Country, ROUND(AVG(Salary), 2) AS Avg_Salary
FROM salary_data
GROUP BY Country;

-- Top 10 Average Salary by Job_title
SELECT Job_title, ROUND(AVG(salary),2) AS Avg_salary
FROM salary_data
GROUP BY Job_title
ORDER BY Avg_salary DESC
LIMIT 10;

-- Average salary by experience

SELECT Years_of_Experience, Round(AVG(Salary),2) AS Avg_Salary 
FROM salary_data 
GROUP BY Years_of_Experience 
ORDER BY Years_of_Experience;

-- Average salary by gender and country

SELECT Gender, Country, Round(AVG(Salary),2) AS Avg_Salary 
FROM salary_data 
GROUP BY Gender, country
ORDER BY Country;

-- Salary Distribution by Job Title & Gender

SELECT Job_Title, 
       Gender,
       ROUND(MIN(Salary), 2) AS Min_Salary,
       ROUND(MAX(Salary), 2) AS Max_Salary,
       ROUND(AVG(Salary), 2) AS Avg_Salary
FROM salary_data
GROUP BY Job_Title, Gender
ORDER BY Job_Title, Gender;

-- SQL Query for Top 5 Most Common Job Titles in Each Country

WITH JobRank AS (
    SELECT Country,
           Job_Title,
           COUNT(*) AS Job_Title_Count,
           RANK() OVER (PARTITION BY Country ORDER BY COUNT(*) DESC) AS ranked
    FROM salary_data
    GROUP BY Country, Job_Title
)
SELECT Country,
       Job_Title,
       Job_Title_Count
FROM JobRank
WHERE Ranked <= 5
ORDER BY Country, Ranked;


