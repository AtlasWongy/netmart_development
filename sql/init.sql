CREATE DATABASE IF NOT EXISTS netmart_db;

USE netmart_db;

CREATE TABLE IF NOT EXISTS users (
    userID INT AUTO_INCREMENT PRIMARY KEY,
    userName varchar(25) NOT NULL,
    password varchar(25) NOT NULL,
    firstName varchar(25) NOT NULL,
    lastName varchar(25) NOT NULL,
    email varchar(25) NOT NULL,
    registeredDate datetime NOT NULL,
    lastModifiedDate datetime NOT NULL
);

INSERT INTO users (userName, password, firstName, lastName, email, registeredDate, lastModifiedDate)
VALUES
    ('TsiKganWong', 'password123', 'Tsi Kgan', 'Wong', 'TsiKganWong@gmail.com', NOW(), NOW()),
    ('ChiltonLjh', 'password123', 'Chilton', 'Ljh', 'ChiltonLjh@gmail.com', NOW(), NOW()),
    ('WongYiJie', 'password123', 'Yi Jie', 'Wong', 'YiJieWong@gmail.com', NOW(), NOW());

CREATE TABLE IF NOT EXISTS items (
    itemID INT AUTO_INCREMENT PRIMARY KEY,
    sellerID INT NOT NULL,
    itemName varchar(25) NOT NULL,
    quantity INT NOT NULL,
    cost DECIMAL(10, 2) NOT NULL,
    createdDT datetime NOT NULL,
    discount DECIMAL(5, 2) NOT NULL,
    soldInd BOOLEAN NOT NULL,
    location varchar(25) NOT NULL,
    category varchar(25) NOT NULL,
    lastModifiedBy varchar(25) NOT NULL,
    lastModifiedDate datetime NOT NULL
);

INSERT INTO items (sellerID, itemName, quantity, cost, createdDT, discount,
                   soldInd, location, category, lastModifiedBy, lastModifiedDate)
VALUES
    (10, 'Playstation5', 10, 500.00, '2023-04-05 13:00:00', 0.00, false, 'Japan', 'entertainment',
     'SYSTEM', '2023-10-10 14:00:00'),
    (14, 'PowerCable', 120, 12.50, '2023-05-07 14:35:00', 0.10, false, 'Canada', 'tools',
     'SYSTEM', '2023-10-10 14:00:00'),
    (32, 'MiniEZOven', 200, 79.80, '2023-06-18 18:00:00', 0.50, false, 'China', 'kitchen',
     'SYSTEM', '2023-11-12 13:15:00');