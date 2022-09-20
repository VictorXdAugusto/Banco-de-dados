CREATE TABLE sprint1;

USE sprint1;

CREATE TABLE Musica (
		idMusica 			int 			primary key,
        artista 				varchar(40),
        titulo			varchar(40),
		genero 			varchar(40)
		
);


INSERT INTO Musica VALUES 
		('1', 'Victor','PresenteEpassado', 'Funk'), 
		('2', 'Diego','SweetChildOMine', 'Rock'), 
		('3', 'Sara','Dance monkey', 'Pop'), 
		('4', 'Julio','Vida loka pt1', 'Rap'), 
		('5', 'Marcio','November Rain', 'Rock'), 
		('6', 'Raul','Passar de foguetao', 'Funk'), 
		('7', 'Livia','Da ponte pra ca', 'Rap');
        
SELECT * FROM musica;

ALTER TABLE Musica ADD COLUMN curtidas int;

UPDATE Musica SET curtidas = '10'
			WHERE idMusica >=0;

ALTER TABLE Musica MODIFY artista varchar(80);

UPDATE Musica SET curtidas = '10000'
			WHERE idMusica = '1';
            
UPDATE Musica SET curtidas = '300000'
		WHERE idMusica = '2' or idMusica = '3';
            
UPDATE Musica SET titulo = 'Cachorrinhas'
		WHERE idMusica = '5';
        
DELETE FROM Musica WHERE idMusica = '4';
        
SELECT * FROM Musica WHERE genero <> 'Funk';

SELECT * FROM Musica WHERE curtidas >= 20;

DESC Musica;

TRUNCATE TABLE Musica;

