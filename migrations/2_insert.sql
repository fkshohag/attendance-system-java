insert into attendance.roles (id, name, created_at, updated_at)
values  (1, 'admin', '2021-01-26 08:07:56', '2021-01-26 08:07:56'),
        (2, 'teacher', '2021-01-26 08:09:44', '2021-01-26 08:09:44'),
        (3, 'user', '2021-01-26 08:09:44', '2021-01-26 08:09:44'),
        (4, 'student', '2021-01-26 08:09:44', '2021-01-26 08:09:44'),
        (5, 'authority', '2021-01-26 08:09:44', '2021-01-26 08:09:44');

insert into attendance.users (id, first_name, last_name, gender, email, password, role_id, phone, created_at, updated_at)
values (1, 'Md.', 'Shohag', 'male', 'shohag.fks@gmail.com', 'shohag', 1, '01776179924', '2021-01-26 08:16:09', '2021-01-26 08:16:09');
