-- MOSTRAR DATABASES NO SERVIDOR --

SHOW DATABASES;

-- SELECIONAR O BANCO DE DADOS --

USE faculdade1adsc;

-- MOSTRAR AS TABELAS DO MEU BD --
SHOW TABLES;

-- CRIAR TABELA CHAMADA PESSOA --

CREATE TABLE Pessoa (
    id      int             primary key,
    nome    varchar(50),
    peso    float,
    altura  DOUBLE,
    salario DECIMAL(10,2)

);

-- NUMEROS DECIMAIS
-- FLOAT 8 DIGITOS (32 BITS)
-- DOUBLE 15 DIGITOS (64 BITS)
-- DECIMAL(10,2) 28 DIGITOS (128 BITS)

+--------------------------+
| Tables_in_faculdade1adsc |
+--------------------------+
| aluno                    |
| pessoa                   |
+--------------------------+

DESC Pessoa;

INSERT INTO Pessoa VALUES(1,'Cebolinha',87.9,1.55,1.99);

ALTER TABLE pessoa MODIFY COLUMN id INT AUTO_INCREMENT; 

INSERT INTO Pessoa VALUES (null,'Monica',87.9,1.14,2.99);

SELECT CONCAT('A Pessoa ',nome,'pesa ',peso,'mede',altura,' e ganha ',salario,'!') FROM pessoa ORDER BY nome; 
