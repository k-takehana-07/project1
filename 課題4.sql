-- 事前準備
CREATE TABLE Products (
    ProductID VARCHAR(10) PRIMARY KEY,
    ProductName VARCHAR(50),
    Stock INT
);

CREATE TABLE Orders (
    OrderID VARCHAR(10) PRIMARY KEY,
    ProductID VARCHAR(10),
    Quantity INT,
    OrderDate DATE
);

-- Productsテーブルにデータを追加
INSERT INTO Products (ProductID, ProductName, Stock) VALUES ('P001', 'Laptop', 10);
INSERT INTO Products (ProductID, ProductName, Stock) VALUES ('P002', 'Tablet', 20);
INSERT INTO Products (ProductID, ProductName, Stock) VALUES ('P003', 'Smartphone', 15);

-- Ordersテーブルにデータを追加
INSERT INTO Orders (OrderID, ProductID, Quantity, OrderDate) VALUES ('O001', 'P001', 2, '2024-11-01');
INSERT INTO Orders (OrderID, ProductID, Quantity, OrderDate) VALUES ('O002', 'P002', 1, '2024-11-02');
INSERT INTO Orders (OrderID, ProductID, Quantity, OrderDate) VALUES ('O003', 'P003', 3, '2024-11-03');

-- 課題1
-- トランザクションの開始
BEGIN;

-- 在庫（Stock）を更新（例：ProductID 'P001' の在庫を減らす）
UPDATE Products SET Stock = Stock - 1 WHERE ProductID = 'P001';

-- Ordersテーブルに新しい注文を追加
INSERT INTO Orders (OrderID, ProductID, Quantity, OrderDate) 
VALUES ('O004', 'P001', 1, '2024-11-04');

-- 追加したデータを確認
SELECT * FROM Orders;

-- 注文の取り消し（変更を無効化）
ROLLBACK;

-- ROLLBACK後にデータが取り消されているか確認
SELECT * FROM Orders;

-- 課題2
-- トランザクションの開始
BEGIN;

-- 在庫（Stock）を更新（例：ProductID 'P001' の在庫を減らす）
UPDATE Products SET Stock = Stock - 1 WHERE ProductID = 'P001';

-- Ordersテーブルに新しい注文を追加
INSERT INTO Orders (OrderID, ProductID, Quantity, OrderDate) 
VALUES ('O005', 'P001', 1, '2024-11-05');

-- 追加したデータを確認
SELECT * FROM Orders;

-- 変更を確定（注文を確定）
COMMIT;

-- COMMIT後にデータが残っていることを確認
SELECT * FROM Orders;
