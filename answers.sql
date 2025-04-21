-- Question 1
USE transactiondb;
CREATE TABLE ProductDetail1NF (
    OrderID INT,
    CustomerName VARCHAR(100),
    Product VARCHAR(100)
);

INSERT INTO ProductDetail1NF (OrderID, CustomerName, Product) VALUES
(101, 'John Doe', 'Laptop'),
(101, 'John Doe', 'Mouse'),
(102, 'Jane Smith', 'Tablet'),
(102, 'Jane Smith', 'Keyboard'),
(102, 'Jane Smith', 'Mouse'),
(103, 'Emily Clark', 'Phone');

-- Question 2
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);
CREATE TABLE OrderDetails (
    OrderID INT,
    Product VARCHAR(100),
    Quantity INT,
    PRIMARY KEY (OrderID, Product),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);
-- Orders
INSERT INTO Orders VALUES (101, 'John Doe');
INSERT INTO Orders VALUES (102, 'Jane Smith');
INSERT INTO Orders VALUES (103, 'Emily Clark');

-- OrderDetails
INSERT INTO OrderDetails VALUES (101, 'Laptop', 2);
INSERT INTO OrderDetails VALUES (101, 'Mouse', 1);
INSERT INTO OrderDetails VALUES (102, 'Tablet', 3);
INSERT INTO OrderDetails VALUES (102, 'Keyboard', 1);
INSERT INTO OrderDetails VALUES (102, 'Mouse', 2);
INSERT INTO OrderDetails VALUES (103, 'Phone', 1);