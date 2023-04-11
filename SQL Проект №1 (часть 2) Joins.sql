SQL Проект №1 (часть 2)
Joins
 
1. Вывести всех работников, чьи зарплаты есть в базе, вместе с зарплатами.
 
 select employees.id, employee_name, monthly_salary from employee_salary 
 join employees on employee_id = employees.id
 join salaryy on salary_id = salaryy.id
 order by employees.id;
 
 
 2. Вывести всех работников у которых ЗП меньше 2000.
 
 select employees.id, employee_name, monthly_salary from employee_salary 
 join employees on employee_id = employees.id
 join salaryy on salary_id = salaryy.id
 where monthly_salary < 2000
 order by monthly_salary;

 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
 
 select  employee_name, monthly_salary from employee_salary 
 join employees on employee_id = employees.id
 right join salaryy on salary_id = salaryy.id
 where employee_name is null;
 
 
 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
 
 select  employee_name, monthly_salary from employee_salary 
 join employees on employee_id = employees.id
 right join salaryy on salary_id = salaryy.id
 where employee_name is null and monthly_salary < 2000;
 
 
 5. Найти всех работников кому не начислена ЗП. 
 
 select  employee_name, monthly_salary from employee_salary 
 join salaryy on salary_id = salaryy.id
 right join employees on employee_id = employees.id
 where monthly_salary is null;
 
 
 6. Вывести всех работников с названиями их должности.
 
 
select employee_name, role_name from roles_employee
join roless on role_id = roless.id 
join employees on employee_id = employees.id;
 
 
 
 7. Вывести имена и должность только Java разработчиков.
 
 
select  employee_name, role_name from roles_employee
join roless on role_id = roless.id 
join employees on employee_id = employees.id
where role_name like'%Java %';


 8. Вывести имена и должность только Python разработчиков.
 
select  employee_name, role_name from roles_employee
join roless on role_id = roless.id 
join employees on employee_id = employees.id
where role_name like'%Python%';

 9. Вывести имена и должность всех QA инженеров.
 
select  employee_name, role_name  from roles_employee
join roless on role_id = roless.id 
join employees on employee_id = employees.id
where role_name like'%QA%';
 
 10. Вывести имена и должность ручных QA инженеров.
 
select  employee_name, role_name from roles_employee
join roless on role_id = roless.id 
join employees on employee_id = employees.id
where role_name like'%Manual QA%';
 
 11. Вывести имена и должность автоматизаторов QA
 
select  employee_name, role_name  from roles_employee
join roless on role_id = roless.id 
join employees on employee_id = employees.id
where role_name like'%Automation QA%';
 

 12. Вывести имена и зарплаты Junior специалистов 
 
 select employee_name, monthly_salary, role_name from employees
 join employee_salary on employees.id = employee_salary.employee_id
 join salaryy on employee_salary.salary_id = salaryy.id
 join roles_employee on employees.id = roles_employee.employee_id
 join roless on roles_employee.role_id = roless.id
 where roless.role_name like'%Junior%';
 
 
 13. Вывести имена и зарплаты Middle специалистов
 
 select e.employee_name, s.monthly_salary, r.role_name from employees e
 join employee_salary es on e.id = es.employee_id
 join salaryy s on es.salary_id = s.id
 join roles_employee re on e.id = re.employee_id
 join roless r on re.role_id = r.id
 where role_name like '%Middle%';
 
 14. Вывести имена и зарплаты Senior специалистов
 
 select e.employee_name, s.monthly_salary, r.role_name from employees e
 join employee_salary es on e.id = es.employee_id
 join salaryy s on es.salary_id = s.id
 join roles_employee re on e.id = re.employee_id
 join roless r on re.role_id = r.id
  where role_name like '%Senior%';
 
 15. Вывести зарплаты Java разработчиков
 
 select s.monthly_salary, r.role_name from employees e
 join employee_salary es on e.id = es.employee_id
 join salaryy s on es.salary_id = s.id
 join roles_employee re on e.id = re.employee_id
 join roless r on re.role_id = r.id
 where role_name like '%Java%';

 
 16. Вывести зарплаты Python разработчиков
 
 select s.monthly_salary, r.role_name from employees e
 join employee_salary es on e.id = es.employee_id
 join salaryy s on es.salary_id = s.id
 join roles_employee re on e.id = re.employee_id
 join roless r on re.role_id = r.id
 where role_name like '%Python%';
 
 17. Вывести имена и зарплаты Junior Python разработчиков
 
 select r.role_name, e.employee_name, s.monthly_salary from employees e
 join employee_salary es on e.id = es.employee_id
 join salaryy s on es.salary_id = s.id
 join roles_employee re on e.id = re.employee_id
 join roless r on re.role_id = r.id
  where role_name like '%Junior Python%';
 
 18. Вывести имена и зарплаты Middle JS разработчиков
 
 select r.role_name, e.employee_name, s.monthly_salary from employees e
 join employee_salary es on e.id = es.employee_id
 join salaryy s on es.salary_id = s.id
 join roles_employee re on e.id = re.employee_id
 join roless r on re.role_id = r.id
  where role_name like '%Middle JavaScript%';
 
 19. Вывести имена и зарплаты Senior Java разработчиков
 
 select r.role_name, e.employee_name, s.monthly_salary from employees e
 join employee_salary es on e.id = es.employee_id
 join salaryy s on es.salary_id = s.id
 join roles_employee re on e.id = re.employee_id
 join roless r on re.role_id = r.id
 where role_name like '%Senior Java %';
 
 20. Вывести зарплаты Junior QA инженеров
 
 select r.role_name, e.employee_name, s.monthly_salary from employees e
 join employee_salary es on e.id = es.employee_id
 join salaryy s on es.salary_id = s.id
 join roles_employee re on e.id = re.employee_id
 join roless r on re.role_id = r.id
 where role_name like '%Junior%QA%';
 

 21. Вывести среднюю зарплату всех Junior специалистов
 
 select avg (s.monthly_salary) as avg_Junior from employees e
 join employee_salary es on e.id = es.employee_id
 join salaryy s on es.salary_id = s.id
 join roles_employee re on e.id = re.employee_id
 join roless r on re.role_id = r.id
 where role_name like '%Junior%';

 22. Вывести сумму зарплат JS разработчиков
 
 select sum (s.monthly_salary) as sum_salary_JS_developer from employees e
 join employee_salary es on e.id = es.employee_id
 join salaryy s on es.salary_id = s.id
 join roles_employee re on e.id = re.employee_id
 join roless r on re.role_id = r.id
 where role_name like '%JavaScript%';

 23. Вывести минимальную ЗП QA инженеров
 
 select min (s.monthly_salary) as min_salary_QA_engineer from employees e
 join employee_salary es on e.id = es.employee_id
 join salaryy s on es.salary_id = s.id
 join roles_employee re on e.id = re.employee_id
 join roless r on re.role_id = r.id
 where role_name like '%QA%';
 
 24. Вывести максимальную ЗП QA инженеров
 
 select max (s.monthly_salary) as max_salary_QA_engineer from employees e
 join employee_salary es on e.id = es.employee_id
 join salaryy s on es.salary_id = s.id
 join roles_employee re on e.id = re.employee_id
 join roless r on re.role_id = r.id
 where role_name like '%QA%';

 25. Вывести количество QA инженеров
 
 select count (role_name) as count_QA from employees e
 join employee_salary es on e.id = es.employee_id
 join salaryy s on es.salary_id = s.id
 join roles_employee re on e.id = re.employee_id
 join roless r on re.role_id = r.id
 where role_name like '%QA%';
 
 26. Вывести количество Middle специалистов.
 
 select count (role_name) as count_Middle from employees e
 join employee_salary es on e.id = es.employee_id
 join salaryy s on es.salary_id = s.id
 join roles_employee re on e.id = re.employee_id
 join roless r on re.role_id = r.id
 where role_name like '%Middle%';
 
 27. Вывести количество разработчиков
 
 select count (role_name) as count_developer from employees e
 join employee_salary es on e.id = es.employee_id
 join salaryy s on es.salary_id = s.id
 join roles_employee re on e.id = re.employee_id
 join roless r on re.role_id = r.id
 where role_name like '%developer';

 
 28. Вывести фонд (сумму) зарплаты разработчиков.
 
 select sum (s.monthly_salary) from employees e
 join employee_salary es on e.id = es.employee_id
 join salaryy s on es.salary_id = s.id
 join roles_employee re on e.id = re.employee_id
 join roless r on re.role_id = r.id
 where role_name like '%developer';
 
 29. Вывести имена, должности и ЗП всех специалистов по возрастанию
 
 select e.employee_name, r.role_name, s.monthly_salary from employees e
 join employee_salary es on e.id = es.employee_id
 join salaryy s on es.salary_id = s.id
 join roles_employee re on e.id = re.employee_id
 join roless r on re.role_id = r.id
 order by monthly_salary;


 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
 
 select e.employee_name, r.role_name, s.monthly_salary from employees e
 join employee_salary es on e.id = es.employee_id
 join salaryy s on es.salary_id = s.id
 join roles_employee re on e.id = re.employee_id
 join roless r on re.role_id = r.id
 where monthly_salary between 1700 and 2300
 order by monthly_salary;
 
 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
 
 select e.employee_name, r.role_name, s.monthly_salary from employees e
 join employee_salary es on e.id = es.employee_id
 join salaryy s on es.salary_id = s.id
 join roles_employee re on e.id = re.employee_id
 join roless r on re.role_id = r.id
 where monthly_salary < 2300
 order by monthly_salary;
 
 
 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
 
 select e.employee_name, r.role_name, s.monthly_salary from employees e
 join employee_salary es on e.id = es.employee_id
 join salaryy s on es.salary_id = s.id
 join roles_employee re on e.id = re.employee_id
 join roless r on re.role_id = r.id
 where monthly_salary in (1100,1500,2000)
 order by monthly_salary;
 
