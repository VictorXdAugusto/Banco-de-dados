CREATE DATABASE treino;

USE treino;

CREATE TABLE Atleta (
		idAtleta	int 		primary key  	AUTO_INCREMENT,
        nome 		varchar(40),
		modalidade	varchar(40),
        qtdMedalha	int
);


INSERT INTO Atleta (nome, modalidade, qtdMedalha) VALUES 
			('Victor ','Futebol',15),
            ('Diego','Basquete',10),
            ('Igor','Golf',20),
            ('Matheus','Volei',25),
            ('Estela','Futebol',30);
            
SELECT * FROM Atleta;

UPDATE Atleta SET qtdMedalha = '100'
				WHERE idAtleta =1;
                
UPDATE Atleta SET qtdMedalha = '1000'
			WHERE idAtleta =2 or idAtleta =3;
            
UPDATE Atleta SET nome ='Augusto'
			WHERE idAtleta =1;

ALTER TABLE Atleta ADD COLUMN dtNasc DATE;

UPDATE Atleta SET dtNasc ='2003-10-14'
			WHERE idAtleta >= 1;

DELETE FROM Atleta WHERE idAtleta =5;

SELECT * FROM Atleta WHERE modalidade <> 'natacao';

SELECT * FROM Atleta WHERE qtdMedalha >= 3;

ALTER TABLE Atleta MODIFY modalidade varchar(60);

DESC Atleta;

TRUNCATE TABLE Atleta;

-- ALTER TABLE Atleta DROP COLUMN dtNasc;




