
INSERT INTO Actor (	ActorID, FirstName, LastName, BirthDate) VALUES
	(1,'Bill','Murray','1950/09/21'),
	(2,'Dan','Aykroyd','1952/07/01'),
    (3,'John','Candy','1950/10/31'),
    (4,'Steve','Martin',NULL),
    (5,'Sylvester','Stallone',NULL);
    
INSERT INTO Director (DirectorID, FirstName, LastName, BirthDate) VALUES
	(1,'Ivan','Reitman','1946/10/27'),
	(2,'Ted','Kotcheff', NULL);
    
INSERT INTO  Rating (RatingID, RatingName) VALUES
	(1,'G'),
	(2,'PG'),
    (3,'PG-13'),
    (4,'R');
    
INSERT INTO  Genre (GenreID, GenreName) VALUES
	(1,'Action'),
	(2,'Comedy'),
    (3,'Drama'),
    (4,'Horror');
    
INSERT INTO Movie (	MovieID, GenreID, DirectorID, RatingID, Title, ReleaseDate) VALUES
	(1, 1, 2, 4, 'Rambo: First Blood','1989/10/22'),
	(2, 2, NULL, 4,'Planes, Trains & Automobiles','1952/07/01'),
    (3, 2, 1, 2, 'Ghostbusters', NULL),
    (4, 2, NULL, 2, 'The Great Outdoors', '1988/06/17');
    
INSERT INTO CastMembers(CastMemberID, ActorID, MovieID, RoleName) VALUES
	(1, 5, 1, 'John Rambo'),
	(2, 4, 2, 'Neil Page'),
    (3, 3, 2, 'Del Griffith'),
    (4, 1, 3, 'Dr. Peter Venkman'),
    (5, 2, 3, 'Dr. Raymond Stanz'),
    (6, 2, 4, 'Roman Craig'),
    (7, 3, 4, 'Chet Ripleyo');
    

UPDATE Movie SET
	Title = 'Ghostbusters (1984)', 
    ReleaseDate = '1984/6/8'
WHERE MovieID = 3; 

UPDATE Genre SET
    GenreName = 'Action/Adventure'
WHERE GenreID = 1; 

SET SQL_SAFE_UPDATES = 0;
DELETE FROM CastMembers WHERE MovieID = 1;
DELETE FROM Movie WHERE MovieID = 1;

SET SQL_SAFE_UPDATES = 1;

ALTER TABLE Actor ADD DateOfDeath date NULL;

UPDATE Actor
SET DateOfDeath = '1994/3/4'
WHERE ActorID = 3;

SELECT * 
FROM Actor;
