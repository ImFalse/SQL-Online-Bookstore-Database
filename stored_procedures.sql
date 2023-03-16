-- View: Books with author names
CREATE VIEW books_with_authors AS
SELECT b.id, b.title, a.name AS author, b.publisher, b.publication_date, b.isbn, b.genre, b.price
FROM books b
JOIN authors a ON b.author_id = a.id;

-- Stored Procedure: Add a book
DELIMITER //
CREATE PROCEDURE add_book(IN p_title VARCHAR(255), IN p_author_id INT, IN p_publisher VARCHAR(255), IN p_publication_date DATE, IN p_isbn VARCHAR(13), IN p_genre VARCHAR(255), IN p_price DECIMAL(6, 2))
BEGIN
  INSERT INTO books (title, author_id, publisher, publication_date, isbn, genre, price)
  VALUES (p_title, p_author_id, p_publisher, p_publication_date, p_isbn, p_genre, p_price);
END //
DELIMITER ;

-- Stored Procedure: Update a book
DELIMITER //
CREATE PROCEDURE update_book(IN p_id INT, IN p_title VARCHAR(255), IN p_author_id INT, IN p_publisher VARCHAR(255), IN p_publication_date DATE, IN p_isbn VARCHAR(13), IN p_genre VARCHAR(255), IN p_price DECIMAL(6, 2))
BEGIN
  UPDATE books
  SET title = p_title, author_id = p_author_id, publisher = p_publisher, publication_date = p_publication_date, isbn = p_isbn, genre = p_genre, price = p_price
  WHERE id = p_id;
END //
DELIMITER ;

-- Stored Procedure: Delete a book
DELIMITER //
CREATE PROCEDURE delete_book(IN p_id INT)
BEGIN
  DELETE FROM books
  WHERE id = p_id;
END //
DELIMITER ;