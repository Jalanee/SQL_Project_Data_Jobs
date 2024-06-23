/* 

A CASE expression in SQL is a way to apply conditional logic within your SQL queries.

Syntax:

SELECT 
    CASE
        WHEN column_name = 'value1' THEN  'Description for Value1'
        WHEN column_name = 'value1' THEN  'Description for Value2'
        ELSE 'Other'
    END AS column_description
FROM
    table_name;
*/

/* Execise 

Label new column as follows:
- 'Anywhere' job as 'Remote'
- 'New York, NY' jobs as 'Local'
-  Otherwise 'Onsite'

*/

SELECT 
    COUNT(job_id) AS number_of_jobs,
    job_title_short,
    job_location,
    CASE
        WHEN job_location = 'Anywhere' THEN 'Remote'
        WHEN job_location = 'New York, NY' THEN 'Local'
        ELSE 'Onsite'
    END AS location_category

FROM job_postings_fact



SELECT 
    COUNT(job_id) AS number_of_jobs,
    
    CASE
        WHEN job_location = 'Anywhere' THEN 'Remote'
        WHEN job_location = 'New York, NY' THEN 'Local'
        ELSE 'Onsite'
    END AS location_category

FROM job_postings_fact
WHERE  job_title_short = 'Data Analyst'
GROUP BY
    location_category;