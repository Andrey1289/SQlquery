use practicesqlquery;


Create table If Not Exists Employee (Id int, Name varchar(255), Salary int, ManagerId int)
Truncate table Employee
insert into Employee (Id, Name, Salary, ManagerId) values ('1', 'Joe', '70000', '3')
insert into Employee (Id, Name, Salary, ManagerId) values ('2', 'Henry', '80000', '4')
insert into Employee (Id, Name, Salary, ManagerId) values ('3', 'Sam', '60000', 'None')
insert into Employee (Id, Name, Salary, ManagerId) values ('4', 'Max', '90000', 'None')

/*
The Employee table holds all employees including their managers. Every employee has an Id, and there is also a column for the manager Id.
*/

select e2.name as Employee
from employee e  join employee e2
on e.id = e2.managerid
where e.salary < e2.salary

;



