CREATE TABLE books 
		(
		book_id INT NOT NULL IDENTITY (101,1) ,
		title VARCHAR(100),
		author_fname VARCHAR(100),
		author_lname VARCHAR(100),
		released_year INT,
		stock_quantity INT,
		pages INT,
		PRIMARY KEY(book_id)
		);

	INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
	VALUES
	('Things Fall Apart', 'Chinua', 'Achebe', 1958, 82, 209),
	('Half Of a Yellow Sun', 'Chimamanda', 'Ngozi Adichie',2006, 43, 448),
	('Purple Hibiscus', 'Chimamanda', 'Ngozi Adichie', 2003, 12, 336),
	('The Secret Lives of Bba Segis Wives', 'Lola', 'Shoneyin', 2010, 97, 304),
	('Stay With Me', 'Ayobami', 'Adebayo', 2017, 154, 272),
	('Arrow of God', 'Chinua', 'Achebe', 1964, 26, 230),
	('The Joys of Motherhood', 'Buchi', 'Emecheta', 1979, 68, 224),
	('Under the Udala Trees', 'Chinelo', 'Okparanta', 2015, 55, 336),
	('A Man of the People', 'Chinua', 'Achebe', 1972, 104, 149),
	('Open City', 'Teju', 'Cole', 2011, 100, 208),
	('The Girl with the Louding Voice', 'Abi', 'Dare', 2020, 23, 400),
	('On Black Sisters Street', 'Chika', 'Unigwe', 2007, 12, 272),
	('Akata Witch', 'Nnedi', 'Okorafor', 2011, 49, 368),
	('Lagoon', 'Nnedi', 'Okafor', 2014, 95, 320),
	('Wahala', 'Nikki', 'May', 2022, 172, 384),
	('The Death of Vivek Oji', 'Akwaeke', 'Emezi', 2020, 92, 202);


	--What books were published after 1990?--
    SELECT title, author_fname, author_lname
	FROM books
	WHERE released_year > 1990 AND pages > 100

	--Pull a list of authors next to their last name in one column with alias and space in between.--
	SELECT CONCAT(author_fname, ' ', author_lname) AS 'Full Name'
	FROM books;

	-- Pull a list of authors next to their last name and the title of their book in one column with an alias and with the same symbol inbetween.--
	SELECT CONCAT_WS(' - ', title, author_fname,author_lname) AS 'Book Info' 
	    FROM books;

-- Shorten the title names of each books down to only 10 characters, give the results table an alias.--
	SELECT SUBSTRING (title, 1, 10) AS 'Short Titles'
	    FROM books;

--Reverse authors first name--
SELECT REVERSE(author_fname)
FROM books;

--Replace every title containing the letter lowercase 'L' and replace it with a number 7. Shorten the titles down to 10 letters. Give the results and alias title.--
	SELECT SUBSTRING
	(
	REPLACE(title, 'l', 7), 1, 10
	    ) AS 'FUN'
	       FROM books;

 --make each authors first name in caps and reverse their names--
	SELECT UPPER(REVERSE(author_fname))
	      FROM books;
	      
	     
	     
