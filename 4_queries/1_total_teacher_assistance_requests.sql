select count(assistance_requests.*) as total_assistances, teachers.name
from assistance_requests
join teachers on teachers.id = teacher_id
where teachers.name = 'Waylon Boehm'
group by teachers.name;