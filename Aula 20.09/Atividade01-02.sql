CREATE DATABASE AlunoProjeto;
use AlunoProjeto;

create table projeto (
idProjeto int primary key auto_increment,
nome varchar(45),
descricao varchar(60)
);

insert into projeto (nome,descricao) values 
	('GF', 'Dar oportunidade aos estudantes'),
	('Sprint1', 'Café'),
	('Sprint2', 'Vinhos');
    
create table aluno (
ra int ,
nome varchar(45),
telefone varchar(12),
fkProjeto int,
fkRepresentante int,
foreign key (fkProjeto) references projeto (idProjeto),
foreign key (fkRepresentante) references aluno (ra),
primary key (ra)
);


insert into aluno (ra,nome,telefone,fkProjeto,fkRepresentante) values 
	(1,'Victor','11974135372',1,null),
	(2,'Miniguiti','11912765372',2,null),
	(3,'Erick','11974138674',3,null),
	(4,'Lucas','11974135372',2,null);


create table acompanhante (
idAcompanhante int auto_increment,
nome varchar(45),
tipoRelacao varchar(45),
fkAluno int,
foreign key (fkAluno) references aluno(ra),
primary key (idAcompanhante,fkAluno)
);

insert into acompanhante (nome,tipoRelacao,fkAluno) values
('Diego','Amigo',1),
('Bonfim','Amigo',2),
('Estela','Amigo',3);


select * from aluno;
select * from acompanhante;
select * from projeto;

select * from aluno join projeto on fkProjeto = idProjeto;
select * from acompanhante join aluno on ra = fkAluno;
select * from aluno join aluno on aluno = fkAluno;


    
