CREATE TABLE Customer (
  Customer_ID INT PRIMARY KEY,
  CustomerName VARCHAR(100),
  Customer_Email VARCHAR(100),
  Mobile_Type VARCHAR(50)
);

INSERT INTO Customer VALUES
(1, 'Ahmed Ali', 'ahmed@gmail.com', 'Samsung'),
(2, 'Sara Mostafa', 'sara@gmail.com', 'Huawei'),
(3, 'Tarek Hany', 'tarek@gmail.com', 'Infinix'),
(4, 'Laila Nabil', 'laila@gmail.com', 'Samsung'),
(5, 'Omar Essam', 'omar@gmail.com', 'Apple'),
(6, 'Maha Fathy', 'maha@gmail.com', 'Apple'),
(7, 'Youssef Sami', 'youssef@gmail.com', 'Oppo'),
(8, 'Hanaa Khaled', 'hanaa@gmail.com', 'Xiaomi'),
(9, 'Kareem Hesham', 'kareem@gmail.com', 'Nokia'),
(10, 'Dina Mostafa', 'dina@gmail.com', 'Apple');

CREATE TABLE Employee (
  Employee_ID INT PRIMARY KEY,
  EmployeeName VARCHAR(100),
  Employee_Email VARCHAR(100),
  Salary DECIMAL(10,2)
);

INSERT INTO Employee VALUES
(1, 'Mohamed Said', 'mohamed@gmail.com', 8000),
(2, 'Mona Khaled', 'mona@gmail.com', 7500),
(3, 'Hassan Adel', 'hassan@gmail.com', 7200),
(4, 'Aya Ibrahim', 'aya@gmail.com', 7000),
(5, 'Ali Kamal', 'ali@gmail.com', 6800),
(6, 'Nour Magdy', 'nour@gmail.com', 8200),
(7, 'Tamer Younes', 'tamer@gmail.com', 7700),
(8, 'Eman Samir', 'eman@gmail.com', 7400),
(9, 'Sami Ahmed', 'sami@gmail.com', 7300),
(10, 'Reem Tarek', 'reem@gmail.com', 7600);

-- جدول الموبايلات
CREATE TABLE Mobile (
  Mobile_ID INT PRIMARY KEY,
  Brand VARCHAR(50),
  Model_Name VARCHAR(100),
  Price DECIMAL(10,2),
  AvailableQuantity INT
);

INSERT INTO Mobile VALUES
(1, 'Samsung', 'Galaxy S22', 23000, 12),
(2, 'Apple', 'iPhone 13', 34000, 8),
(3, 'Xiaomi', 'Redmi Note 12', 12000, 15),
(4, 'Oppo', 'Reno 8', 18000, 10),
(5, 'Samsung', 'Galaxy A73', 17000, 7),
(6, 'Apple', 'iPhone 14', 37000, 5),
(7, 'Infinix', 'Note 30 Pro', 9000, 20),
(8, 'Huawei', 'Nova 10', 19500, 6),
(9, 'Realme', 'GT Master', 16500, 11),
(10, 'Nokia', 'G21', 8000, 9);

CREATE TABLE Sale (
  Sale_ID INT PRIMARY KEY,
  Sale_Date DATE,
  Customer_ID INT,
  Employee_ID INT,
  Mobile_ID INT,
  Price DECIMAL(10,2),
  FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID),
  FOREIGN KEY (Employee_ID) REFERENCES Employee(Employee_ID),
  FOREIGN KEY (Mobile_ID) REFERENCES Mobile(Mobile_ID)
);

INSERT INTO Sale VALUES
(1, '2024-11-23', 1, 1, 1, 23000),
(2, '2024-12-31', 2, 2, 2, 34000),
(3, '2025-01-03', 3, 3, 3, 12000),
(4, '2025-01-25', 4, 4, 4, 18000),
(5, '2025-02-04', 5, 5, 5, 17000),
(6, '2025-03-18', 6, 6, 6, 37000),
(7, '2025-04-07', 7, 7, 7, 9000),
(8, '2025-04-17', 8, 8, 8, 19500),
(9, '2025-05-03', 9, 9, 9, 16500),
(10, '2025-05-10', 10, 10, 10, 8000);

CREATE TABLE Payment (
  Payment_ID INT PRIMARY KEY,
  Sale_ID INT,
  PaymentMethod VARCHAR(50),
  Amount_Paid DECIMAL(10,2),
  Payment_Date DATE,
  FOREIGN KEY (Sale_ID) REFERENCES Sale(Sale_ID)
);

INSERT INTO Payment VALUES
(1, 1, 'Cash', 23000, '2025-05-01'),
(2, 2, 'VISA', 34000, '2025-05-02'),
(3, 3, 'Cash', 12000, '2025-05-03'),
(4, 4, 'Vodafone Cash', 18000, '2025-05-04'),
(5, 5, 'Cash', 17000, '2025-05-05'),
(6, 6, 'VISA', 37000, '2025-05-06'),
(7, 7, 'Cash', 9000, '2025-05-07'),
(8, 8, 'Cash', 19500, '2025-05-08'),
(9, 9, 'Etisalat Cash', 16500, '2025-05-09'),
(10, 10, 'Credit Card', 8000, '2025-05-10');

CREATE TABLE Supplier (
  Supplier_ID INT PRIMARY KEY,
  SupplierName VARCHAR(100),
  Supplier_Email VARCHAR(100) 
);

INSERT INTO Supplier VALUES
(1, 'El Tawheed', 'eltawheed@gmail.com'),
(2, 'B.Tech', 'btech@gmail.com'),
(3, 'Mobile Shop Egypt', 'mobileshopeg@gmail.com'),
(4, 'Mega Mobiles', 'mega.mob@gmail.com'),
(5, 'FutureTech', 'futuretech@gmail.com'),
(6, 'Mobile World', 'mobileworld@gmail.com'),
(7, 'Techno Stores', 'techno.stores@gmail.com'),
(8, 'Al Raya Electronics', 'alraya@gmail.com'),
(9, 'Gadgets Plus', 'gadgetsplus@gmail.com'),
(10, 'SmartStore', 'smartstore@gmail.com');

CREATE TABLE Purchase (
  Purchase_ID INT PRIMARY KEY,
  Purchase_Date DATE,
  Supplier_ID INT,
  FOREIGN KEY (Supplier_ID) REFERENCES Supplier(Supplier_ID)
);

INSERT INTO Purchase VALUES
(1, '2024-10-25', 1),
(2, '2024-10-25', 2),
(3, '2024-10-25', 3),
(4, '2024-10-28', 4),
(5, '2024-10-28', 5),
(6, '2024-10-28', 6),
(7, '2024-11-10', 7),
(8, '2024-11-15', 8),
(9, '2024-11-15', 9),
(10, '2024-11-15', 10);

CREATE TABLE Purchase_Mobile (
  Purchase_ID INT,
  Mobile_ID INT,
  Quantity INT,
  Cost_PerUnit DECIMAL(10,2),
  PRIMARY KEY (Purchase_ID, Mobile_ID),
  FOREIGN KEY (Purchase_ID) REFERENCES Purchase(Purchase_ID),
  FOREIGN KEY (Mobile_ID) REFERENCES Mobile(Mobile_ID)
);

INSERT INTO Purchase_Mobile VALUES
(1, 1, 13, 20000),
(2, 2, 9, 32000),
(3, 3, 16, 10000),
(4, 4, 11, 15000),
(5, 5, 8, 16000),
(6, 6, 6, 33000),
(7, 7, 21, 8000),
(8, 8, 7, 17000),
(9, 9, 12, 15000),
(10, 10, 10, 7000);
