use practicesqlquery;

Create table If Not Exists Person2 (Id int, Email varchar(255))
Truncate table Person
insert into Person2 (Id, Email) values ('1', 'a@b.com')
insert into Person2 (Id, Email) values ('2', 'c@d.com')
insert into Person2 (Id, Email) values ('3', 'a@b.com')

/*
Write a SQL query to find all duplicate emails in a table named Person.
*/

select  Email
from person2
group by Email
having count(Email)>1;