create database excelr6;
use excelr6;
show databases;
create table students(sid int,sname varchar(50),age int,course varchar(40));
show tables;
describe students;
desc students;
select * from students;
insert into students values(1,'Ganesh',21,'MySQL');
select * from students;
insert into students values(2,'Ram',25,'DA');

use excelr6;

# DDL

# Alter(Add column)

select * from students;
alter table students add column marks int;
select * from students;
alter table students add column height decimal(5,2) ,add column weight decimal(5,2);
select * from students;
alter table students add column department varchar(40) after age;
select * from students;
alter table students add column s_no int first;
select * from students;

# Alter(Rename Column)
alter table students rename column sid to student_id;
select * from students;
alter table students rename column sname to student_name,rename column marks to score;
select * from students;

use excelr6;

# Alter (Drop Column)
select * from students;
alter table students drop column department;
select * from students;
alter table students drop column height,drop column weight;
select * from students;

# Alter (Modify Data Type of a column)
select * from students;
desc students;
alter table students modify column course varchar(25);
desc students;

# Rename (Rename Table)

rename table students to stud;
select * from students;
select * from stud;

# Truncate

truncate table stud;
select * from stud;

# Drop

drop table stud;
select * from stud;

create database abc1;
drop database abc1;

# DML

create table students(s_id int,s_name varchar(40),course varchar(50),marks int);
select * from students;

# Insert

insert into students values(1,'Ganesh','MySQL',90);
select * from students;
insert into students values(2,'Ram','Python',80);
insert into students values(3,'John','DA',75),(4,'Tom','DS',85),(5,'Abhi','MySQL',95);
select * from students;
insert into students values(6,'Arjun');
insert into students values(6,'Arjun',null,null);
select * from students;
insert into students (s_id,s_name) values(7,'Arun');
select * from students;

# Update

set sql_safe_updates=0;
update students set s_name='Johny' where s_id=3;
select * from students;

update students set marks=70 where course='MySQL';
select * from students;

update students set s_name='Tommy' where marks=85;
select * from students;

update students set marks=0 where marks is null;
select * from students;

update students set course='MySQL' where course is null;
select * from students;

update students set course='MySQL';
select * from students;

use excelr6;

select * from students;
delete from students where s_name='Arun';
set sql_safe_updates=0;
select * from students;
delete from students where marks=0;
select * from students;
delete from students;
select * from students;

# DQL (Select)

show tables;
select * from myemp;
select emp_id,First_name,Last_name,salary from myemp;

# Limit
select * from myemp limit 5;
select * from myemp limit 10;
select emp_id,First_name,Last_name,salary from myemp limit 5;

select emp_id,first_name,last_name,salary,salary*0.20 from myemp;
select emp_id,first_name,last_name,salary,salary*0.20 as Bonus from myemp;
select emp_id,first_name,last_name,salary,salary*0.20 Bonus from myemp;

select emp_id,first_name,last_name,salary,salary*0.20 Bonus,
salary + salary * 0.20 as Total_salary from myemp;

select emp_id,first_name,last_name,salary,salary*0.20 Bonus,
salary + salary * 0.20 as Total_salary from myemp limit 5;

select emp_id,first_name,last_name,salary,dep_id,salary*0.50 Bonus,
salary + Salary*0.50 as Total_salary from myemp where dep_id=90;

# Distinct

select dep_id from myemp;
select distinct dep_id from myemp;
select mgr_id from myemp;
select distinct mgr_id from myemp;
select distinct dep_id,mgr_id from myemp;

# Order by
select * from myemp;
select salary from myemp order by salary;
select salary from myemp order by salary desc;
select * from myemp order by salary desc;
select * from myemp order by salary desc limit 10;
select distinct dep_id from myemp order by dep_id;
select distinct dep_id from myemp order by dep_id desc;
select dep_id,salary from myemp order by dep_id,salary;
select dep_id,salary from myemp order by dep_id,salary desc;
select dep_id,salary from myemp order by dep_id desc,salary desc;
select first_name from myemp order by first_name;
select first_name from myemp order by first_name desc;
select * from myemp order by hire_date;

# AND,OR,NOT

# AND

select * from myemp where salary >10000 and dep_id=90;
select * from myemp where salary >=8000 and dep_id=60;
select * from myemp where salary >=10000 and dep_id>=60 order by dep_id;
select * from myemp where salary <20000 and dep_id<=90 order by dep_id desc;

# OR
select * from myemp where salary >10000 or dep_id=90;
select * from myemp where salary >20000 or job_id='Sa_man';

use excelr6;

# NOT
select * from myemp where not salary =15000;
select * from myemp where not salary >15000;
select * from myemp where not salary > 15000 order by salary desc;

select * from myemp where not dep_id=50;
select * from myemp where dep_id !=50;
select * from myemp where dep_id <> 50;

# Between
select * from myemp where salary between 10000 and 15000 order by salary;
select * from myemp where emp_id between 110 and 150;

# Not Between
select * from myemp where salary not between 10000 and 15000 order by salary desc;

# In
select * from myemp where dep_id=10 or dep_id=30 or dep_id=80;
select * from myemp where dep_id in(10,30,80);
select * from myemp where dep_id in(10,30,80) order by dep_id;

# Not In
select * from myemp where dep_id  not in(10,30,80) order by dep_id;

# Like Operator
# % is used for matching any number of charecter
# _ is used for single charecter matching

select * from myemp where first_name like 'a%';
select * from myemp where first_name like 'j%';
select * from myemp where first_name like '%s';
select * from myemp where first_name like 'j%s';
select * from myemp where first_name like '%c%';
select * from myemp where first_name like 'j____';
select * from myemp where first_name like '____';
select * from myemp where first_name like '_et__';
select * from myemp where first_name like '%an%';
select * from myemp where first_name like '_h%';
select * from myemp where first_name like 'a%';
select * from myemp where first_name like '__a%';
select * from myemp where first_name like 'p%';
select distinct first_name from myemp where first_name like 'p%';

# Concat
select first_name,last_name from myemp limit 10;
select concat(first_name,last_name) from myemp limit 10;
select concat(first_name,' ',last_name) from myemp limit 10;
select concat(first_name,'_',last_name) from myemp limit 10;
select concat(first_name,' ',last_name) as Full_name from myemp limit 10;

# Row Wise Functions
select * from myemp;
select hire_date from myemp;
select year(hire_date) from myemp;
select emp_id,first_name,last_name,year(hire_date) from myemp where year(hire_date) =1987;
select emp_id,first_name,Last_name,year(hire_date) from myemp where 
year(hire_date) between 1987 and 1995 order by hire_date desc;
select emp_id,first_name,Last_name,year(hire_date) from myemp where 
year(hire_date)  not between 1987 and 1995 order by hire_date desc;

# Group by / Aggregate Function
# Sum,Avg,Count,Max,Min

# MAX,MIN
select min(salary) from myemp;
select max(salary) from myemp;
select max(salary) from myemp where dep_id=90;
select min(salary) from myemp where dep_id=90;

select sum(salary),Avg(salary),Min(salary),Max(salary) from myemp;

# Sum,Avg
select Sum(salary) from myemp;
select Avg(salary) from myemp;
select sum(salary) from myemp where dep_id=50;
select Avg(salary) from myemp where dep_id=90;

select dep_id,avg(salary) from myemp group by dep_id;
select dep_id,avg(salary) from myemp group by dep_id order by dep_id;
select dep_id,sum(salary) from myemp group by dep_id order by dep_id;

use excelr6;
# Count 
select count(emp_id) from myemp;
select count(*) from myemp;
select count(dep_id) from myemp where dep_id=90;
select dep_id,count(*) from myemp group by dep_id order by dep_id;
select count(distinct dep_id) from myemp;
select count(year(hire_date)) from myemp where year(hire_date)=1987;
select count(year(hire_date)) from myemp where year(hire_date)between 1987 and 1995;
select count(year(hire_date)) from myemp where year(hire_date) not between 1987 and 1995;
select count(*) from myemp;
select avg(salary) from myemp;
select round(avg(salary),3) from myemp;
select truncate(avg(salary),3) from myemp;

# Having
select dep_id,avg(salary) from myemp group by dep_id having dep_id in(10,30,50);
select dep_id,avg(salary) from myemp group by dep_id having dep_id in(10,30,50) 
order by avg(salary) desc;

select mgr_id,dep_id,avg(salary) from myemp where mgr_id=100 group by dep_id 
having avg(salary)>5000;
select mgr_id,dep_id,avg(salary) from myemp where mgr_id=100 group by dep_id 
having avg(salary)>5000 order by dep_id;
select mgr_id,dep_id,avg(salary) from myemp where mgr_id=100 group by dep_id 
having avg(salary)>5000 order by dep_id limit 2;

# TCL
select * from students;
insert into students values(1,'Ganesh','MySQL',95);
select * from students;
rollback;
select * from students;
set autocommit=0;
insert into students values(2,'John','MySQL',80);
select * from students;
rollback;
select * from students;
insert into students values(2,'John','MySQL',80);
commit;
select * from students;
rollback;
select * from students;
insert into students values(3,'Tom','Python',85);
insert into students values(4,'Abhi','Statistics',80);
select * from students;
rollback;
select * from students;
set autocommit=1;
insert into students values(5,'Johny','MySQL',80);
select * from students;
rollback;

# Start Transaction
start transaction;
insert into students values(8,'Arjun','DS',89);
insert into students values(9,'Amar','AI',95);
commit;
select * from students;
rollback;
insert into students values(10,'Johny','MySQL',80);
rollback;
select * from students;

start transaction;
select * from students;
delete from students where s_id=5;
set sql_safe_updates=0;
rollback;
select * from students;
delete from students where s_id=9;
rollback;
start transaction;
update students set marks=99 where s_id=8;
rollback;
select * from students;
update students set marks=99 where s_id=8;
rollback;
select * from students;

use excelr6;
# Save Point
select * from students;
insert into students values (4,'Rakesh','R programming',75);

start transaction;
insert into students values (9,'Ramesh','R programming',79);
select * from students;
update students set course='Python' where s_id=10;
set sql_safe_updates=0;
select * from students;
delete from students where s_id=5;
rollback;
select * from students;

start transaction;
insert into students values (9,'Ramesh','R programming',79);
savepoint a;
select * from students;
update students set course='Python' where s_id=10;
savepoint b;
set sql_safe_updates=0;
select * from students;
delete from students where s_id=5;
savepoint c;
rollback to a;
select * from students;

start transaction;
insert into students values(11,'Arya','DS',89);
savepoint x;
select * from students;
update students set course='DA' where s_id=8;
savepoint y;
delete from students where s_id=10;
savepoint z;
select * from students;
rollback to y;

# Joins

select * from movies;
select * from members;

# Inner Join
select * from movies inner join members on movies.id=members.movieid;

select * from movies join members on movies.id=members.movieid;

select * from movies as mov join members as mem on mov.id=mem.movieid;

select * from movies  mov join members  mem on mov.id=mem.movieid;

select id,title,first_name,Last_name from movies as a inner join members as b on a.id=b.movieid;

# Left Join

select id,title,first_name,last_name from movies as mov left join members as mem on mov.id=mem.movieid;

select id,title,ifnull(first_name,'-') as Fname,ifnull(last_name,'-') as Lname 
from movies as mov left join members as mem on mov.id=mem.movieid;

# Right Join
select id,title,first_name,last_name from movies as mov Right join members as mem on mov.id=mem.movieid;

select id,title,first_name,last_name from members as mem left join movies as mov on mov.id=mem.movieid;

# Cross Join

select * from meals;
select * from drinks;
select * from meals cross join drinks;
select mealname,rate,drinkname,rate from meals cross join drinks;
select mealname,meals.rate,drinkname,drinks.rate from meals cross join drinks;
select mealname,drinkname,meals.rate + drinks.rate as Total_price from meals cross join drinks;

select m.mealname,d.drinkname,m.rate + d.rate as Total_price from meals as m cross join drinks as d;

use excelr6;
select * from myemp;

select emp.emp_id,emp.first_name,emp.last_name,mgr.first_name,mgr.last_name 
from myemp as emp join myemp as mgr on emp.mgr_id=mgr.emp_id order by emp_id;

select a.emp_id,a.first_name,a.last_name,b.first_name,b.last_name 
from myemp as a join myemp as b on a.mgr_id=b.emp_id order by emp_id;

select emp.emp_id,concat(emp.first_name,' ',emp.last_name) as Emp_full_name,
concat(mgr.first_name,' ',mgr.last_name) as Mgr_full_name from myemp as emp join
myemp as mgr on emp.mgr_id=mgr.emp_id order by emp_id;

# Case When Then

create table mobiles(id int,name varchar(50),price int);
insert into mobiles values(1,'Samsung',50000),(2,'Vivo',25000),(3,'Oppo',15000),(4,'Redmi',12000),
(5,'Apple',100000);
select * from mobiles;

select *,
case 
when price<=15000 then 'Non Expensive'
else 'Expensive'
end Status
from mobiles;

# Simple Case
select *,
case job_id when 'AD_PRES' then salary *0.40 + salary
            when 'AD_VP' then salary *0.30 + salary
            when 'IT_PROG' then salary *0.20 + salary
            else salary
            end Updated_salary
            from myemp;
            
  #  Search Case
  select *,
  case when job_id='AD_VP' then salary*0.30 + salary
       when emp_id=100 then salary * 0.40 + salary
       when first_name='Lex' then salary*0.20 + salary
       else salary
       end updated_salary
       from myemp;

# Handling Null Values
create table emp1(id int,name varchar(40),salary int);
insert into emp1 values(1,'John',5000),(2,'Donald',8000),(3,'Tom',null);
select * from emp1;
       
select 1000 + null ;

# Ifnull       
select (ifnull(salary,0)) from emp1;
select *, (ifnull(salary,0)) from emp1;		
select *, (ifnull(salary,0)) as Total_salary from emp1;	
select *, (ifnull(salary,0) + 10000) as Total_salary from emp1;	

# Is null

select *,isnull(salary) from emp1;

select * from emp1 where salary is null;

# IS NOT NULL

select * from emp1 where salary is not null;

# Coalesce

create table name1(id int,first_name varchar(40),Middle_name varchar(40),Last_name varchar(40));

insert into name1 values(1,'Chennaveer',null,null),(2,null,'R',Null),(3,null,null,'Jogur'),
(4,'Chennaveer','R',null),(5,null,'R','Jogur'),(6,'Chennaveer','R','Jogur');
select * from name1;

select id,coalesce(first_name,middle_name,last_name) from name1;

use excelr6;

# Constraints
select * from students;

drop table students;

# Domain Constraints

create table students(sid int unique, sname varchar(50) not null, age int check(age>18),
course varchar(100) default 'MySQL');
select * from students;
describe students;
insert into students values(1,'Ganesh',21,'Data Analytics');
select * from students;
insert into students values(2,'Ram',25,'Data Science');
select * from students;
insert into students values(2,'John',21,'Data Analytics');
insert into students values(3,'Dinesh',25,'Python');
insert into students values(4,null,29,'Data Analytics');
insert into students (sid,age,course) values(5,23,'DA');
insert into students values(5,'Gagan',17,'Data Analytics');
insert into students values(6,'Gaurav',18,'Data Analytics');
insert into students (sid,sname,age) values(7,'Abhi',20);
select * from students;
alter table students modify sname varchar(50) not null default 'Ram';
insert into students (sid,age,course) values(8,23,'DA');
select * from students;

# Key Constraints

# Referential Integrity Constraints

select * from authors;
select * from books;

drop table authors;
set sql_safe_updates=0;
update authors set authorid=10 where authorid=1;
drop table books;
select * from books;
drop table authors;

create table authors(authorid int primary key,name varchar(255));
describe authors;

create table books(bookid int primary key,title varchar (255),aid int,
 foreign key(aid) references authors(authorid)
 on delete cascade
 on update cascade);
 
 select * from authors;
 select * from books;
 
 describe books;
 
 use excelr6;
 
delete from authors where authorid=1;
select * from authors;
select * from books;

update authors set authorid=70 where authorid=7;
select * from authors;
select * from books;

# Sequence Objects

# Auto_increment

create table emp(empid int primary key auto_increment,empname varchar (100));
describe emp;
insert into emp(empname)values('Ram');
select * from emp;
insert into emp(empname)values('Krishna');

alter table emp auto_increment=100;

insert into emp(empname)values('Krish');
select * from emp;
insert into emp(empname)values('John');
insert into emp(empname)values('Ramesh');
delete from emp;
set sql_safe_updates=0;
select * from emp;
insert into emp(empname)values('Arjun');
select * from emp;

truncate table emp;
insert into emp(empname)values('Aman');
select * from emp;

# Views

select * from myemp;

select first_name,last_name,dep_id,salary from myemp;

# Simple View

create view myview as select first_name,Last_name,dep_id,salary from myemp;
select * from myview;
show tables;
select * from movies;
select * from members;

select mv.id,mv.title,ifnull(mm.first_name,'-') as fname,ifnull(mm.last_name,'-') as Lname 
from movies as mv left join members as mm on mv.id=mm.movieid;

# Complex View

create view mymovies as select mv.id,mv.title,ifnull(mm.first_name,'-') as fname,
ifnull(mm.last_name,'-') as Lname 
from movies as mv left join members as mm on mv.id=mm.movieid;

select * from mymovies;

create view dep60 as select * from myemp where dep_id=60;
select * from dep60;

select * from authors;
create view aview as select * from authors where authorid<10;
select * from aview;
insert into aview values(1,'Dan Brown');
select * from aview;
select * from authors;
insert into aview values(20,'Robbin Sharma');
select * from aview;
select * from authors;
drop view aview;
create view aview as select * from authors where authorid<20 with check option;
select * from aview;
insert into aview values(50,'Dr.APJ');
delete from aview where authorid=4;
select * from aview;
select * from authors;
update aview set authorid=700 where authorid=70;
update aview set authorid=13 where authorid=3;

use excelr6;
describe students;
show indexes from students;

create index salary1 on myemp(salary);
show indexes from myemp;

drop index salary1 on myemp;

create table student5(sid int,sname varchar(40),Parent_phone_no char(10));

insert into student5 values(1,'Ram','9911223344');
insert into student5 values(2,'Ram','9911223344');
select * from student5;
create unique index std on student5(sname,parent_phone_no);
delete from student5;
set sql_safe_updates=0;
create unique index std on student5(sname,parent_phone_no);
insert into student5 values(1,'Ram','9911223344');
insert into student5 values(2,'Rakshit','9911223344');
insert into student5 values(3,'Ram','9911223355');
insert into student5 values(4,'Ram','9911223344');
insert into student5 values(5,'Rakshit','9911223300');

# Stored Procedure

# Simple stored Procedure

delimiter //
create procedure a1()
begin
select avg(salary) from myemp;
end //
delimiter ;

call a1();

Delimiter $$
create procedure a2()
begin
select * from myemp where salary>10000;
end $$
delimiter ;

call a2();

# Stored Procedure with IN Parameter
Delimiter $$
create procedure a3(In x int)
begin
select * from myemp where salary>x;
end $$
delimiter ;

call a3(10000);

use excelr6;

Delimiter &&
create procedure a4(IN a int,IN b int)
begin
select * from myemp where salary between a and b;
end &&
delimiter ;

call a4(20000,25000);

call b1(15000,20000);

# Stored Procedure with OUT parameter
Delimiter &&
create procedure a5(OUT x int)
begin
select avg(salary) into x from myemp;
end &&
delimiter ;

call a5(@x);
select @x;

select * from myemp;

# Stored Procedure with IN OUT Parameter

Delimiter &&
create procedure a10(In q varchar(50),out p int)
begin
select avg(salary) into p from myemp where job_id=q;
end &&
delimiter ;

call a10('IT_PROG',@p);
select @p;

delimiter %%
create procedure z1(In num int)
Begin
if num>0 then
select 'Number is Positive' as message;
elseif num<0 then
select 'Number is Negative' as message;
else
select 'Number is zero' as message;
end if;
end %%
delimiter ;

use excelr6;

delimiter //
create procedure x1()
begin
declare cnt int default 0;
myloop :loop
select 'Welcome to MYSQL' as message;
set cnt=cnt+1;
if cnt=3 then
leave myloop;
end if;
end loop myloop;
end //
delimiter ;

call x1();

delimiter //
create procedure x2(In num int)
begin
declare cnt int default 0;
myloop :loop
select 'Welcome to MYSQL' as message;
set cnt=cnt+1;
if cnt=num then
leave myloop;
end if;
end loop myloop;
end //
delimiter ;

delimiter //
create procedure x3(In num int)
begin
declare cnt int default 0;
myloop :loop
select concat('Welcome to MYSQL',' ',cnt+1) as message;
set cnt=cnt+1;
if cnt=num then
leave myloop;
end if;
end loop myloop;
end //
delimiter ;

call x3(4);

use excelr6;
select * from payments;
desc payments;
select * from fraud;
desc fraud;
insert into payments values(1,5000);
select * from payments;
insert into payments values(2,2000);
select * from payments;
insert into payments values(3,null);
select * from payments;
insert into payments values(4,4000);
select * from payments;
insert into payments values(5,null);
select * from payments;

# Continue handler

delimiter $$
create procedure proc_fraud(cid int,amt int)
begin
declare continue handler for 1048
begin
insert into fraud(client_id,message,tot) values(cid,'Fraud Transaction',now());
end;
insert into payments values(cid,amt);
select 'Transaction Completed' as message;
end $$
delimiter ;

call proc_fraud(6,10000);
select * from payments;
select * from fraud;
call proc_fraud(8,9000);
select * from payments;
select * from fraud;
call proc_fraud(9,null);
select * from payments;
select * from fraud;
call proc_fraud(10,null);
select * from payments;
select * from fraud;

# Exit Handler

delimiter $$
create procedure proc_fraud1(cid int,amt int)
begin
declare exit handler for 1048
begin
insert into fraud(client_id,message,tot) values(cid,'Fraud Transaction',now());
end;
insert into payments values(cid,amt);
select 'Transaction Completed' as message;
end $$
delimiter ;

call proc_fraud1(11,2000);
select * from payments;
select *  from fraud;

call proc_fraud1(12,null);
select * from payments;
select *  from fraud;

call proc_fraud1(13,null);
select * from payments;
select *  from fraud;

# Sub Query
select * from myemp;
select * from myemp order by salary desc;
select first_name,last_name,max(salary) from myemp;
select max(salary) from myemp;
select first_name,last_name from myemp where salary=24000;

# Simple Sub Query
select first_name,last_name from myemp where salary=(select max(salary) from myemp);

select avg(salary) from myemp;
select * from myemp where salary>(select avg(salary) from myemp);
select * from myemp where salary>(select avg(salary) from myemp) order by salary desc;

select * from myemp where salary>(select salary from myemp where first_name='Lex');

# Correlated Sub Query

select * from myemp as e where salary>(select avg(salary) from myemp where dep_id=e.dep_id) 
order by dep_id;

drop database classicmodels;

use classicmodels;
select * from employees;
select * from offices;

select * from employees where officecode 
in(select officecode from offices where country='USA');

# USER DEFINED FUNCTION

use excelr6;
delimiter $$
create function sqrt1(num int)
returns int
begin
declare squares int default 0;
select num * num into squares;
return squares;
end $$
delimiter ;

set global log_bin_trust_function_creators=1;

select sqrt1(5);
select sqrt1(10);

select cube1(2);
select cube1(5);

select * from myemp;

use excelr6;

delimiter %%
create function exp3(eid int)
returns int
begin
declare exp int default 0;
select year(now())-year(hire_date) into exp from myemp where emp_id=eid;
return exp;

end %%
delimiter ;

select exp3(121);


# Window Functions / Ranking Function / Analytical Function

select dep_id ,avg(salary) from myemp group by dep_id;
select * from myemp;

select emp_id,first_name,last_name,dep_id,salary,avg(salary) 
over (partition by dep_id) as avg_salary from myemp;

# Rank and Dense Rank

create table marks(sid int,sname varchar(40),score int);
insert into marks values(1,'Ram',70),(2,'Krishna',80),(3,'Ganesh',70),
(4,'Rakshit',85),(5,'Krish',60);
select * from marks;

select *,rank() over(order by score desc) as rnk from marks;
select *,dense_rank() over(order by score desc) as rnk from marks;

create table sales(sales_emp varchar(50),fiscal_year year,sales int);
insert into sales values('Alice',2016,150),('Alice',2017,100),('Alice',2018,200),
('Bob',2016,100),('Bob',2017,150),('Bob',2018,200),('John',2016,200),('John',2017,150),
('John',2018,250);
select * from sales;
use excelr6;

select *,dense_rank() over(partition by fiscal_year  order by  sales desc) as rnk from sales;

select emp_id,first_name,Last_name,salary,dense_rank()over(order by salary desc) as rnk from myemp;

# Row_Number

select *, row_number() over(order by dep_id) as sl_no from myemp;

select *, row_number() over(partition by dep_id order by dep_id) as sl_no from myemp;

# CTE (Common Table Expression)

select emp_id,first_name,last_name,salary,dense_rank() 
over(order by salary desc) as rnk from myemp where rnk=4;

with s as(select *,dense_rank() 
over(order by salary desc) as rnk from myemp) 
select emp_id,first_name,Last_name,salary, rnk from s where rnk=4;

select emp_id,first_name,Last_name,salary,salary*0.1 as bonus from myemp;

with a as(select emp_id,first_name,Last_name,salary,salary*0.1 as bonus from myemp)
 select first_name,Bonus from a;
 
 with s as(select emp_id,first_name,last_name,dep_id,salary,dense_rank() 
 over (partition by dep_id order by salary desc) as rnk from myemp)
 select emp_id,first_name,last_name,dep_id,salary,rnk from s where rnk=3;
 
 with s as(select emp_id,first_name,last_name,dep_id,salary,dense_rank() 
 over (partition by dep_id order by salary desc) as rnk from myemp)
 select emp_id,first_name,last_name,dep_id,salary,rnk from s where rnk in (1,3,5);
 
 # Lead & Lag
 
 create table trains1(Train_id int,Station Varchar(50),Time time);
 insert into trains1 values(110,'San Francisco','10:00:00');
 insert into trains1 values(110,'Redwood City','10:54:00');
 insert into trains1 values(110,'Palo Alto','11:02:00');
 insert into trains1 values(110,'San Jose','12:35:00');
 insert into trains1 values(120,'San Francisco','11:00:00');
 insert into trains1 values(120,'Palo Alto','12:49:00');
 insert into trains1 values(120,'San jose ','13:30:00');
 
 select * from trains1;
 
 # Lead 
 
 select *,lead(time,1)over(partition by train_id order by time) as next_station_time from trains1;
 
  select *,lag(time,1)over(partition by train_id order by time) as next_station_time from trains1;
  
  with s as (select *,lead(time,1)over(partition by train_id order by time) as
  next_station_time from trains1) 
  select *,subtime(next_station_time,time) as Transit_time from s;
  
  # Union and Union All
  create table t1(id int,name varchar(50),course varchar(40));
  insert into t1 values(1,'Tom','MySQL'),(2,'John','Tableau'),(3,'Harry','Power_BI');
  select * from t1;
  create table t2(id int,name varchar(50),course varchar(40),age int);
  insert into t2 values(4,'Tom','MySQL',25),(5,'Potter','Excel',24),(6,'Haina','DS',25);
  select * from t2;
  
  use excelr6;

 select * from t1 union select * from t2;
 select id,name from t1 union select id,name from t2;
 select name from t1 union select name from t2;
 select name from t1 union all select name from t2;
 select id,name from t1 union select id,age from t2;
 select id,name,course from t1 union select id,name,course from t2;
 
 # Full Join
 
 select * from movies left join members on movies.id=members.movieid
 union 
 select * from movies Right join members on movies.id=members.movieid;
 
 # Triggers
 
 # Before Delete
 
 create table salaries(emp_no int primary key,Hire_date date not null,
 salary decimal(6,2) not null);
 
 insert into salaries values(1,'2010-01-01',2000);
 insert into salaries values(2,'2010-01-01',5000);
 insert into salaries values(3,'2010-01-01',1000);
 select * from salaries;
 
 create table backup_table(id int primary key auto_increment,emp_no int,hire_date date not null,
 salary decimal(6,2) not null, deletedate timestamp default now());
 select * from backup_table;
 
delete from salaries where emp_no=3;
select * from salaries;
select * from backup_table;

delete from salaries where emp_no=1;
select * from salaries;
select * from backup_table;

# After Delete Trigger

create table salary(emp_id int,salary int);
insert into salary values(1,5000);
insert into salary values(2,4000);
insert into salary values(3,3000);

select * from salary;

create table budget(total decimal(12,2) not null);
insert into budget(total) select sum(salary) from salary;
select * from budget;

set sql_safe_updates=0;
delete from salary where emp_id=3;
select * from salary;
select * from budget;

delete from salary where emp_id=1;
select * from salary;
select * from budget;


# Before Insert Trigger 

create table emp5(emp_id int,name varchar(25),working_hrs int);
insert into emp5 values(101,'Ram',40);
insert into emp5 values(102,'Raghav',45);
insert into emp5 values(103,'Ganesh',42);
insert into emp5 values(104,'Arjun',-45);
select * from emp5;

insert into emp5 values(105,'Gagan',-42);
select * from emp5;

insert into emp5 values(106,'Harish',48);
select * from emp5;

# How to remove Dublicate Records

create table t10(id int,name varchar(50),salary decimal (7,2));
insert into t10 values(1,'Ram',2000),(2,'Ganesh',5000),(1,'Ram',2000);
select * from t10;
create temporary table t11 as select distinct * from t10;
select * from t11;
delete from t10;
insert into t10 select * from t11;
select * from t10;

use excelr6;

# String / Text Functions

select char_length('India');

select lower('EXCELR') as message;

select upper('excelr') as message;

select left ('United states of America',13);

select left ('United states of America',char_length('United states'));

select right ('United states of America',char_length('America'));

select trim("    Hi    Bangalore    ");
select ("    Hi Bangalore    ");
select replace("    Hi    Bangalore    ",' ','_');

select substring('www.facebook.com',5);
select substring('www.facebook.com',-3);

use excelr6;



















	








































































































