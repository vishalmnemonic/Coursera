SELECT 	prod_name
		,prod_id
		,prod_price
FROM Products;

SELECT *
FROM Products;

SELECT *
FROM Products
LIMIT 5;

CREATE TABLE Shoes
	(
	ID		char(10)	PRIMARY KEY,
	Brand	char(10)	NOT NULL,
	Desc	char(10)	NULL
	);
	
INSERT INTO Shoes
VALUES ('125495'
		,'Gucci'
		,NULL
			);

INSERT INTO Shoes
		(ID
		,Brand
		,Desc
		)
VALUES ('125495'
		,'Gucci'
		,NULL
		);
		
CREATE TEMPORARY TABLE Sandals AS
	(
	SELECT *
	FROM Shoes
	WHERE shoe_type = 'sandals'
	);
	
- - Try: update and delete tables