CREATE TABLE sprint1;

USE sprint1;

CREATE TABLE atleta (
		idAtleta 			int 			primary key,
		nome 				varchar(40),
		modalidade 			varchar(40),
		qtdMedalha			int
);

INSERT INTO atleta VALUES 
		('1', 'Victor','Futsal', '1000'),
		('2', 'Diegao','Golf', '10'),
		('3', 'Lucas','Polo aquatico', '5'),
		('4', 'Macho','Basquete', '2'),
		('5', 'Estela','Bingo', '1');
        
SELECT * FROM atleta;

UPDATE atleta SET qtdMedalha = '10000'
			WHERE idAtleta = '1';

UPDATE atleta SET qtdMedalha = '100000'
			WHERE idAtleta = '2' or idAtleta = '3';
            
UPDATE atleta SET nome = 'Matheus'
			WHERE idAtleta = '4';

ALTER TABLE atleta ADD COLUMN dtNasc DATE;

UPDATE atleta SET dtNasc = '2022-09-12'
			WHERE idAtleta >=0;

DELETE FROM atleta WHERE idAtleta ='5';

SELECT * FROM atleta WHERE modalidade <> 'natação'; 

SELECT * FROM atleta WHERE qtdMedalha >= 3;

ALTER TABLE atleta MODIFY modalidade varchar(60);

DESC atleta;

TRUNCATE TABLE atleta;






