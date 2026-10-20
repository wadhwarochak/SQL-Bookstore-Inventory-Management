A. Data Retrieval & Filtering

-- 1. Retrieve all details of every book in the inventory.
SELECT * FROM books;

-- 2. List the name, author, and price of each book available.
SELECT title, author, price FROM books;

-- 3. Display the titles of books that are considered expensive according to company standards (above a certain price threshold).
SELECT title, price FROM books WHERE price > 40;


-- 4. Identify books that are currently out of stock.
SELECT title, stock FROM books WHERE stock = 0;

-- 5. Find the top 10 most expensive books in the catalog.
SELECT title, price FROM books ORDER BY price DESC LIMIT 10;

-- 6. Retrieve the five oldest books based on their publication year.
SELECT title, publication_year FROM books ORDER BY publication_year LIMIT 5;

-- 7. Find books that have not yet been rated by customers.
SELECT title FROM books WHERE rating IS NULL;

-- 8. Show books where the publisher’s information is available.
SELECT title, publisher FROM books WHERE publisher IS NOT NULL;







B. Working with Operators

-- 1. Display each book’s title, its listed price, and the price after applying a 10% tax.
SELECT title, price, price * 1.10 AS price_with_tax FROM books;

-- 2. Identify books with a high page count but still priced affordably.
SELECT title, pages, price FROM books WHERE pages >= 500 AND price <= 25;

-- 3. Find books whose rating is different from the highest possible score.
SELECT title, rating FROM books WHERE rating IS NOT NULL AND rating <> 5.0;

-- 4. Retrieve books that are either not in English or are offered in a digital format.
SELECT title, language, format FROM books WHERE language <> 'English' OR format = 'eBook';





C. Pattern Matching & Range Filtering

-- 1. List books whose titles include a certain keyword, regardless of case.


-- 2. Identify authors whose last names start with a specific two-letter prefix.


-- 3. Find all books that fall under a selected set of genres.


-- 4. Retrieve books whose prices are within a specified range.


-- 5. List books published outside of a given year range.