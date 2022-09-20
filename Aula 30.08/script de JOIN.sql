use faculdade1adscprofessora;

show tables;

DESC empresa;

SELECT * FROM aluno;

ALTER TABLE empresa RENAME COLUMN nome TO nomeEmpresa;

INSERT INTO empresa (nome,tipo) VALUES 
		('C6Banck', 'Matriz');
		
ALTER TABLE aluno ADD COLUMN fkEmpresa int;
ALTER TABLE aluno ADD foreign key (fkEmpresa)
	references empresa(id);
    
UPDATE aluno SET fkEmpresa = 1 WHERE ra = '01212166';
UPDATE aluno SET fkEmpresa = 2 WHERE ra = '01222004';

-- nosso primeiro join

SELECT * FROM aluno JOIN empresa 
		ON id = fkEmpresa;
        
SELECT aluno.nome, empresa.nomeEmpresa FROM aluno 
		JOIN empresa ON id = fkEmpresa;
        
SELECT aluno.nome as Aluno, empresa.nomeEmpresa as Empresa FROM aluno 
		JOIN empresa ON id = fkEmpresa;
       
       
SELECT aluno.nome as Aluno, empresa.nomeEmpresa as Empresa FROM aluno 
		JOIN empresa ON id = fkEmpresa WHERE capital = '';       

        
        