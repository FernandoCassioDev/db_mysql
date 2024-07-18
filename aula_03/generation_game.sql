-- cria o banco de dados
create database db_generation_game_online;

-- aponta para o banco de dados 
use db_generation_game_online;

-- cria a tabela
create table tb_classes(
id bigint auto_increment primary key,
tipo varchar(255),
nivel_poder int not null,
poder_defesa int not null
);

create table tb_personagens(
id bigint auto_increment primary key,
nome varchar(255) not null,
idade int not null,
estamina int not null,
vida int not null
);

-- adiciona a coluna classeid na tabela personagens
alter table tb_personagens add classeid bigint;

-- adiciona a chave estrangeira na tabela personagens
alter table tb_personagens add constraint fk_personagens_classes foreign key (classeid) references tb_classes (id); 

-- insere as classes
insert into tb_classes(tipo, nivel_poder, poder_defesa) 
values("mago", 2100, 500),
("bruxa", 2100, 500),
("gladiador", 1500, 1500),
("humano", 500, 500),
("arqueiro", 1200, 700);

-- insere os personagens 
insert into tb_personagens(nome, idade, estamina, vida, classeid) 
values("Zeldris", 300, 50, 70, 1),
("Morgana", 500, 60, 60, 2),
("Joseph", 35, 100, 90, 3),
("Adam", 30, 70, 70, 4),
("Unknown", 60, 100, 100, 5),
("Black Jack", 800, 70, 80, 1),
("purple eyes", 500, 70, 75, 2),
("Punisher", 40, 100, 70, 3);

select * from tb_personagens;

-- retorna todos os personagens com o nivel de poder acima de 2000
select * from tb_personagens inner join tb_classes on tb_classes.id = tb_personagens.classeid 
where tb_classes.nivel_poder > 2000;

-- retorna todos os personagens com o poder de defesa entre 1000 e 2000
select * from tb_personagens inner join tb_classes on tb_classes.id = tb_personagens.classeid
where tb_classes.poder_defesa > 1000 and tb_classes.poder_defesa < 2000; 

-- retorna todos os personagens que possuem a letra "c" no nome
select * from tb_personagens inner join tb_classes on tb_classes.id = tb_personagens.classeid
where tb_personagens.nome like "%c%";

-- retorna todos os dados das tabelas unidos
select * from tb_personagens inner join tb_classes on tb_classes.id = tb_personagens.classeid;


-- retorna apenas os personagens que pertecem a classe gladiador
select * from tb_personagens inner join tb_classes on tb_classes.id = tb_personagens.classeid 
where tb_classes.tipo = "gladiador";
