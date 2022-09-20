CREATE TABLE sprint1;

USE sprint1;


CREATE TABLE Professor(
		idProfessor			int 			primary key,
        nome 				varchar(40),
        especialista				varchar(40),
		dtNasc 			date 
       
		
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

ALTER TABLE Professor ADD constraint chkFuncao CHECK (funcao in ('assistente','titular','monitor'));
ALTER TABLE Professor ADD COLUMN funcao varchar(50);

UPDATE Professor SET nome = 'VITAO'
			WHERE idProfessor>=0;

UPDATE Professor SET funcao = 'assistente'
			WHERE idProfessor>=0;
            
INSERT INTO Professor VALUES 
		('8', 'Victor','Matematica',null); 
        
DELETE FROM Professor WHERE idProfessor = '5';

SELECT * FROM Professor WHERE funcao = 'titular';

SELECT funcao, dtNacs FROM Professor;
            
            
            
            

ALTER TABLE Professor MODIFY protagonista varchar(150);

UPDATE Professor SET diretor = 'omi'
			WHERE idProfessor= '5';
            
UPDATE Professor SET diretor = 'omi 2'
		WHERE idProfessor= '2' or idProfessor= '7';
            
UPDATE Professor SET titulo = 'Cachorrinhas'
		WHERE idProfessor= '6';
        
DELETE FROM Professor WHERE idProfessor='6';
        
SELECT * FROM Professor WHERE genero <> 'Drama';



DESC Filme;

TRUNCATE TABLE Filme;
