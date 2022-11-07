create table  City(
	id serial primary key,
	city_name varchar(40) unique not null
)

create table Person(
	id serial primary  key,
	person_name varchar(40),
	city_id int not null
)

insert into City(city_name)
values  ('Kyiv'),
		('Minsk'),
		('Berlin'),
		('Lviv'),
		('Kharkiv');
	
	insert into Person(person_name,city_id)
	values ('Nikolay',7),
			('Veronika',9);
			
select * from Person;
select * from City;

select Person.person_name,Person.city_id, City.city_name,City.id
from Person join City 
on Person.city_id = City.id;

select Person.person_name,Person.city_id, City.city_name,City.id
from Person right join City 
on Person.city_id = City.id;