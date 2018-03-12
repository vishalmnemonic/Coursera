- - = <> != < > <= >= BETWEEN IS NULL

SELECT ProductName
		, UnitPrice
		,SupplierID
FROM Products
WHERE ProductName = 'Tofu';

WHERE UnitStock BETWEEN 15 AND 25;

WHERE ProductName IS NULL;

WHERE SupplierID IN (9, 10, 11);

WHERE ProductName = 'Tofu' OR 'Konbu'; /* Won't evaluate 2nd if 1st condition is TRUE */

WHERE SupplierID = 9 OR SupplierID = 10 AND UnitPrice > 15;
WHERE (SupplierID = 9 OR SupplierID = 10) AND UnitPrice > 15; /* OR is evaluated before AND */

WHERE NOT City = 'London' AND NOT City = 'Seattle';

'%Pizza' : Anything ending with the word Pizza
'Pizza%' : Anything starting with the word Pizza
'%Pizza%' : Anything with the word Pizza
'S%E' : Starts with S, ends with E

WHERE Size LIKE '_Pizza'

SELECT UnitOrder * UnitPrice AS Total_Order_Cost FROM Products;

SELECT AVG(UnitPrice) AS avg_price FROM Products;

- - AVG() MIN() MAX() SUM() COUNT()

SELECT COUNT(DISTINCT name) FROM Customers

SELECT Region
COUNT(CustomerID) AS total_customers
FROM Customers
GROUP BY Region;

SELECT
CustormerID
,COUNT (*) AS orders
FROM Orders
GROPU BY CustormerID
HAVING COUNT (*) >=2;

