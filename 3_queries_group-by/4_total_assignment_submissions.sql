select cohorts.name as cohort, count(assignment_submissions.*) as total_submissions
from cohorts
join students on cohorts.id = cohort_id
join assignment_submissions on students.id = student_id
group by cohort
order by total_submissions desc;


-- Answer from compass
-- SELECT cohorts.name as cohort, count(assignment_submissions.*) as total_submissions
-- FROM assignment_submissions
-- JOIN students ON students.id = student_id
-- JOIN cohorts ON cohorts.id = cohort_id
-- GROUP BY cohorts.name
-- ORDER BY total_submissions DESC;