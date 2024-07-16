create database db_recursos_humanos;

use db_recursos_humanos;

create table tb_colaboradores(
id bigint auto_increment primary key,
nome varchar(255) not null,
salario decimal(6,2) not null,
cargo varchar(255) not null,
setor varchar(255) not null,
data_nascimento date not null
); 

insert into tb_colaboradores(nome, salario, cargo, setor, data_nascimento) values (
"João da Silva", 3000, "assistente administrativo", "administração", "1999-12-20"
),(
"Maria Pereira", 9000, "gerente", "administração", "1990-10-20"
),(
"Felipe Miguel", 1200, "estagiário", "T.I", "2002-08-30"
),(
"Marcelo Dias", 3200, "motorista", "logística", "1980-05-05"
),(
"Karine Santos", 5000, "supervisora", "logística", "1985-07-17"
);

select * from tb_colaboradores;
select * from tb_colaboradores where setor = "T.I";

-- selecionando todos os colaboradores possuem o salário maior que 2000
select * from tb_colaboradores where salario > 2000;

-- selecionando todos os colaboradores possuem o salário menor que 2000
select * from tb_colaboradores where salario < 2000;

-- atualizando um registro atraves de uma query de atualização
-- aumentando 20% no salário do colaborador com id 3
update tb_colaboradores set salario = salario + (salario*20) / 100 where id = 3;
