SELECT CustomerID, CompanyName, Region
FROM Customers
WHERE customerID in 
	(SELECT customerID
	FROM Orders
	WHERE Freight > 100);
	
SELECT Customer_name, Customer_contact
FROM Customers
WHERE cust_id IN 
	SELECT customer_id
	FROM Orders
	WHERE order_number IN (SELECT order_number
				FROM OrderItems
				WHERE prod_name = 'Toothbrush');

SELECT customer_name, customer_state,
		(SELECT COUNT (*) AS orders
		FROM Orders
		WHERE Orders.customer_id = Customer.customer_id)
		as orders
FROM customers
ORDER BY Customer_name;
					
SELECT product_name, unit_price, company_name
FROM suppliers CROSS JOIN products;

SELECT suppliers.CompanyName, ProductName, UnitPrice
FROM Suppliers INNER JOIN Products 
ON Suppliers.supplierid = Products.supplierid;

SELECT o.OrderID, c.CompanyName, e.LastName
FROM ((Orders o INNER JOIN Customers c ON o.CustomerID = c.CustomerID) 
		INNER JOIN Employees e ON o.EmployeeID = e.EmployeeID);
