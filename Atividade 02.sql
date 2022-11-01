CREATE DATABASE sprint01;
USE sprint01;


CREATE TABLE Musica (
	idMusica 		int 			primary key,
	artista 		varchar(40),
	titulo 			varchar(40),
	genero			varchar(40)

);

INSERT INTO Musica VALUES
		('9', 'Victor','Vida loka pt1', 'Rap');

INSERT INTO Musica VALUES
	('1', 'Victor','PresenteEpassado', 'Funk'), 
	('2', 'Diego','SweetChildOMine', 'Rock'), 
	('3', 'Sara','Dance monkey', 'Pop'), 
	('4', 'Julio','Vida loka pt1', 'Rap'), 
	('5', 'Marcio','November Rain', 'Rock'), 
	('6', 'Raul','Passar de foguetao', 'Funk'), 
	('7', 'Livia','Da ponte pra ca', 'Rap');
    
    
SELECT * FROM Musica;

SELECT titulo FROM Musica;

SELECT * FROM Musica WHERE genero = 'Funk';
SELECT * FROM Musica WHERE artista = 'Victor';
SELECT * FROM Musica ORDER BY titulo ASC;
SELECT * FROM Musica ORDER BY artista DESC;

SELECT * FROM Musica
	WHERE titulo LIKE 'v%';
    
SELECT * FROM Musica
	WHERE artista LIKE '%o';   
    
SELECT * FROM Musica
	WHERE genero LIKE '_o%';
    
SELECT * FROM Musica
	WHERE titulo LIKE '%t_';
    
DROP TABLE Musica;




    