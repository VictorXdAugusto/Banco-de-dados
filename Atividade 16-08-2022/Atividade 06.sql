CREATE TABLE sprint01;

USE sprint01;

CREATE TABLE Revista (
idRevista 			INT 			PRIMARY KEY 	auto_increment,
nome 				VARCHAR(40),
categoria 			VARCHAR(30)
);

INSERT INTO Revista (nome, categoria) VALUES
('Revista Placar', null ),
('Revista Invicto', null ),
('Revista ESPN Brasil', null ),
('Revista Hardcore', null );

SELECT * FROM Revista;

UPDATE Revista SET categoria = 'Esportes' WHERE idRevista >= 1;

SELECT * FROM Revista;

INSERT INTO Revista (nome, categoria) VALUES
('Veja', 'Politica'),
('Isto É', 'Noticias'),
('Epoca', 'Noticias');

SELECT * FROM Revista;

ALTER TABLE Revista MODIFY COLUMN categoria varchar(40);

DESC Revista;

ALTER TABLE Revista ADD COLUMN periodicidade varchar(15);

SELECT * FROM Revista;
DESC Revista;
TRUNCATE TABLE Revista;
DROP TABLE Revista;

ALTER TABLE Revista DROP COLUMN periodicidade;