create database project2;
use project2;

CREATE TABLE products (
    productid INT PRIMARY KEY,
    product_name VARCHAR(255),
    part_no VARCHAR(50),
    product_labels VARCHAR(255),
    starting_inventory INT,
    receive_inventory INT,
    inventory_ship INT,
    inventory_on_hand INT,
    minimum_required INT
);

-- Inserting sample data, at least 30 records
INSERT INTO products (productid, product_name, part_no, product_labels, starting_inventory, receive_inventory, inventory_ship, inventory_on_hand, minimum_required) VALUES
(1, 'Product 1', 'P001', 'Label A, Label B', 100, 50, 30, 120, 50),
(2, 'Product 2', 'P002', 'Label C, Label D', 80, 60, 25, 115, 40),
(3, 'Product 3', 'P003', 'Label E, Label F', 120, 40, 35, 125, 60),
(4, 'Product 4', 'P004', 'Label G, Label H', 90, 70, 20, 110, 45),
(5, 'Product 5', 'P005', 'Label I, Label J', 110, 30, 40, 130, 55),
(6, 'Product 6', 'P006', 'Label K, Label L', 95, 55, 28, 105, 48),
(7, 'Product 7', 'P007', 'Label M, Label N', 105, 45, 32, 135, 65),
(8, 'Product 8', 'P008', 'Label O, Label P', 115, 35, 38, 140, 70),
(9, 'Product 9', 'P009', 'Label Q, Label R', 85, 65, 22, 100, 42),
(10, 'Product 10', 'P010', 'Label S, Label T', 95, 55, 28, 115, 50),
(11, 'Product 11', 'P011', 'Label U, Label V', 105, 45, 32, 125, 55),
(12, 'Product 12', 'P012', 'Label W, Label X', 115, 35, 38, 130, 60),
(13, 'Product 13', 'P013', 'Label Y, Label Z', 80, 70, 20, 105, 40),
(14, 'Product 14', 'P014', 'Label A1, Label B1', 90, 60, 25, 110, 45),
(15, 'Product 15', 'P015', 'Label C1, Label D1', 100, 50, 30, 120, 50),
(16, 'Product 16', 'P016', 'Label E1, Label F1', 120, 40, 35, 125, 60),
(17, 'Product 17', 'P017', 'Label G1, Label H1', 85, 65, 22, 100, 42),
(18, 'Product 18', 'P018', 'Label I1, Label J1', 95, 55, 28, 115, 50),
(19, 'Product 19', 'P019', 'Label K1, Label L1', 105, 45, 32, 125, 55),
(20, 'Product 20', 'P020', 'Label M1, Label N1', 115, 35, 38, 130, 60),
(21, 'Product 21', 'P021', 'Label O1, Label P1', 80, 70, 20, 105, 40),
(22, 'Product 22', 'P022', 'Label Q1, Label R1', 90, 60, 25, 110, 45),
(23, 'Product 23', 'P023', 'Label S1, Label T1', 100, 50, 30, 120, 50),
(24, 'Product 24', 'P024', 'Label U1, Label V1', 120, 40, 35, 125, 60),
(25, 'Product 25', 'P025', 'Label W1, Label X1', 85, 65, 22, 100, 42),
(26, 'Product 26', 'P026', 'Label Y1, Label Z1', 95, 55, 28, 115, 50),
(27, 'Product 27', 'P027', 'Label A2, Label B2', 105, 45, 32, 125, 55),
(28, 'Product 28', 'P028', 'Label C2, Label D2', 115, 35, 38, 130, 60),
(29, 'Product 29', 'P029', 'Label E2, Label F2', 80, 70, 20, 105, 40),
(30, 'Product 30', 'P030', 'Label G2, Label H2', 90, 60, 25, 110, 45);

CREATE TABLE purchases (
    purchases_id INT PRIMARY KEY,
    supplier_id INT,
    product_id INT,
    order_receive INT,
    purchase_date DATE,
    FOREIGN KEY (product_id) REFERENCES products(productid)
);

-- Inserting sample data, at least 15 records
CREATE TABLE purchases (
    purchases_id INT(3) PRIMARY KEY,
    supplier_id INT unique,
    product_id INT,
    order_receive INT,
    purchase_date DATE,
    FOREIGN KEY (product_id) REFERENCES products(productid)
);

-- Inserting sample data, at least 15 records
INSERT INTO purchases (purchases_id, supplier_id, product_id, order_receive, purchase_date) VALUES
(101, 9001, 1, 50, '2024-01-10'),
(102, 9002, 2, 40, '2024-01-15'),
(103, 9003, 3, 60, '2024-01-20'),
(104, 9004, 4, 45, '2024-01-25'),
(105, 9005, 5, 55, '2024-02-01'),
(106, 9006, 6, 35, '2024-02-05'),
(107, 9007, 7, 65, '2024-02-10'),
(108, 9008, 8, 30, '2024-02-15'),
(109, 9009, 9, 70, '2024-02-20'),
(110, 9010, 10, 50, '2024-02-25'),
(111, 9011, 11, 40, '2024-03-01'),
(112, 9012, 12, 60, '2024-03-05'),
(113, 9013, 13, 45, '2024-03-10'),
(114, 9014, 14, 55, '2024-03-15'),
(115, 9015, 15, 35, '2024-03-20');

INSERT INTO purchases (purchases_id, supplier_id, product_id, order_receive, purchase_date) VALUES
(116, 9016, 16, 50, '2024-03-25'),
(117, 9017, 17, 40, '2024-04-01'),
(118, 9018, 18, 60, '2024-04-05'),
(119, 9019, 19, 45, '2024-04-10'),
(120, 9020, 20, 55, '2024-04-15'),
(121, 9021, 21, 35, '2024-04-20'),
(122, 9022, 22, 65, '2024-04-25'),
(123, 9023, 23, 30, '2024-05-01'),
(124, 9024, 24, 70, '2024-05-05'),
(125, 9025, 25, 50, '2024-05-10'),
(126, 9026, 26, 40, '2024-05-15'),
(127, 9027, 27, 60, '2024-05-20'),
(128, 9028, 28, 45, '2024-05-25'),
(129, 9029, 29, 55, '2024-06-01'),
(130, 9030, 30, 35, '2024-06-05'),
(131, 9031, 1, 65, '2024-06-10'),
(132, 9032, 2, 30, '2024-06-15'),
(133, 9033, 3, 70, '2024-06-20'),
(134, 9034, 4, 50, '2024-06-25'),
(135, 9035, 5, 40, '2024-07-01');

CREATE TABLE suppliers (
    suppliers_id INT,
    suppliers_name VARCHAR(255),
    PRIMARY KEY (suppliers_id),
    FOREIGN KEY (suppliers_id) REFERENCES purchases (supplier_id)
);

-- Inserting sample data, at least 15 records
INSERT INTO suppliers (suppliers_id, suppliers_name) VALUES
(9001, 'ABC Corporation'),
(9002, 'XYZ Enterprises'),
(9003, 'Smith & Co.'),
(9004, 'Johnson Ltd.'),
(9005, 'Global Supplies Inc.'),
(9006, 'Sunrise Trading'),
(9007, 'Best Buy Importers'),
(9008, 'Greenfield Industries'),
(9009, 'Meridian Trading'),
(9010, 'Oceanic Distributors'),
(9011, 'Starlight Inc.'),
(9012, 'Golden Harvest Trading'),
(9013, 'Sunrise Foods'),
(9014, 'Blue Sky Imports'),
(9015, 'Evergreen Trading'),
(9016, 'Pacific Merchants'),
(9017, 'Summit Trading Co.'),
(9018, 'Noble Distributors'),
(9019, 'First Choice Importers'),
(9020, 'Royal Importers');


CREATE TABLE orders (
    orderid INT PRIMARY KEY,
    title VARCHAR(50),
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    productid INT,
    numbershipped INT,
    order_date DATE,
    FOREIGN KEY (productid) REFERENCES products(productid)
);

-- Inserting sample data, 50 records
INSERT INTO orders (orderid, title, first_name, last_name, productid, numbershipped, order_date) VALUES
(1, 'Mr.', 'John', 'Doe', 1, 2, '2024-01-10'),
(2, 'Ms.', 'Jane', 'Smith', 2, 3, '2024-01-15'),
(3, 'Dr.', 'Michael', 'Johnson', 3, 1, '2024-01-20'),
(4, 'Mr.', 'David', 'Williams', 4, 5, '2024-01-25'),
(5, 'Ms.', 'Emily', 'Brown', 5, 4, '2024-02-01'),
(6, 'Dr.', 'Jennifer', 'Davis', 6, 3, '2024-02-05'),
(7, 'Mr.', 'Daniel', 'Miller', 7, 2, '2024-02-10'),
(8, 'Ms.', 'Jessica', 'Wilson', 8, 1, '2024-02-15'),
(9, 'Dr.', 'Matthew', 'Moore', 9, 6, '2024-02-20'),
(10, 'Mr.', 'Christopher', 'Taylor', 10, 2, '2024-02-25'),
(11, 'Ms.', 'Ashley', 'Anderson', 11, 3, '2024-03-01'),
(12, 'Dr.', 'Andrew', 'Thomas', 12, 4, '2024-03-05'),
(13, 'Mr.', 'Joseph', 'Jackson', 13, 5, '2024-03-10'),
(14, 'Ms.', 'Megan', 'White', 14, 2, '2024-03-15'),
(15, 'Dr.', 'Amanda', 'Harris', 15, 3, '2024-03-20'),
(16, 'Mr.', 'Ryan', 'Martin', 16, 4, '2024-03-25'),
(17, 'Ms.', 'Nicole', 'Thompson', 17, 1, '2024-04-01'),
(18, 'Dr.', 'Justin', 'Garcia', 18, 2, '2024-04-05'),
(19, 'Mr.', 'Robert', 'Martinez', 19, 3, '2024-04-10'),
(20, 'Ms.', 'Hannah', 'Robinson', 20, 4, '2024-04-15'),
(21, 'Dr.', 'Jordan', 'Clark', 21, 2, '2024-04-20'),
(22, 'Mr.', 'William', 'Rodriguez', 22, 3, '2024-04-25'),
(23, 'Ms.', 'Samantha', 'Lewis', 23, 1, '2024-05-01'),
(24, 'Dr.', 'Taylor', 'Lee', 24, 5, '2024-05-05'),
(25, 'Mr.', 'Brandon', 'Walker', 25, 4, '2024-05-10'),
(26, 'Ms.', 'Rachel', 'Hall', 26, 3, '2024-05-15'),
(27, 'Dr.', 'Lauren', 'Allen', 27, 2, '2024-05-20'),
(28, 'Mr.', 'Timothy', 'Young', 28, 1, '2024-05-25'),
(29, 'Ms.', 'Kayla', 'Wright', 29, 6, '2024-06-01'),
(30, 'Dr.', 'Zachary', 'King', 30, 2, '2024-06-05'),
(31, 'Mr.', 'Joshua', 'Scott', 1, 3, '2024-06-10'),
(32, 'Ms.', 'Emma', 'Adams', 2, 4, '2024-06-15'),
(33, 'Dr.', 'Alexis', 'Baker', 3, 2, '2024-06-20'),
(34, 'Mr.', 'Tyler', 'Perez', 4, 1, '2024-06-25'),
(35, 'Ms.', 'Olivia', 'Cook', 5, 5, '2024-07-01'),
(36, 'Dr.', 'Dylan', 'Edwards', 6, 4, '2024-07-05'),
(37, 'Mr.', 'Nathan', 'Parker', 7, 3, '2024-07-10'),
(38, 'Ms.', 'Grace', 'Evans', 8, 2, '2024-07-15'),
(39, 'Dr.', 'Madison', 'Morris', 9, 1, '2024-07-20'),
(40, 'Mr.', 'Caleb', 'Watson', 10, 6, '2024-07-25'),
(41, 'Ms.', 'Chloe', 'James', 11, 2, '2024-08-01'),
(42, 'Dr.', 'Logan', 'Hill', 12, 3, '2024-08-05'),
(43, 'Mr.', 'Ethan', 'Sullivan', 13, 4, '2024-08-10'),
(44, 'Ms.', 'Lily', 'Long', 14, 5, '2024-08-15'),
(45, 'Dr.', 'Sarah', 'Bell', 15, 2, '2024-08-20'),
(46, 'Mr.', 'Jason', 'Rivera', 16, 3, '2024-08-25'),
(47, 'Ms.', 'Mia', 'Collins', 17, 1, '2024-09-01'),
(48, 'Dr.', 'Sophia', 'Reed', 18, 6, '2024-09-05'),
(49, 'Mr.', 'Christian', 'Gonzalez', 19, 2, '2024-09-10'),
(50, 'Ms.', 'Isabella', 'Bailey', 20, 3, '2024-09-15');
