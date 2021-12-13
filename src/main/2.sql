use practicesqlquery;

Create table If Not Exists Employee (Id int, Salary int)
Truncate table Employee
insert into Employee (Id, Salary) values ('1', '100')
insert into Employee (Id, Salary) values ('2', '200')
insert into Employee (Id, Salary) values ('3', '300')
/*
Write a SQL query to get the second highest salary from the Employee table.
*/
/*
For example, given the above Employee table, the query should return 200 as the second highest salary. If there is no second highest salary, then the query should return null.
+---------------------+
| SecondHighestSalary |
+---------------------+
| 200                 |
*/

select min(salary) as SecondHighestSalary
from (select distinct salary
     from employee
     order by  salary desc limit 2 )  as fsg;


    /*не могу сделать условие- если нет второй
      по величене зарплаты вернуть null
    */









