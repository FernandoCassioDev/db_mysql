create database db_farmacia_bem_estar;

use db_farmacia_bem_estar;

create table tb_categorias(
id bigint auto_increment primary key,
tipo varchar(255),
quantidade int
);

create table tb_produtos(
id bigint auto_increment primary key,
nome varchar(255) not null,
peso_mg int not null,
preco decimal(5,2),
qtd_comprimidos int
);

alter table tb_produtos add categoriaid bigint;

alter table tb_produtos add constraint fk_produtos_categorias foreign key (categoriaid) 
references tb_categorias (id);

insert into tb_categorias(tipo, quantidade) 
values ("analgésico", 200),
("anti-inflamatório", 500), 
("relaxante muscular", 400), 
("antigripal", 200),
("vitamina D", 300);

insert into tb_produtos(nome, peso_mg, preco, qtd_comprimidos, categoriaid) 
values ("Ibuprofeno", 20, 20.00, 20, 2),
("Paracetamol", 50, 12, 30.00, 1),
("Calcitrol", 60, 24, 27.00, 5),
("Cimegripe", 400, 12, 20.00, 4),
("Diazepam", 200, 6, 15.00, 3),
("Colecalciferol", 500, 12.00, 30, 5),
("Tizanidina", 300, 20.00, 40, 3),
("Diclofenaco", 200, 60.00, 30, 2);

select * from tb_produtos where preco > 50;

select * from tb_produtos where preco > 5 and preco < 60;

select * from tb_produtos where nome like "%c%";

select * from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.categoriaid;

select * from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.categoriaid 
where tb_categorias.tipo = "Vitamina D"