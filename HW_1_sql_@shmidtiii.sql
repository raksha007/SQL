-- 1. Вивести всі поля і всі строки.
select * from students;
-- 2. Вивести всіх студентів в таблиці
select name from students;
-- 3. Вивести тільки Id користувачів
select id from students;
--4. Вивести тільки ім'я користувачів
select name from students;
-- 5. Вивести тільки email користувачів
select email from students;
--6. Вивести ім'я и email користувачів
select name,email from students;
--7. Вивести id, ім'я, email і дату створення користувачів
select id,name,email,created_on from students;
-- 8. Вивести користувачів де password 12333
select * from students where password = '12333';
-- 9. Вивести користувачів які були створені 2021-03-26 00:00:00
select * from students where created_on = '2021-03-26 00:00:00';
-- 10. Вивести користувачів де в імені є слово Анна
select * from students where name like '%Anna%';
--11. Вивести користувачів де в імені в кінці є 8
select * from students where name like '%8';
-- 12. Вивести користувачів де в імені  є буква а
select * from students where name like '%a%';
--13. Вивести користувачів які були створені 2021-07-12 00:00:00
select * from students  where created_on = '2021-07-12 00:00:00';
--14. Вивести користувачів які були створені 2021-07-12 00:00:00 та мають пароль 1m313
select * from students  where created_on = '2021-07-12 00:00:00' and  password = '1m313';
--15. Вивести користувачів які були створені 2021-07-12 00:00:00 та у яких в імені є слово Andrey
select * from students  where created_on = '2021-07-12 00:00:00' and name like '%Andrey%';
--16. Вивести користувачів які були створені 2021-07-12 00:00:00 та у яких в імені є цифра 8
select * from students  where created_on = '2021-07-12 00:00:00' and name like '%8';
--17. Вивести користувачів у яких id рівен 110
select * from students where id = 110;
--18. Вивести користувачів у яких id рівен 153
select * from students where id = 153;
--19. Вивести користувачів у яких id більше 140
select * from students where id > 153;
--20. Вивести користувачів у яких id меньше 130
select * from students where id < 130;
--21. Вивести користувачів у яких id меньше 127 чи більше 188
select * from students where id < 127 or id > 180;
--22. Вивести користувачів у яких id меньше або дорівнює 137
select * from students where id <= 137;
--23. Вивести користувачів у яких id більше або дорівнює 137
select * from students where id >= 137;
--24. Вивести користувачів у яких id більше 180 але меньше 190
select * from students where id > 180 and  id < 190;
--25. Вивести користувачів у яких id між 180 і 190
select * from students where id between 180 and 190;
--26. Вивести користувачів де password дорівнює 12333, 1m313, 123313--
select  * from students where password in ('12333', '1m313', '123313');
--27. Вивести користувачів де created_on дорівнює 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
select * from  students where created_on in ('2020-10-03 00:00:00', '2021-05-19 00:00:00', '2021-03-26 00:00:00');
select name, created_on from students where created_on in ('2020-10-03 00:00:00', '2021-05-19 00:00:00', '2021-03-26 00:00:00');
--28. Вивести мінімальний id 
select MIN(id) from students;
--29. Вивести максимальний id
select MAX(id) from students;
--30. Вивести кількість користувачів
SELECT COUNT(name) from students;
--31. Вивести id користувача, ім'я, дату створення користувача. Відсортувати по порядку збільшення дати додання користувача.
select name, id, created_on from students order by created_on ;
-- 32. Вывести id користувача, ім'я, дату створення користувача. Відсортувати по порядку зменшення дати додання користувача.
select name, id, created_on from students order by created_on DESC ;


















