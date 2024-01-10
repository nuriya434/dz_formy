-- Таблица для клиентов
CREATE TABLE Customers (
    CustomerID SERIAL PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100)
);

-- Таблица для заказов
CREATE TABLE Orders (
    OrderID SERIAL PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Таблица для товаров
CREATE TABLE Products (
    ProductID SERIAL PRIMARY KEY,
    Name VARCHAR(255),
    Description TEXT,
    Price DECIMAL(10, 2),
    Size VARCHAR(10),
    Color VARCHAR(50)
);

-- Таблица для характеристик товаров
CREATE TABLE ProductAttributes (
    ProductAttributeID SERIAL PRIMARY KEY,
    ProductID INT,
    Material VARCHAR(50),
    Style VARCHAR(50),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);
