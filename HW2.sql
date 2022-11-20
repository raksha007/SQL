-- Створити таблицю employees (id. serial,  primary key, employee_name. Varchar(50), not null).
-- Наповнити таблицю employee 70 строками.
create table employees(
id serial primary key,
employee_name varchar (50) not null
);

insert into employees(employee_name)
values ('Austin Carter'),
		('Miguel Scott'),
		('Cannon Ward'),
		('Raymond Watson'),
		('Omari Reed'),
		('Wilson Stewart'),
		('Marcus Foster'),
		('Hadlee Lopez'),
		('Adonis Allen'),
		('Quintus Cox'),
		('Xidorn Reed'),
		('Bryan Torres'),
		('Weston Simmons'),
		('Vance Baker'),
		('Fernando Jackson'),
		('Bennett Roberts'),
		('Luciano Gonzalez'),
		('Zachariah Adams'),
		('Uri King'),
		('Jonathan Green'),
		('Wilson Walker'),
		('Orin Davis'),
		('Felix Lopez'),
		('Aaron Foster'),
		('Xerxes Bell'),
		('Yitzchak Green'),
		('Pedro Campbell'),
		('Terrence Hayes'),
		('DeAndre Reed'),
		('Hugo Hernandez'),
		('Yaqub Moore'),
		('Zahir Bryant'),
		('Christopher Cox'),
		('Tanner Walker'),
		('Yoshiaki Thompson'),
		('Kian King'),
		('Malcolm Phillips'),
		('Troy Evans'),
		('Issa Powell'),
		('Yehoshua Gonzalez'),
		('Jackson Clark'),
		('Vince Hughes'),
		('Juan Butler'),
		('Wilder Gray'),
		('DeAndre Brown'),
		('Westin Clark'),
		('Owen Johnson'),
		('Quantrell Patterson'),
		('Yasir Smith'),
		('Yoshito Hill'),
		('Isaias Garcia'),
		('Braden Watson'),
		('John Barnes'),
		('John Reed'),
		('Verney Howard'),
		('Xavier Moore'),
		('Jace Reed'),
		('Usher Peterson'),
		('Quinnton Jones'),
		('Woodrow Gonzalez'),
		('Conor Murphy'),
		('Zaki Flores'),
		('Nathaniel Cox'),
		('Camden Stewart'),
		('Xu Martinez'),
		('Terrance Diaz'),
		('Urias Bryant'),
		('Israel Lewis'),
		('Edwin King'),
		('Dominic Miller');
	
	
-- Створити таблицю salary (id. Serial  primary key, monthly_salary. Int, not null). 
-- Наповнити таблицю salary 15 строками:
	
	create table salary(
	id serial primary key,
	monthly_salary int not null
	);
insert into salary(monthly_salary)
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
      
-- Створити таблицю employee_salary (id. Serial  primary key, employee_id. Int, not null, unique; salary_id. Int, not null)
-- Наповнити таблицю employee_salary 40 строками: в 10 строк з 40 вставити неіснуючі employee_id
      
      create table employee_salary(
      id serial primary key,
      employee_id int not null unique,
      salary_id int not null
      );
	
     insert into employee_salary(employee_id,salary_id)
     values (1, 1),
	       (2, 2),
	       (3, 3),
	       (4, 4),
	       (5, 5),
	       (6, 6),
	       (7, 7),
	       (8, 8),
	       (9, 9),
	       (10, 10),
	       (11, 11),
	       (12, 12),
	       (13, 13),
	       (14, 14),
	       (15, 15),
	       (16, 16),
	       (17, 17),
	       (18, 18),
	       (19, 19),
	       (20, 20),
	       (21, 1),
	       (22, 2),
	       (23, 3),
	       (24, 4),
	       (25, 5),
	       (26, 6),
	       (27, 7),
	       (28, 8),
	       (29, 9),
	       (30, 10),
	       (81, 11),
	       (71, 12),
	       (72, 13),
	       (73, 14),
	       (74, 15),
	       (75, 16),
	       (76, 17),
	       (77, 18),
	       (78, 19),
	       (79, 20),
	       (80, 1);
	      
-- Створити таблицю roles (id. Serial  primary key, role_name. int, not null, unique)
-- Змінити тип стовба role_name с int на varchar(30)
-- Наповнити таблицю roles 20 строками:
	      
	create table roles(
id serial primary key,
role_name int not null unique);

drop table roles;


alter table roles
alter column  role_name type varchar (30);

insert into roles(role_name)
values  ('Junior Python developer'),
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
        
       
-- Створити таблицю roles_employee (id. Serial  primary key, employee_id. Int, not null, unique (зовнішній ключ для таблиці employees, поле id) role_id. Int, not null (зовнішній ключ для таблиці roles, поле id)
-- Наповнити таблицю roles_employee 40 строками:
       
create table roles_employee(
id serial primary key,
employee_id int not null unique,
role_id int not null,
foreign key (employee_id)
references employees(id),
foreign key (role_id),
references roles(id)
);


insert into roles_employee(employee_id,role_id)
values (1, 1),
       (2, 2),
       (3, 3),
       (4, 4),
       (5, 5),
       (6, 6),
       (7, 7),
       (8, 8),
       (9, 9),
       (10, 10),
       (11, 11),
       (12, 12),
       (13, 13),
       (14, 14),
       (15, 15),
       (16, 16),
       (17, 17),
       (18, 18),
       (19, 19),
       (20, 20),
       (21, 1),
       (22, 2),
       (23, 3),
       (24, 4),
       (25, 5),
       (26, 6),
       (27, 7),
       (28, 8),
       (29, 9),
       (30, 10),
       (31, 11),
       (32, 12),
       (33, 13),
       (34, 14),
       (35, 15),
       (36, 16),
       (37, 17),
       (38, 18),
       (39, 19),
       (40, 20);
      
      select * from roles_employee
       
       
       
       
