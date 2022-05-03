select count(assistance_requests.*) as total_assistances, students.name
from assistance_requests
join students on students.id = student_id
where students.name = 'Elliot Dickinson'
group by students.name;