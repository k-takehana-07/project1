-- 課題1
CREATE DATABASE Cost;

-- 課題2
SHOW DATABASES;

-- 課題3
USE Cost;

-- 課題4
CREATE TABLE User (
UserID INT PRIMARY KEY AUTO_INCREMENT,
FirstName VARCHAR(50),
LastName VARCHAR(50),
DateOfBirth DATE,
Email VARCHAR(100),
Salary INT,
IsActive BOOLEAN
);

--課題5
INSERT INTO User (FirstName, LastName, DateOfBirth, Email, Salary, IsActive) Values
('太郎', '山田', '1990-05-15', 'taro.yamada@example.com', 5000000, TRUE),
('花子', '田中', '1992-07-21', 'hanako.tanaka@example.com', 4800000, TRUE),
('一郎', '佐藤', '1988-03-10', 'ichiro.sato@example.com', 5500000, FALSE),
('桃子', '高橋', '1995-12-05', 'momoko.takahashi@example.com', 4700000, TRUE),
('健一', '中村', '1991-06-30', 'kenichi.nakamura@example.com', 5100000, TRUE),
('恵美', '小林', '1989-09-25', 'emi.kobayashi@example.com', 4900000, FALSE),
('翔太', '加藤', '1993-02-14', 'shota.kato@example.com', 5300000, TRUE),
('直子', '伊藤', '1996-11-18', 'naoko.ito@example.com', 4500000, TRUE),
('誠', '山本', '1994-04-09', 'makoto.yamamoto@example.com', 5200000, FALSE),
('由美', '松本', '1990-08-22', 'yumi.matsumoto@example.com', 5000000, TRUE);

-- 課題6
ALTER TABLE User
ADD COLUMN HireDate DATE,
ADD COLUMN RetirementDate DATE;

-- 課題7
SELECT * FROM User;

-- 課題8
SELECT * FROM User
ORDER BY Salary DESC;

-- 課題9
SELECT FirstName, LastName, IsActive FROM User;

-- 課題10
SELECT FirstName, LastName, IsActive FROM User
WHERE IsActive = TRUE;

-- 課題11
UPDATE User
SET HireDate = '2024-04-01';

-- 課題12
DELETE FROM User;

-- 課題13
DROP TABLE User;
