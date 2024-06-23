
-- Split timestamp to keeq date only ::DATE

SELECT 
    job_title_short AS title,
    job_location AS location,
    job_posted_date::DATE as date

FROM 
    job_postings_fact


-- Convert time zone using AT TIME ZONE
SELECT 
    job_title_short AS title,
    job_location AS location,
    job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'EST' as date_time

FROM 
    job_postings_fact
LIMIT 5


-- Extract year, month zone using Extract .

SELECT 
    job_title_short AS title,
    job_location AS location,
    job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'EST' as date_time,
    EXTRACT(MONTH FROM job_posted_date) AS date_month,
    EXTRACT(YEAR FROM job_posted_date) AS date_year

FROM 
    job_postings_fact
LIMIT 5

SELECT 
        COUNT(job_id) AS job_posted_count,
        EXTRACT(MONTH FROM job_posted_date) AS month
FROM 
    job_postings_fact
WHERE 
    job_title_short = 'Data Analyst'
GROUP BY 
    month
ORDER BY 
    job_posted_count DESC;