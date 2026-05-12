/*
    Insert sample data into the EmbroideryBusinessDB database.
*/

USE EmbroideryBusinessDB;
GO

/* Insert customers */
INSERT INTO Customers (FirstName, LastName, Phone, Email)
VALUES
('Nicole', 'Johnson', '702-858-5507', 'realnicole@gmail.com'),
('Lynette', 'Jackson', '225-507-9311', 'Lynette.jackson@gmail.com'),
('Sabrina', 'Jordan', '612-504-5393', 'JordanS23@gmail.com');

/* Insert categories */
INSERT INTO Categories (CategoryName)
VALUES
('Shirts'),
('Sweaters'),
('Hats');

/* Insert sizes */
INSERT INTO Sizes (SizeName)
VALUES
('Small'),
('Medium'),
('Large'),
('OSFA');

/* Insert colors */
INSERT INTO Colors (ColorName)
VALUES
('Black'),
('Red'),
('Purple'),
('Pink');

/* Insert products */
INSERT INTO Products (ProductName, CategoryID)
VALUES
('T-Shirt', 1),
('Crewneck', 2),
('Fitted Hat', 3);

/* Insert inventory records */
INSERT INTO Inventory (QuantityOnHand, Cost, SalePrice, ProductID, SizeID, ColorID)
VALUES
(5, 12.00, 40.00, 1, 1, 1),
(5, 15.00, 75.00, 2, 2, 2),
(5, 7.00, 46.50, 3, 4, 4);

/* Insert orders */
INSERT INTO Orders (OrderDate, OrderTotal, OrderStatus, CustomerID)
VALUES
('2026-04-20', 120.00, 'Pending', 1),
('2026-04-22', 75.00, 'Completed', 2),
('2026-03-02', 93.00, 'Completed', 3);

/* Insert order details */
INSERT INTO OrderDetails (Quantity, SalePrice, OrderID, InventoryID)
VALUES
(3, 40.00, 1, 1),
(1, 75.00, 2, 2),
(2, 46.50, 3, 3);
