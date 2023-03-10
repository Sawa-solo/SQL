
create table employees(
id serial primary key,
employee_name Varchar(50) not null);

select * from employees;

insert into employees (employee_name)
values ('Reggie Batey'), 
('Clara Poore'), 
('Tammy Galindo'), 
('Rickey Jones'), 
('Jill Anspach'), 
('Lacy Racicot'), 
('David Macias'), 
('Jessica Manns'), 
('Amber Holcomb'), 
('Betty Wells'), 
('Miguel Fletcher'), 
('Joseph Hodges'), 
('Ida Bohannon'), 
('Cindy Merrifield'), 
('Mary Dowell'), 
('Marie Thomas'), 
('Donald Fierro'), 
('Anna Wick'), 
('Robert Harian'), 
('Michael Mark'), 
('Lucius Patterson'), 
('Lorna Rose'), 
('Karen Santiago'), 
('Peggy Beachler'), 
('Chester Baird'), 
('Ronda Colley'), 
('Robert Chapman'), 
('Sandra Hibbard'), 
('Steven Pagano'), 
('Ramona Russell'), 
('Ryan Morgan'), 
('Shannon Daugherty'), 
('Charlene Little'), 
('Steve Lewandowski'), 
('Donnie Shoemaker'), 
('Veronica Treto'), 
('Jonathon Belanger'), 
('William Hughes'), 
('Courtney Alston'), 
('Isaac Walters'), 
('Leon Ashcraft'), 
('Daniel Patterson'), 
('Randall Phillips'), 
('James Williams'), 
('Nancy Searles'), 
('Edward Hilliard'), 
('Joel Vandevelde'), 
('Nancy Bravo'), 
('Jesse Clark'), 
('Gregory Magelssen'), 
('Ella Cortez'), 
('Michael Diaz'), 
('Robert Walsh'), 
('Valorie Seibert'), 
('Yoshiko Miller'), 
('Timothy Johnson'), 
('Lita Webb'), 
('Lindsay Barrera'), 
('Jacqulyn Matthews'), 
('Lee Rehart'), 
('Fred Spencer'), 
('Melinda Webster'), 
('Shawn Pretti'), 
('Betty Schaefer'), 
('Barbara Teets'), 
('Patricia Tomas'), 
('Mattie Kelley'), 
('Mary Yates'), 
('Andrea Croes'), 
('Amanda Riley');



create table salaryy (
id serial primary key,
monthly_salary int not null);

select * from salaryy;

insert into salaryy (monthly_salary)
values (1000),
(1100),
(1200),
(1300),
(1400),
(1500),
(1600),
(1700),
(1800),
(1900),
(2000),
(2100),
(2200),
(2300),
(2400),
(2500);



create table employee_salary (
id Serial  primary key,
employee_id Int not null unique,
salary_id Int not null);

select * from employee_salary;

insert into employee_salary (employee_id,salary_id)
values (1,4),
       (2,11),
       (3,4),
       (90,12),
       (4,7),
       (5,10),
       (85,7),
       (6,8),
       (7,4),
       (8,3),
       (9,4),
       (10,3),
       (82,7),
       (11,12),
       (12,9),
       (79,8),
       (13,7),
       (72,11),
       (14,15),
       (15,1),
       (16,10),
       (17,11),
       (88,6),
       (18,14),
       (19,6),
       (99,1),
       (20,15),
       (21,11),
       (22,14),
       (80,6),
       (23,8),
       (24,12),
       (25,7),
       (74,9),
       (26,8),
       (27,9),
       (28,3),
       (77,1),
       (29,3),
       (30,8);
 
 
 
create table roless (
id serial primary key,
role_name int not null unique);

select * from roless;

alter table roless
alter column role_name type varchar(30);

insert into roless (role_name)
values ('Junior Python developer'),
       ('Middle Python developer'),
       ('Senior Python developer'),
       ('Junior Java developer'),
       ('Middle Java developer'),
       ('Senior Java developer'),
       ('Junior JavaScript developer'),
       ('Middle JavaScript developer'),
       ('Senior JavaScript developer'),
       ('Junior Manual QA engineer'),
       ('Middle Manual QA engineer'),
       ('Senior Manual QA engineer'),
       ('Project Manager'),
       ('Designer'),
       ('HR'),
       ('CEO'),
       ('Sales manager'),
       ('Junior Automation QA engineer'),
       ('Middle Automation QA engineer'),
       ('Senior Automation QA engineer');



create table roles_employee (
id serial primary key,
employee_id int not null unique,
 role_id Int not null,
 foreign key (employee_id)
    references employees (id),
 foreign key (role_id)
    references roless (id));


select *from roles_employee;

insert into roles_employee (employee_id,role_id)
values (1,4),
       (2,1),
       (3,2),
       (4,2),
       (5,3),
       (6,4),
       (7,5),
       (8,4),
       (9,5),
       (10,6),
       (11,7),
       (12,7),
       (13,8),
       (14,8),
       (15,10),
       (16,11),
       (17,11),
       (18,11),
       (19,12),
       (20,13),
       (21,14),
       (22,15),
       (23,16),
       (24,17),
       (25,18),
       (26,19),
       (27,20),
       (28,12),
       (29,13),
       (30,14),
       (40,15),
       (50,16),
       (60,17),
       (70,18),
       (41,19),
       (51,20),
       (61,12),
       (69,13),
       (55,14),
       (49,15);



