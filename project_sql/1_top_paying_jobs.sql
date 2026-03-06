/*
Question: What are the top paying data analyst jobs.
- Identify top 10 highest paying data analyst jobs available remotely.
- Returns postings with specified salaries.
- Why? Highlight top paying opportunities for data analysts
*/

SELECT
    co.name,
    jp.job_title_short,
    jp.salary_year_avg,
    jp.job_work_from_home
FROM
    job_postings_fact AS jp
LEFT JOIN company_dim AS co ON jp.company_id = co.company_id
    
WHERE
    jp.job_work_from_home = TRUE
    AND jp.job_title_short = 'Data Analyst'
    AND jp.salary_year_avg IS NOT NULL
ORDER BY
    salary_year_avg DESC
LIMIT 10;
