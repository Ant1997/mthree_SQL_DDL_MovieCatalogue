DROP DATABASE IF EXISTS MovieCatalogueDB;
CREATE DATABASE MovieCatalogueDB;
USE MovieCatalogueDB; 

CREATE TABLE Genre(
	GenreID INT PRIMARY KEY AUTO_INCREMENT,
    GenreName VARCHAR(30) NOT NULL
);

CREATE TABLE Director(
	DirectorID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(30) NOT NULL, 
    LastName VARCHAR(30) NOT NULL, 
    BirthDate DATE
);

CREATE TABLE Rating(
	RatingID INT PRIMARY KEY AUTO_INCREMENT,
    RatingName VARCHAR(5) NOT NULL
);

CREATE TABLE Actor(
	ActorID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(30) NOT NULL,
    LastName VARCHAR(30) NOT NULL,
    BirthDate DATE
);

CREATE TABLE Movie( 
	MovieID INT PRIMARY KEY, 
    GenreID INT NOT NULL, 
    DirectorID INT, 
    RatingID INT, 
    Title VARCHAR(128) NOT NULL, 
	ReleaseDate DATE,
	foreign key fk_GenreID (GenreID)
		references Genre (GenreID),
	foreign key fk_DirectorID (DirectorID)
		references Director (DirectorID),
	foreign key fk_RatingID (RatingID)
		references Rating (RatingID)
); 

CREATE TABLE CastMembers(
	CastMemberID INT PRIMARY KEY AUTO_INCREMENT,
    ActorID INT NOT NULL,
    MovieID INT NOT NULL,
    Role VARCHAR(50) NOT NULL,
	foreign key fk_ActorID (ActorID)
		references Actor (ActorID),
	foreign key fk_MovieID (MovieID)
		references Movie (MovieID)
);
