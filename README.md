[課題2.sql](https://github.com/user-attachments/files/22488505/2.sql)
-- 事前準備1
CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerName VARCHAR(255),
    City VARCHAR(255)
);

CREATE TABLE Orders (
    OrderID INT AUTO_INCREMENT PRIMARY KEY,
    OrderDate DATE,
    CustomerID INT,
    Amount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- 事前準備2
-- Customers テーブルにデータを追加
INSERT INTO Customers (CustomerName, City) VALUES ('John Doe', 'New York');
INSERT INTO Customers (CustomerName, City) VALUES ('Jane Smith', 'Los Angeles');
INSERT INTO Customers (CustomerName, City) VALUES ('Michael Johnson', 'Chicago');
INSERT INTO Customers (CustomerName, City) VALUES ('Emily Davis', 'Houston');

-- Orders テーブルにデータを追加
INSERT INTO Orders (OrderDate, CustomerID, Amount) VALUES ('2024-06-01', 1, 150.00);
INSERT INTO Orders (OrderDate, CustomerID, Amount) VALUES ('2024-06-02', 1, 200.00);
INSERT INTO Orders (OrderDate, CustomerID, Amount) VALUES ('2024-06-03', 2, 300.00);
INSERT INTO Orders (OrderDate, CustomerID, Amount) VALUES ('2024-06-04', 4, 450.00);

-- 課題1
SELECT
    Customers.CustomerID,
    Customers.CustomerName,
    Customers.City,
    Orders.OrderID,
    Orders.OrderDate,
    Orders.Amount
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- 課題2
SELECT
    Customers.CustomerID,
    Customers.CustomerName,
    Customers.City,
    Orders.OrderID,
    Orders.OrderDate,
    Orders.Amount
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
