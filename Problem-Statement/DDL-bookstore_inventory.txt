
-- DDL for Bookstore Inventory case study

DROP TABLE IF EXISTS books;
CREATE TABLE books 
(
    book_id             INT PRIMARY KEY,
    title               TEXT NOT NULL,
    author              TEXT NOT NULL,
    genre               TEXT NOT NULL,
    price               NUMERIC(8,2) NOT NULL,
    pages               INT NOT NULL,
    publication_year    INT NOT NULL CHECK (publication_year BETWEEN 1800 AND 2100),
    rating              NUMERIC(2,1),
    stock               INT NOT NULL,
    language            TEXT NOT NULL,
    format              TEXT NOT NULL CHECK (format IN ('Hardcover','Paperback','eBook')),
    publisher           TEXT,
    isbn                VARCHAR(13) UNIQUE,
    added_date          DATE NOT NULL
);

