-- Query 1
CREATE TABLE BOOKSHELVES (id SERIAL PRIMARY KEY, name VARCHAR(255));

-- Query 2:
INSERT INTO bookshelves(name) SELECT DISTINCT bookshelf FROM books;

-- Query 3:
ALTER TABLE books ADD COLUMN bookshelf_id INT;

-- Query 4:
UPDATE books SET bookshelf_id=shelf.id FROM (SELECT * FROM bookshelves) AS shelf WHERE books.bookshelf = shelf.name;

-- Query 5
ALTER TABLE books DROP COLUMN bookshelf;

-- Query 6
ALTER TABLE books ADD CONSTRAINT fk_bookshelves FOREIGN KEY (bookshelf_id) REFERENCES bookshelves(id);
