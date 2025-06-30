CREATE TABLE rachel_library_data(ID int PRIMARY KEY,Title VARCHAR(25) NOT NULL, AuthorFirst VARCHAR(25) NOT NULL,AuthorLast VARCHAR(25) NOT NULL, Genre VARCHAR(25) NOT NULL,Format VARCHAR(25) NOT NULL
);

INSERT INTO rachel_library_data(ID,Title,AuthorFirst,AuthorLast,Genre,Format)
VALUES 
(1, 'Hyperion', 'Dan', 'Simmons', 'Sci-Fi', 'Audiobook'),
(2, 'The King In Yelllow', 'Robert', 'Chambers', 'Horror', 'E-Book'),
(3, 'The Apothecary Diaries', 'Natsu', 'Hyuga', 'Drama', 'E-Book'),
(4, 'Dune', 'Frank','Herbert', 'Sci-Fi', 'E-book'),
(5, 'Little Women', 'Louisa', 'Alcott', 'Drama', 'Hardcover'),
(6, 'Wuthering Heights', 'Emily', 'Bronte', 'Tragedy', 'Hardcover'),
(7, 'Ready Player One', 'Ernest', 'Cline', 'Adventure', 'Paperback'),
(8, 'Look Back', 'Tatsuki', 'Fujimoto', 'Drama', 'Paperback'),
(9, 'Circe', 'Madeline', 'Miller', 'Fantasy', 'Paperback'),
(10, 'Fahrenheit 451', 'Ray', 'Bradbury', 'Fiction', 'Paperback');

SELECT * FROM rachel_library_data;


