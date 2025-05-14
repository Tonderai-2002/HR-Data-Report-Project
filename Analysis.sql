
-- QUESTIONS

-- 1. What is the gender breakdown of employees in the company?

-- 2. What is the race/ethnicity breakdown of employees in the company?

-- 3. What is the age distribution of employees in the company?


-- 4. How many employees work at headquarters versus remote locations?


-- 5. What is the average length of employment for employees who have been terminated?

-- 6. How does the gender distribution vary across departments and job titles?

-- 7. WHat is the distribution of job titles across the company?
USE hr_project;
SELECT jobtitle, count(*) AS count
FROM hr_data
 WHERE age >= 18 AND termdate = '0000-00-00'
 GROUP BY jobtitle
 ORDER BY jobtitle DESC;
 
 -- 8. Which department has the highest turnover rate
 
 SELECT 
 department,
 total_count,
 terminated_count,
 terminated_count/total_count AS termination_rate
 FROM (
 SELECT department,
 count(*) AS total_count,
 SUM(CASE WHEN termdate<> '0000-00-00' AND termdate <= curdate() THEN 1 ELSE 0 END) AS terminated_count
 FROM hr_data
 WHERE age>=18
 GROUP BY department 
 ) AS subquery
 ORDER BY termination_rate DESC;
 
 -- 9. WHat is the distribution of employess across locations by city and state?
 
 SELECT 
 location_state,
count(*) AS count
 FROM hr_data
 WHERE age >= 18 AND termdate = '0000-00-00'
 GROUP BY location_state
 ORDER BY count(*) DESC;
 
 -- 10. How has the companys employee count changed over time based on hire and term dates?
 SELECT 
 year,
 hires,
 terminations,
 hires - terminations AS net_change,
 round((hires - terminations)/hires*100,2) AS net_change_percent
 FROM(
 SELECT YEAR(hire_date) AS year,
 count(*) AS hires,
 SUM(CASE WHEN termdate <> '0000-00-00' AND termdate <= curdate() THEN 1 ELSE 0 END)AS terminations
 FROM hr_data 
 WHERE age>=18
 GROUP BY YEAR(hire_date)
 ) AS subquery
 ORDER BY year ASC;
 
 -- 11. what is the tenure distribution for each departmen ?
 SELECT 
 department, 
 round(avg(datediff(termdate, hire_date)/365),0) AS avg_tenure
 FROM hr_data 
 WHERE termdate <= curdate() AND termdate<> '0000-00-00' AND age >=18
 GROUP BY department;
 
 SELECT *
 FROM hr_data;