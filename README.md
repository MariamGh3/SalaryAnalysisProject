<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Salary Analysis Project</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            margin: 20px;
            background-color: #f4f4f4;
            color: #333;
        }
        h1, h2 {
            color: #2c3e50;
        }
        pre, code {
            background-color: #ecf0f1;
            padding: 10px;
            border-radius: 5px;
        }
        ul {
            list-style-type: none;
            padding-left: 0;
        }
        ul li {
            margin: 10px 0;
        }
        .container {
            max-width: 800px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }
        h1 {
            text-align: center;
        }
        .code-block {
            background-color: #2d3436;
            color: #ecf0f1;
            border-radius: 5px;
            padding: 15px;
            margin: 20px 0;
        }
        .code-block pre {
            margin: 0;
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>Salary Analysis Project</h1>

        <h2>Project Summary</h2>
        <p>This project provides an in-depth analysis of salary data to uncover trends related to job titles, experience, gender, race, and country. The dataset includes columns such as Age, Gender, Education Level, Job Title, Years of Experience, Salary, Country, Race, and Seniority. Through this project, I aimed to gain insights into which job titles offer the best salary growth, how experience levels correlate with salaries, and how salaries differ across genders and countries.</p>
        <p>The project uses various techniques like:</p>
        <ul>
            <li>Data cleaning and preprocessing in Python</li>
            <li>Data analysis in MySQL with complex queries</li>
            <li>Data visualization in Tableau for meaningful insights</li>
        </ul>
        <p>This analysis could be used by individuals making career decisions, companies optimizing their hiring strategies, or HR departments benchmarking their salaries.</p>

        <h2>Technologies Used</h2>
        <ul>
            <li><strong>Python</strong>: Data cleaning and processing using Pandas and NumPy.</li>
            <li><strong>MySQL</strong>: Data storage and SQL queries for analysis.</li>
            <li><strong>Tableau</strong>: Data visualization to generate impactful charts and dashboards.</li>
        </ul>

        <h2>Key Features</h2>
        <ul>
            <li><strong>Data Cleaning and Preprocessing in Python:</strong> Removing duplicates, handling missing values, and converting data types for consistent analysis.</li>
            <li><strong>SQL Analysis in MySQL:</strong> Aggregating salaries by job title, country, and gender, ranking job titles by average salary and years of experience, and exploring salary growth trends over experience.</li>
            <li><strong>Interactive Tableau Visualizations:</strong> Salary distribution by country and gender, job titles with the highest average salary and salary growth, and top-paying jobs by years of experience and seniority.</li>
        </ul>

        <h2>Project Structure</h2>
        <pre>
            |-- salary_data.csv           # Cleaned CSV file containing salary data
            |-- Salary_Analysis.ipynb     # Jupyter notebook with Python data cleaning and analysis
            |-- mysql_queries.sql         # SQL script with MySQL queries for analysis
            |-- tableau_visualizations/    # Folder containing Tableau workbook and visualizations
                |-- Salary_Analysis.twb     # Tableau workbook
                |-- dashboard.png          # Screenshot of the final Tableau dashboard
        </pre>

        <h2>Setup Instructions</h2>
        <h3>1. Install Python Libraries</h3>
        <p>If you are starting from scratch, clone this repository and install the necessary Python libraries:</p>
        <pre><code>pip install pandas numpy mysql-connector-python matplotlib seaborn</code></pre>

        <h3>2. Setting up MySQL Database</h3>
        <p>Run the following SQL script to create the database and the salary data table:</p>
        <pre class="code-block">
            CREATE DATABASE SalaryAnalysis;
            USE SalaryAnalysis;

            CREATE TABLE salary_data (
                ID INT AUTO_INCREMENT PRIMARY KEY,
                Age INT,
                Gender VARCHAR(10),
                Education_Level INT,
                Job_Title VARCHAR(50),
                Years_of_Experience FLOAT,
                Salary FLOAT,
                Country VARCHAR(20),
                Race VARCHAR(20),
                Senior INT
            );
        </pre>

        <h3>3. Load Data into MySQL</h3>
        <p>Use the <code>mysql_queries.sql</code> script to insert the cleaned data from the <code>salary_data.csv</code> file into the MySQL database. You can also use the Python script provided to automate the process.</p>

        <h3>4. Open Tableau Workbook</h3>
        <p>Open the <code>Salary_Analysis.twb</code> Tableau workbook in Tableau Desktop or Tableau Public to explore the visualizations.</p>

        <h2>Visualizations in Tableau</h2>
        <ul>
            <li><strong>Top-Paying Jobs by Country:</strong> Bar chart showing the highest-paying job titles in each country.</li>
            <li><strong>Salary Distribution by Gender:</strong> Pie chart showing the salary distribution between males and females.</li>
            <li><strong>Salary Growth Over Experience:</strong> Line chart showing how salaries increase with years of experience for different job titles.</li>
            <li><strong>Top 5 Most Common Job Titles:</strong> Bar chart showing the five most common job titles by country.</li>
        </ul>

        <h2>SQL Queries</h2>
        <p>The project includes a variety of SQL queries for analyzing the salary data. Below are some of the examples:</p>

        <pre class="code-block">
            -- Average Salary by Country
            SELECT Country, AVG(Salary) AS Avg_Salary 
            FROM salary_data 
            GROUP BY Country;
        </pre>

        <pre class="code-block">
            -- Top 5 Paying Jobs
            SELECT Job_Title, ROUND(AVG(Salary), 2) AS Avg_Salary
            FROM salary_data
            GROUP BY Job_Title
            ORDER BY Avg_Salary DESC
            LIMIT 5;
        </pre>

        <pre class="code-block">
            -- Salary Growth by Job Title and Experience
            SELECT Job_Title, AVG(Salary) AS Avg_Salary, AVG(Years_of_Experience) AS Avg_Experience
            FROM salary_data
            GROUP BY Job_Title
            ORDER BY Avg_Salary DESC;
        </pre>

        <h2>Conclusion</h2>
        <p>This project allows stakeholders to make informed decisions based on a rich analysis of salary data. The data-driven insights into the relationship between salary, experience, and job title can guide professionals and companies alike in understanding market trends and shaping their compensation strategies.</p>

        <h2>Future Improvements</h2>
        <ul>
            <li>Expand the dataset to include more countries and job titles for deeper analysis.</li>
            <li>Incorporate additional factors like company size and industry to further refine salary insights.</li>
            <li>Implement machine learning models to predict salary based on various attributes such as job title, experience, and education level.</li>
        </ul>

        <h2>License</h2>
        <p>This project is licensed under the MIT License – see the <a href="LICENSE">LICENSE</a> file for details.</p>
    </div>

</body>
</html>
