            ---Dashboard report
--- Today attendance student for a specific section
select * from attendance
where section_id = {section_id}
and created_by = {today}


--- Today number of student was attendance
select count(id) from attendance
where section_id = {section_id}
  and created_by = {today}


--- Number of teacher
select count(id) from users
where role_id = {teacher_role}


            ---Log report

--- class log

select cl.schedule, cl.date, cl.duration, cl.remark, us.first_name, us.last_name
from class_logs cl
where section_id = {section_id}
and date = {today}
inner join sections sec on class_logs.section_id = sections.id
inner join users us on class_logs.created_by = users.id


