CREATE DATABASE sprint1;

USE sprint1;



CREATE TABLE Atleta (
idAtleta 		int 			primary key,
nome 			varchar(40),
modalidade		varchar(40),
qtdMedalha 		int

);

INSERT INTO Atleta VALUES
	('04', 'Sara','Corrida', '0');

INSERT INTO Atleta VALUES
	('01', 'Victor','Corrida', '10'), 
	('02', 'Diego','Futebol', '5'), 
	('03', 'Lucas','Futebol', '2'); 
    

SELECT * FROM Atleta;
    
SELECT nome, qtdMedalha FROM Atleta;

SELECT * FROM Atleta WHERE modalidade = 'Futebol';

SELECT * FROM Atleta ORDER BY modalidade ASC;

SELECT * FROM Atleta ORDER BY qtdMedalha DESC;

SELECT * FROM Atleta
	WHERE nome LIKE '%s%';
    
SELECT * FROM Atleta
	WHERE nome LIKE 'v%';   
    
SELECT * FROM Atleta
	WHERE nome LIKE '%o';
    
SELECT * FROM Atleta
	WHERE nome LIKE '%r_';
    
DROP TABLE Atleta;
    



