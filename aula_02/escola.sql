create database db_escola;

use db_escola;

create table tb_estudantes(
id bigint auto_increment primary key,
nome varchar(255) not null,
idade int not null,
nota decimal(2,1) not null,
disciplina varchar(255) not null,
turma varchar(255) not null
); 

insert into tb_estudantes(nome, idade, nota, disciplina, turma) values (
"José Severino", 15, 7.5, "matematica", "9 ano"
),(
"João Victor", 16, 5.5, "historia", "7 ano"
),(
"Maria Pereira", 13, 8.0, "ciencias", "6 ano"
),(
"Vitoria da Silva", 16, 9.0, "filosofia", "2 ano medio" 
),(
"Carlos Adão", 14, 3.0, "sociologia","1 ano medio"
),(
"Ana Santos", 17, 4.5, "biologia", "3 ano medio"
),(
"Felipe Marques", 12, 9.0, "portugues", "5 ano"
),(
"Carla Andrade", 15, 5.0, "fisica", "1 ano medio"
);

select * from tb_estudantes;
select * from tb_estudantes where disciplina = "biologia";

-- selecionando todos os alunos que possuem a nota maior que 7
select * from tb_estudantes where nota > 7;

-- selecionando todos os alunos que possuem a nota menor que 7
select * from tb_estudantes where nota < 7;

-- atualizando um registro atraves de uma query de atualização
-- aumentando 2 pontos na nota do aluno que possui o id 2
update tb_estudantes set nota =  nota + 2 where id = 2;