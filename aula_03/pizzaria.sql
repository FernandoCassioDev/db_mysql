create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categorias(
id bigint auto_increment primary key,
tipo varchar(255),
quantidade int
);

create table tb_produtos(
id bigint auto_increment primary key,
nome varchar(255),
data_validade DATE,
ingredientes varchar(255),
preco decimal(5,2),
categoriaid bigint, 
constraint fk_produtos_caterias foreign key (categoriaid) references tb_categorias (id)
);

insert into tb_categorias(tipo, quantidade) 
values ("salgada", 400), 
("Doce", 600), 
("meia a meia salgada", 200), 
("meia a meia doce", 800), 
("meia salgada meia doce", 200);

INSERT INTO tb_produtos(nome, data_validade, ingredientes, preco, categoriaid) 
VALUES
("Margherita", "2024-10-29", "Tomate, Mussarela, Manjericão", 50.00, 1), -- 1/4 Salgada
("Pepperoni", "2024-08-24", "Tomate, Mussarela, Pepperoni", 30.00, 1), -- 1/4 Salgada
("Chocolate", "2024-08-15", "Chocolate, Morango, Granulado", 80.00, 2), -- 1/4 Doce
("Romeu e Julieta", "2024-08-18", "Goiabada, Queijo, Chocolate Branco", 20.00, 2), -- 1/4 Doce
("Portuguesa/Calabresa", "2024-08-30", "Presunto, Ovo, Cebola, Mussarela/Calabresa, Cebola, Mussarela", 70.00, 3), -- 1/4 Meia a Meia Salgada
("Frango Catupiry/Quatro Queijos", "2024-08-29", "Frango, Catupiry, Mussarela/Mussarela, Provolone, Gorgonzola, Parmesão", 50.00, 3), -- 1/4 Meia a Meia Salgada
("Banana com Canela/Chocolate", "2024-08-23", "Banana, Canela, Açúcar, Chocolate/Chocolate, Morango, Granulado", 40.00,4), -- 1/4 Meia a Meia Doce
("Prestígio/Romeu e Julieta", "2024-08-26", "Chocolate, Coco Ralado, Leite Condensado/Goiabada, Queijo, Chocolate Branco", 90.00,4), -- 1/4 Meia a Meia Doce
("Frango com Catupiry/Chocolate", "2024-08-27", "Frango, Catupiry, Mussarela/Chocolate, Morango, Granulado", 60.00,5 ); -- Meia Salgada e Meia Doce


select * from tb_produtos where preco > 50;

select * from tb_produtos where preco > 50 and preco < 100;

select * from tb_produtos where nome like "%m%";

select * from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.categoriaid;

select * from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.categoriaid
where tb_categorias.tipo = "doce";

