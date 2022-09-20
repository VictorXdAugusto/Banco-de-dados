CREATE DATABASE sprint01;
USE sprint01;


CREATE TABLE Filme (
	idFilme			int 			primary key,
	titulo			varchar(40),
	genero 			varchar(40),
	diretor			varchar(40)

);

INSERT INTO Filme VALUES
		('8', 'Intocaveis','Drama', 'Brian De Palma');
		

INSERT INTO Filme VALUES
	('1', 'Thor','Acao', 'Taika Waititi'), 
	('2', 'Os Vingadores','Acao', 'Joss Whedon'), 
	('3', 'Wolverine','Acao', 'James Mangold'), 
	('4', 'Ted','Comedia', 'Seth MacFarlane'), 
	('5', 'Red 2','Comedia', 'Dean Parisot'), 
	('6', 'Cidade de Deus','Crime', 'Fernando Meirelles'), 
	('7', 'Intocaveis','Drama', 'Brian De Palma');
    
    
SELECT * FROM Filme;

SELECT titulo FROM Filme;

SELECT * FROM Filme WHERE genero = 'Comedia';
SELECT * FROM Filme WHERE diretor = 'Dean Parisot';
SELECT * FROM Filme ORDER BY titulo ASC;
SELECT * FROM Filme ORDER BY diretor DESC;

SELECT * FROM Filme
	WHERE titulo LIKE 't%';
    
SELECT * FROM Filme
	WHERE diretor LIKE '%n';   
    
SELECT * FROM Filme
	WHERE genero LIKE '_c%';
    
SELECT * FROM Filme
	WHERE titulo LIKE '%i_';
    
DROP TABLE Filme;




    