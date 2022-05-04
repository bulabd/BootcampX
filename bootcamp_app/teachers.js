const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

pool.query(`
select distinct teachers.name as teacher, cohorts.name as cohort, count(assistance_requests) as total_assistances
from assistance_requests
join teachers on teachers.id = teacher_id
join students on students.id = student_id
join cohorts on cohorts.id = cohort_id
where cohorts.name = '${process.argv[2] || 'JUL02'}'
group by teachers.name, cohorts.name
order by teachers.name;
`)
.then(res => {
  res.rows.forEach(row => {
    console.log(`${row.cohort}: ${row.teacher}`);
  })
})
.catch(err => console.error('query error', err.stack));