-- Create the schema
CREATE SCHEMA IF NOT EXISTS ECommerceDB;

-- Use the schema
USE ECommerceDB;

SET @encryption_key = '!#Kp9@qz$rT5&xY';

-- VendorAuthentication table
CREATE TABLE VendorAuthentication (
    vendor_email VARCHAR(255) PRIMARY KEY,
    password_hash VARBINARY(32) NOT NULL
);

-- Create trigger for VendorAuthentication table
DELIMITER //
CREATE TRIGGER encrypt_vendor_password BEFORE INSERT ON VendorAuthentication
FOR EACH ROW
BEGIN
    SET NEW.password_hash = AES_ENCRYPT(NEW.password_hash, @encryption_key);
END;
DELIMITER;

-- CustomerAuthentication table
CREATE TABLE CustomerAuthentication (
    customer_email VARCHAR(255) PRIMARY KEY,
    password_hash VARBINARY(32) NOT NULL
);

-- Create trigger for CustomerAuthentication table
DELIMITER //
CREATE TRIGGER encrypt_customer_password BEFORE INSERT ON CustomerAuthentication
FOR EACH ROW
BEGIN
    SET NEW.password_hash = AES_ENCRYPT(NEW.password_hash, @encryption_key);
END;
DELIMITER;

-- Vendor table
CREATE TABLE Vendor (
    vendor_email VARCHAR(255) PRIMARY KEY,
    First_Name VARCHAR(100),
    Last_Name VARCHAR(100),
    Status BOOLEAN,
    Mobile JSON,
    City VARCHAR(100),
    State VARCHAR(100),
    Zipcode VARCHAR(20),
    register_timestamp DATETIME,
    FOREIGN KEY (vendor_email) REFERENCES VendorAuthentication(vendor_email)
);

-- Customer table
CREATE TABLE Customer (
    cust_email VARCHAR(255) PRIMARY KEY,
    First_name VARCHAR(100),
    Last_name VARCHAR(100),
    Mobile JSON,
    City VARCHAR(100),
    State VARCHAR(100),
    Zipcode VARCHAR(20),
    register_timestamp DATETIME,
    FOREIGN KEY (cust_email) REFERENCES CustomerAuthentication(customer_email) ON DELETE CASCADE
);

-- Item table
CREATE TABLE Item (
    item_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    description TEXT,
    price DECIMAL(10,2),
    category VARCHAR(100),
    image BLOB
);

-- Inventory_Item table
CREATE TABLE Inventory_Item (
    invt_item_id INT PRIMARY KEY AUTO_INCREMENT,
    item_id INT UNIQUE NOT NULL,
    vendor_email VARCHAR(255),
    item_qty INT,
    item_added_timestamp DATETIME,
    item_updated_timestamp DATETIME,
    FOREIGN KEY (item_id) REFERENCES Item(item_id),
    FOREIGN KEY (vendor_email) REFERENCES Vendor(vendor_email)
);

-- Payment_method table
CREATE TABLE Payment_method (
    payment_method_id INT PRIMARY KEY AUTO_INCREMENT,
    card_no VARCHAR(255),
    card_type VARCHAR(50),
    cust_email VARCHAR(255) NOT NULL,
    FOREIGN KEY (cust_email) REFERENCES Customer(cust_email) ON DELETE CASCADE
);

-- Order table
CREATE TABLE `Order` (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    payment_method_id INT,
    cust_email VARCHAR(255) NOT NULL,
    Order_Placed_timestamp DATETIME,
    FOREIGN KEY (payment_method_id) REFERENCES Payment_method(payment_method_id),
    FOREIGN KEY (cust_email) REFERENCES Customer(cust_email) ON DELETE CASCADE
);

-- Order_Details table
CREATE TABLE Order_Details (
    order_id INT,
    item_id INT,
    item_qty INT,
    PRIMARY KEY (order_id, item_id),
    FOREIGN KEY (order_id) REFERENCES `Order`(order_id),
    FOREIGN KEY (item_id) REFERENCES Item(item_id)
);

-- Cart_Item table
CREATE TABLE Cart_Item (
    cart_item_id INT PRIMARY KEY AUTO_INCREMENT,
    item_id INT UNIQUE NOT NULL,
    cust_email VARCHAR(255) NOT NULL,
    cart_item_qty INT,
    FOREIGN KEY (item_id) REFERENCES Item(item_id),
    FOREIGN KEY (cust_email) REFERENCES Customer(cust_email) ON DELETE CASCADE
);