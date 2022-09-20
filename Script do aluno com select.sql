-- CRIAR BANCO DE DADOS
CREATE DATABASE faculdade1adscPROFESSORA;

-- SELECIONAR O BANCO DE DADOS
USE faculdade1adscPROFESSORA;

-- CRIAR TABLE aluno
CREATE TABLE aluno (
ra char(8) primary key,
nome varchar(50),
bairro varchar(50)
);

-- EXIBIR OS DADOS DA TABELA
SELECT * FROM aluno;

-- INSERIR DADOS NA TABELA
INSERT INTO aluno VALUES 
	('01222999', 'Vivian', 'Paraíso');
    
-- INSERIR MAIS DE UM ALUNO DE UMA VEZ
INSERT INTO aluno VALUES
	('01212166', 'Pedro', 'Guaianazes'),
	('01222136', 'Igor', 'Grajaú'),
	('01222167', 'Luiz', 'Vila Medeiros');

-- EXIBIR OS ALUNOS EM ORDEM ALFABÉTICA
-- CRESCENTE
SELECT * FROM aluno ORDER BY nome ASC;
-- DECRESCENTE
SELECT * FROM aluno ORDER BY nome DESC;

-- Aula 09/08

USE faculdade1adsc;
-- INSERIR MAIS DE UM ALUNO DE UMA VEZ
INSERT INTO aluno VALUES
	('01222004', 'Letícia', 'Taboão'),
	('01222100', 'Matheus', 'Sacomã');
    
SELECT * FROM aluno;

-- Exibir os aluno que o nome é Luiz
SELECT * FROM aluno WHERE nome = 'Luiz Dificil';

-- Atualizar o nome do Luiz
UPDATE aluno SET nome = 'Luiz Dificil' 
	WHERE ra = '01222167';
 
-- Descrever a estrutura da tabela
DESC aluno;
DESCRIBE aluno;

-- Exibir o nome do Aluno que começa com luiz
SELECT * FROM aluno 
	WHERE nome LIKE 'Luiz %';
    
-- Exibir os nomes do alunos que o segundo nome começa com D
SELECT * FROM aluno 
WHERE nome LIKE '% D%';

-- Exibir os nomes que contem d
SELECT * FROM aluno 
WHERE nome LIKE '%d%';

-- Exibir o nome que a segunda letra é g
SELECT * FROM aluno
	WHERE nome LIKE '_g%';
    
-- Exibir o nome que a penultima letra é o
SELECT * FROM aluno
	WHERE nome LIKE '%o_';
    
SELECT * FROM aluno;

SELECT * FROM aluno WHERE nome = 'Matheus';
SELECT * FROM aluno WHERE nome LIKE 'M%';

UPDATE aluno SET bairro = 'Itaquera'
	WHERE ra = '01222100';
    
-- Excluir a aluna Vivian
DELETE FROM aluno WHERE ra = '01222999';

-- Excluir 2 alunos no mesmo comando
DELETE FROM aluno WHERE ra in ('01222136', '01222167');


-- Aula 3

SELECT * FROM aluno;
DESC aluno;


UPDATE aluno SET email = 'lele@bala.tensa'
	WHERE ra = '01222004';
    
-- ALTER TABLE
 
ALTER TABLE aluno ADD COLUMN email varchar(50);
    
-- Excluir a coluna bairro
ALTER TABLE aluno DROP COLUMN bairro;

-- Renomear coluna 
ALTER TABLE aluno RENAME COLUMN nome to nomeAluno;

-- Criar a tabela empresa 
CREATE TABLE empresa(
	id	 int		primary key 	auto_increment,
	nome varchar(50) NOT NULL,
    responsavel varchar(50) DEFAULT 'Alguem',
	dtFund	DATETIME,
    -- RESTRICAO -- SOBRE O TIPO, MATRIZ OU FILIAL --
    tipo varchar(50),	constraint chkTipo CHECK(
			tipo in ('matriz','Filial')
		)
);
DESC empresa;


INSERT INTO empresa (nome, dtFund, tipo) Values
		('SPtech','2016-01-01 08:00:00','Matriz')
		
;

SELECT * FROM aluno;

INSERT INTO empresa (nome,responsavel, dtFund, tipo) VALUES
	('Safra','Eli','2003-11-30','Loja');
    
    
-- Alterar o check para matriz, filia e loja --
ALTER TABLE empresa DROP CONSTRAINT chkTipo;

ALTER TABLE empresa ADD CONSTRAINT chkTipo CHECK(
			tipo in ('matriz','Filial','Loja')
		);
        
        ALTER TABLE aluno ADD CONSTRAINT chkEmail CHECK(
			email LIKE ('matriz','Filial','Loja')
		);
        
DELETE FROM empresa WHERE id >= 1;

INSERT INTO empresa (nome,responsavel, dtFund, tipo) VALUES
	('Safra','Eli','2003-11-30','Loja');
    
    SELECT * FROM empresa;
    
    -- LIMPAR OS DADOS E O CACHE DA TABELA  (COMECAR DO ZERO A TABELA)
    TRUNCATE TABLE empresa;


		