CREATE TABLE sprint01;

USE sprint01;


CREATE TABLE Curso (
    idCurso 		int 			primary key,
    nome 			varchar(50),
    sigla 			varchar(3),
    coordenador 	varchar(40)
);

INSERT INTO Curso VALUES 
		('1', 'Ciência da Computação','CCI','Thiago'), 
		('2', 'Sistema da Informação','SIS','Diegao' ), 
		('3', 'Análise e Desenvolvimento de Sistemas','ADS','Cabra');

SELECT * FROM Curso;

SELECT coordenador FROM Curso;
SELECT * FROM Curso WHERE sigla = 'SIS';

SELECT * FROM Curso ORDER BY nome ASC;
SELECT * FROM Curso ORDER BY coordenador DESC;

SELECT * FROM Curso WHERE nome LIKE 'a%';
SELECT * FROM Curso WHERE nome LIKE '%o';

SELECT * FROM Curso WHERE nome LIKE 'i%';
SELECT * FROM Curso WHERE nome LIKE '%a';

TRUNCATE TABLE Curso;
