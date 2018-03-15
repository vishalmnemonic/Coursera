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

		
SELECT vendor_name, product_name, product_price
FROM Vendors AS v, Products AS p
WHERE v.vendor_id = p.vendor_id;

SELECT A.CustomerName AS CustomerName1, B.CustormerName AS CustomerName2, A.City
FROM Customer A, Customer B
WHERE A.CustomerID = B.CustomerID
AND A.City = B.City
ORDER BY A.City;

SELECT C.CustomerName, O.OrderID
FROM CUstomer C
LEFT JOIN Order O ON C.CustomerID = O.CustomerID
ORDER BY C.CustomerName;

SELECT O.OrderID, E.Lastname, E.FirstName
FROM Orders O RIGHT JOIN Employees E ON
O.EmployeeID = E.EmployeeID
ORDER BY O.OrderID;

SELECT C.CustomerName, O.OrderID
FROM Customer C
FULL OUTER JOIN Orders O ON
C.CustomerID = O.CustomerID
ORDER BY C.CustomerName;

SELECT City, COuntry
FROM Customers
WHERE Country = "Germany"
UNION
SELECT City, COuntry
FROM Suppliers
WHERE Country = "Germany"

