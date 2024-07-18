create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categorias(
id bigint auto_increment primary key,
tipo varchar(255),
quantidade int
);

create table tb_produtos(
id bigint auto_increment primary key,
nome varchar(255),
data_validade DATE,
peso decimal(5,2),
preco decimal(5,2),
categoriaid bigint, 
constraint fk_produtos_caterias foreign key (categoriaid) references tb_categorias (id)
);

insert into tb_categorias(tipo, quantidade) 
values ("bovina", 400), ("Suina", 600), ("peixe", 200), ("frango", 800), ("carneiro", 200);

insert into tb_produtos(nome, data_validade, peso, preco, categoriaid) 
value("lingua", "2024-10-29", 7.50, 50.00, 1),
("coxa", "2024-08-24", 8.50, 30.00, 4),
("pescoço", "2024-08-15", 9.50, 80.00, 5),
("escama", "2024-08-18", 10.50, 20.00, 3),
("pata", "2024-08-30", 11.50, 70.00, 2),
("lingua", "2024-08-29", 12.50, 50.00, 1),
("coxa", "2024-08-23", 13.50, 40.00, 2),
("ovo", "2024-08-26", 14.50, 90.00, 3);

select * from tb_produtos where preco > 50;

select * from tb_produtos where preco > 50 and preco < 150;

select * from tb_produtos where nome like "%c%";

select * from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.categoriaid;

select * from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.categoriaid
where tb_categorias.tipo = "peixe";