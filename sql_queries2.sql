use sql_2;
-- Q1. Find the sum of the salary for each of the department id. Print the department id and total sum of the salary for each department as the result of the output. 
select departments.dept_id, sum(employees.salary)
from employees join departments 
on employees.dept_id = departments.dept_id
group by departments.dept_id;
-- Q2. Find the sum of the salary for each of the department. Print department id, department name and total sum of the salary for each department with the column name as Total Salary as the result of the output.
select departments.dept_id,departments.dept_name, sum(employees.salary) as total_salary
from employees join departments 
on employees.dept_id = departments.dept_id
group by departments.dept_id;
-- Q3. Find the total number of products in each category id. The result should display Category_ID and Total_Prodcts. The result should also be shown in decreasing order of category ID.
select category_id as Category_ID, count(product_id) as Total_Prodcts
from products 
group by category_id;

-- Q4. Find the minimum salary for each department available in the department table. Print department name as Department and Salary as Lowest_Salary as the two columns in the output of the SQL query.
select departments.dept_name as Department, min(employees.salary) as Lowest_Salary
from employees join departments 
on employees.dept_id = departments.dept_id
group by departments.dept_id;
-- Q5. Find the first name, last name and department of the employees having salary greater than 60000. The output should print the first name last name in a single column as Full_Name. Second column is department name with alias name Department and the third column is Salary with the alias name Salary.  The output should be printed in increasing order of salary of employees.
select concat(first_name," ", last_name) as Full_Name, departments.dept_name as Department, employees.salary as Salary
from employees join departments 
on employees.dept_id = departments.dept_id
where salary > 60000
order by salary;
-- Q6.Write a query and print the output for the total number of products for each category Id. The output should come for only those categories for which the number of products is greater than 1. The output will contain 3 columns with the alias name category_id, Category_Name and Total_Products. 
select categories.category_id ,categories.category_name, count(products.product_id) as Total_Products 
from products join categories
on categories.category_id = products.category_id
group by category_id
having count(products.product_id) > 1;