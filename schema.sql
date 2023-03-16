-- Create Books Table
CREATE TABLE books (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  author_id INT NOT NULL,
  publisher VARCHAR(255) NOT NULL,
  publication_date DATE NOT NULL,
  isbn VARCHAR(13) UNIQUE NOT NULL,
  genre VARCHAR(255) NOT NULL,
  price DECIMAL(6, 2) NOT NULL
);

-- Create Authors Table
CREATE TABLE authors (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  biography TEXT,
  contact_information VARCHAR(255)
);

-- Create Customers Table
CREATE TABLE customers (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) UNIQUE NOT NULL,
  address VARCHAR(255) NOT NULL,
  phone_number VARCHAR(20) UNIQUE NOT NULL,
  payment_information TEXT NOT NULL
);

-- Create Orders Table
CREATE TABLE orders (
  id INT AUTO_INCREMENT PRIMARY KEY,
  date DATE NOT NULL,
  order_number INT UNIQUE NOT NULL,
  customer_id INT NOT NULL,
  status ENUM('Pending', 'Shipped', 'Delivered', 'Cancelled') NOT NULL
);

-- Create Transactions Table
CREATE TABLE transactions (
  id INT AUTO_INCREMENT PRIMARY KEY,
  order_id INT NOT NULL,
  payment_amount DECIMAL(8, 2) NOT NULL,
  payment_date DATE NOT NULL,
  payment_method ENUM('Credit Card', 'Debit Card', 'PayPal') NOT NULL
);

-- Create Foreign Key Constraints
ALTER TABLE books
ADD FOREIGN KEY (author_id) REFERENCES authors(id);

ALTER TABLE orders
ADD FOREIGN KEY (customer_id) REFERENCES customers(id);

ALTER TABLE transactions
ADD FOREIGN KEY (order_id) REFERENCES orders(id);