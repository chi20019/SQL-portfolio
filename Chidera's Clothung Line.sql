CREATE TABLE Clothing
(ID int,
Name TEXT,
Cost int,
Color TEXT,
Quantity int
);

INSERT INTO Clothing VALUES
(1, 'Tshirt', 10, 'White', 17),
(2, 'Cargos', 20, 'Green', 21),
(3, 'Blouse', 8, 'Red', 12),
(4, 'Shorts', 15, 'Orange', 8),
(5, 'PJ shorts', 6, 'Pink', 12), 
(6, 'Crop top', 8, 'Green', 13),
(7, 'Socks', 5, 'Yellow', 4), 
(8, ' Sweatshirt', 9, 'Purple',  15),
(9, 'Slippers', 10, 'Black', 6),
(10, 'Tennis shoes', 20, 'Blue', 15),
(11, 'PJ Tops', 14, 'Red', 14), 
(12, 'Crocs', 5, 'Red', 11),  
(13, 'Skirts', 17, 'Purple', 13),
(14, 'Dress', 16, 'Pink', 15),
(15, 'Tanktops', 15, 'Gray', 6)

--Order all the items by the cost in descending order--

SELECT *
FROM Clothing
ORDER BY cost DESC;

--What is the total cost of all items?--
SELECT SUM(Cost)
FROM clothing
GROUP BY Quantity;


--Which clothing item cost less than 15 dollars?--
SELECT name, cost
FROM Clothing
WHERE Cost < 15;

