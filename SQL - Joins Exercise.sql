/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
 SELECT p.Name, c.Name
 FROM products p
 INNER JOIN categories c
 ON c.CategoryID = p.CategoryID
 WHERE p.CategoryID = 1;
 
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
 SELECT p.Name, p.Price, r.Rating
 FROM products p
 INNER JOIN reviews r
 ON p.ProductID = r.ProductID
 WHERE r.Rating = 5;
 
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
SELECT e.FirstName, e.LastName, e.EmailAddress, e.Title, SUM(s.Quantity) as 'Sum', s.PricePerUnit
FROM sales s
INNER JOIN employees e
ON s.EmployeeID = e.EmployeeID
GROUP BY e.EmployeeID
ORDER BY Sum DESC;

-- SELECT e.FirstName, e.LastName, SUM(s.Quantity) AS 'Total' -JOHN'S EXAMPLE
-- FROM sales s
-- INNER JOIN employees e
-- ON s.EmployeeID = e.EmployeeID
-- GROUP BY e.EmployeeID
-- ORDER BY Total DESC;


/* joins: find the name of the department, and the name of the category for Appliances and Games */
SELECT d.Name as 'Department Name', c.Name as 'Category Name'
FROM departments d
INNER JOIN categories c
ON d.DepartmentID = c.DepartmentID
WHERE c.name ='Appliances' OR c.name = 'Games';

/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
SELECT p.Name, SUM(s.PricePerUnit) as Quantity, SUM(s.Quantity) as 'Total'
FROM products p
INNER JOIN sales s
ON p.ProductID = s.ProductID
WHERE p.Name = "Eagles: Hotel California"
ORDER BY Total and Quantity;

/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
SELECT p.name, r.reviewer, r.rating, r.comment
FROM products p
INNER JOIN reviews r
ON p.ProductID = r.ProductID
WHERE p.name = 'Visio TV' AND r.rating = 1;



-- ------------------------------------------ Extra - May be difficult
/* Your goal is to write a query that serves as an employee sales report.
This query should return the employeeID, the employee's first and last name, the name of each product, how many of that product they sold */



