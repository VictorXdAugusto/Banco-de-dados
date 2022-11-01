CREATE TABLE sprint01;

USE sprint1;


CREATE TABLE Professor(
		idProfessor			int 			primary key,
        nome 				varchar(40),
        especialista		varchar(40),
		dtNasc 				date 
       
		
);


INSERT INTO Professor VALUES 
		('1', 'Victor','Matematica',null), 
		('2', 'Diego','Portugues',null ), 
		('3', 'Sara','Fisica',null), 
		('4', 'Julio','Bd',null), 
		('5', 'Marcio','Biologia',null), 
		('6', 'Raul','Arq. Comp',null), 
		('7', 'Livia','TI',null);
        
SELECT * FROM Professor;

ALTER TABLE Professor ADD COLUMN funcao varchar(50);
ALTER TABLE Professor ADD constraint chkFuncao CHECK (funcao in ('assistente','titular','monitor'));


UPDATE Professor SET nome = 'VITAO'
			WHERE idProfessor>=0;

UPDATE Professor SET funcao = 'titular'
			WHERE idProfessor>=0;
            
INSERT INTO Professor VALUES 
		('8', 'Victor','Matematica',null); 
        
DELETE FROM Professor WHERE idProfessor = '5';

SELECT * FROM Professor WHERE funcao = 'titular';

SELECT funcao, dtNasc  FROM Professor WHERE funcao = 'monitor';

UPDATE Professor SET dtNasc = '2002-09-10'
			WHERE idProfessor =3;

TRUNCATE TABLE Professor;

    
