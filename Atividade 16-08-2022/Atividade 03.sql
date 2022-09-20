CREATE TABLE sprint1;

USE sprint1;


CREATE TABLE Filme (
		idFilme 			int 			primary key,
        titulo 				varchar(40),
        genero				varchar(40),
		diretor 			varchar(40)
		
);


INSERT INTO Filme VALUES 
		('1', 'Thor','Acao', 'Taika Waititi'), 
		('2', 'Os Vingadores','Acao', 'Joss Whedon'), 
		('3', 'Wolverine','Acao', 'James Mangold'), 
		('4', 'Ted','Comedia', 'Seth MacFarlane'), 
		('5', 'Red 2','Comedia', 'Dean Parisot'), 
		('6', 'Cidade de Deus','Crime', 'Fernando Meirelles'), 
		('7', 'Intocaveis','Drama', 'Brian De Palma');
        
SELECT * FROM Filme;

ALTER TABLE Filme ADD COLUMN protagonista varchar(50);

UPDATE Filme SET protagonista = 'Omi de ferro'
			WHERE idFilme >=0;

ALTER TABLE Filme MODIFY protagonista varchar(150);

UPDATE Filme SET diretor = 'omi'
			WHERE idFilme = '5';
            
UPDATE Filme SET diretor = 'omi 2'
		WHERE idFilme = '2' or idFilme = '7';
            
UPDATE Filme SET titulo = 'Cachorrinhas'
		WHERE idFilme = '6';
        
DELETE FROM Filme WHERE idFilme ='6';
        
SELECT * FROM Filme WHERE genero <> 'Drama';

SELECT * FROM Filme WHERE genero = 'comedia';

DESC Filme;

TRUNCATE TABLE Filme;

