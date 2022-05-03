select cohorts.name, avg(completed_at - started_at) as average_assistance_request_time
from assistance_requests
join students on students.id = student_id
join cohorts on cohorts.id = cohort_id
group by cohorts.name
order by average_assistance_request_time desc
limit 1;