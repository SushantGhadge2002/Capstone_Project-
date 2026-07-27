
-- Query 1:
-- Filter patients whose age is greater than 50

SELECT *
FROM heart_data
WHERE age > 50;


-- Query 2:
-- Count total patients according to gender

SELECT 
    sex,
    COUNT(*) AS Total_Patients
FROM heart_data
GROUP BY sex;


-- Query 3:
-- Average cholesterol by chest pain type with HAVING condition

SELECT 
    cp,
    AVG(chol) AS Avg_Cholesterol
FROM heart_data
GROUP BY cp
HAVING AVG(chol) > 200;


-- Query 4:
-- Top 10 patients with highest cholesterol

SELECT 
    age,
    chol,
    thalach
FROM heart_data
ORDER BY chol DESC
LIMIT 10;


-- Query 5:
-- Patients older than 50 with heart disease

SELECT *
FROM heart_data
WHERE age > 50
AND target = 1;


-- Query 6:
-- Average maximum heart rate based on heart disease status

SELECT 
    target,
    AVG(thalach) AS Avg_Heart_Rate
FROM heart_data
GROUP BY target;
