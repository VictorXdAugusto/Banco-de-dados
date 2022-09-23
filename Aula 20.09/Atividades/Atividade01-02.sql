-- Atividade 01 --

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

update aluno set fkRepresentante = 1
			WHERE ra in (2,3,4);
update aluno set fkProjeto = 1
			WHERE ra in (2,3,4);

select * from aluno;
select * from acompanhante;
select * from projeto;

select * from aluno join projeto on fkProjeto = idProjeto;
select * from acompanhante join aluno on ra = fkAluno;
select * from aluno as a join aluno as r on a.fkRepresentante = r.ra;
select * from aluno as a join projeto as p on fkProjeto = idProjeto WHERE p.nome = "GF";
select * from acompanhante as ac join aluno as a on fkAluno = ra join projeto as p on fkProjeto = idProjeto; 

-- Atividade 02 --

create database CampanhaOrganizador;
use CampanhaOrganizador;

create table Organizador (
idOrganizador int primary key auto_increment,
nome varchar(45),
endereco varchar(45),
email varchar(60),
fkExperiente int,
foreign key (fkExperiente) references Organizador (idOrganizador)
);

insert into Organizador (nome,endereco,email,fkExperiente) values
 ('Victor','Rua abacaxi','vitao@vitao.com',1),
 ('Diego','Rua banana','diego@diego.com',2),
 ('Niltao','Rua laranja','niltao@niltao.com',3),
 ('Natan','Rua Uva','natan@natan.com',4);
 
create table Campanha (
idCampanha int auto_increment,
catDoacao varchar(45),
instituicao varchar(45),
dtFinal varchar(45),
fkOrganizador int,
foreign key (fkOrganizador) references Organizador (idOrganizador),
primary key (idCampanha,fkOrganizador)
);

insert into Campanha (catDoacao,instituicao,dtFinal,fkOrganizador) values
 ('Arroz','ACD','2022-09-09',1),
 ('Feijão','ACD','2022-08-08',2),
 ('Macarrão','ACD','2022-09-09',3),
 ('Batata','ACD','2022-09-09',4);
 
 select * from Organizador;
 select * from Campanha;
 
 update Organizador set fkExperiente = 4
				where idOrganizador = 3;
                
select * from Organizador join Campanha on fkOrganizador = idOrganizador;
select * from Organizador as o join Campanha as c on fkOrganizador = idOrganizador
							where o.nome = 'Victor';
select * from Organizador as o join Organizador as e on o.idOrganizador = e.fkExperiente
							where e.nome = 'Victor';
select * from Organizador as o join Campanha as c on fkOrganizador = idOrganizador join Organizador as e on o.idOrganizador = e.fkExperiente
							where o.nome = 'Diego';


 
 
 
 


