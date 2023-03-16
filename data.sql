-- Sample data for authors
INSERT INTO authors (name, biography, contact_information)
VALUES ('J.K. Rowling', 'British author best known for the Harry Potter series.', 'jk.rowling@example.com'),
       ('George R.R. Martin', 'American author best known for the A Song of Ice and Fire series.', 'grr.martin@example.com');

-- Sample data for books
INSERT INTO books (title, author_id, publisher, publication_date, isbn, genre, price)
VALUES ('Harry Potter and the Philosopher''s Stone', 1, 'Bloomsbury', '1997-06-26', '9780747532699', 'Fantasy', 19.99),
       ('A Game of Thrones', 2, 'Bantam Spectra', '1996-08-01', '9780553103540', 'Fantasy', 24.99);

-- Sample data for customers
INSERT INTO customers (name, email, address, phone_number, payment_information)
VALUES ('John Doe', 'john.doe@example.com', '123 Main St, Springfield', '555-123-4567', 'Visa **** 1234');

-- Sample data for orders
INSERT INTO orders (date, order_number, customer_id, status)
VALUES ('2022-01-01', 1001, 1, 'Delivered');

-- Sample data for transactions
INSERT INTO transactions (order_id, payment_amount, payment_date, payment_method)
VALUES (1, 19.99, '2022-01-01', 'Credit Card');