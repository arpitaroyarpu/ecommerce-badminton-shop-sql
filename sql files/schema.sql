-- Set default character set for Bangla compatibility
SET NAMES utf8mb4;
SET CHARACTER SET utf8mb4;

--1. USERS TABLE FOR LOGIN SYSTEM
CREATE TABLE Users (
  user_id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(50) UNIQUE NOT NULL,
  password_hash VARCHAR(255) NOT NULL,
  role ENUM('customer', 'owner', 'admin') NOT NULL,
  email VARCHAR(100) UNIQUE,  
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--2. CUSTOMER TABLE
CREATE TABLE Customer (
  cus_id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,
  cus_name VARCHAR(100) NOT NULL,
  cus_email VARCHAR(100) UNIQUE NOT NULL,  
  cus_mobile VARCHAR(20),
  cus_address TEXT,
  FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--3. OWNER TABLE
CREATE TABLE Owner (
  owner_id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,
  owner_name VARCHAR(100) NOT NULL,
  owner_email VARCHAR(100) UNIQUE,  
  owner_mobile VARCHAR(20) UNIQUE,
  FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--4. CATEGORY TABLE
CREATE TABLE Category (
  cat_id INT AUTO_INCREMENT PRIMARY KEY,
  cat_name VARCHAR(100) NOT NULL UNIQUE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--5. PRODUCT TABLE
CREATE TABLE Product (
  product_id INT AUTO_INCREMENT PRIMARY KEY,
  product_name VARCHAR(100) NOT NULL,
  available_quantity INT NOT NULL,
  selling_price DECIMAL(10, 2) NOT NULL,
  product_brand VARCHAR(100),
  product_image VARCHAR(255),
  product_description TEXT,
  cat_id INT,
  status ENUM('active', 'inactive') DEFAULT 'active',
  FOREIGN KEY (cat_id) REFERENCES Category(cat_id) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 6. ORDERS TABLE
CREATE TABLE Orders (
  ord_id INT AUTO_INCREMENT PRIMARY KEY,
  ord_description TEXT,
  ord_date DATETIME NOT NULL,  -- Changed from DATE to DATETIME
  ord_total DECIMAL(10, 2) NOT NULL,
  order_status ENUM('pending', 'shipped', 'delivered', 'cancelled') DEFAULT 'pending',
  cus_id INT NOT NULL,
  FOREIGN KEY (cus_id) REFERENCES Customer(cus_id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--7. DELIVERY TABLE
CREATE TABLE Delivery (
  delivery_id INT AUTO_INCREMENT PRIMARY KEY,
  ord_id INT NOT NULL,
  cus_id INT NOT NULL,
  delivery_method ENUM('Home Delivery', 'Courier (SA Paribahan)', 'In-store Pickup'),
  delivery_status ENUM('pending', 'in transit', 'delivered', 'cancelled') DEFAULT 'pending',  
  delivery_address TEXT,
  delivery_date DATE,
  FOREIGN KEY (ord_id) REFERENCES Orders(ord_id) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (cus_id) REFERENCES Customer(cus_id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--8. PAYMENT TABLE
CREATE TABLE Payment (
  payment_id INT AUTO_INCREMENT PRIMARY KEY,
  ord_id INT NOT NULL,
  cus_id INT NOT NULL,
  payment_type ENUM('Cash', 'Card', 'Mobile Banking', 'Other'),  -- Changed to ENUM for fixed methods
  payment_details TEXT,
  payment_status ENUM('paid', 'unpaid', 'failed') DEFAULT 'unpaid',
  payment_date DATE,
  FOREIGN KEY (ord_id) REFERENCES Orders(ord_id) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (cus_id) REFERENCES Customer(cus_id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--9. SALES TABLE
CREATE TABLE Sales (
  sales_id INT AUTO_INCREMENT PRIMARY KEY,
  sales_date DATE NOT NULL,
  product_quantity INT NOT NULL,
  selling_price DECIMAL(10,2) NOT NULL,
  product_id INT NOT NULL,
  cus_id INT NOT NULL,
  ord_id INT NOT NULL,
  owner_id INT NOT NULL,
  total_price DECIMAL(10, 2) GENERATED ALWAYS AS (product_quantity * selling_price) STORED,
  FOREIGN KEY (product_id) REFERENCES Product(product_id) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (cus_id) REFERENCES Customer(cus_id) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (ord_id) REFERENCES Orders(ord_id) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (owner_id) REFERENCES Owner(owner_id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--10. STOCK TABLE
CREATE TABLE Stock (
  stock_id INT AUTO_INCREMENT PRIMARY KEY,
  stock_date DATE NOT NULL,
  product_quantity INT NOT NULL,
  buying_price DECIMAL(10,2) NOT NULL,
  product_id INT NOT NULL,
  owner_id INT NOT NULL,
  FOREIGN KEY (product_id) REFERENCES Product(product_id) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (owner_id) REFERENCES Owner(owner_id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


11. INDEXES FOR PERFORMANCE
CREATE INDEX idx_orders_cus_id ON Orders(cus_id);
CREATE INDEX idx_product_cat_id ON Product(cat_id);
CREATE INDEX idx_sales_product_id ON Sales(product_id);
CREATE INDEX idx_stock_product_id ON Stock(product_id);
-- Optional indexes on status columns for faster filtering if needed
CREATE INDEX idx_orders_order_status ON Orders(order_status);
CREATE INDEX idx_payment_payment_status ON Payment(payment_status);
CREATE INDEX idx_delivery_delivery_status ON Delivery(delivery_status);