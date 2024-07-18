create database db_construindo_vidas;

use db_construindo_vidas;

create table tb_categorias(
id bigint auto_increment primary key,
tipo varchar(255),
quantidade int
);

create table tb_produtos(
id bigint auto_increment primary key,
nome varchar(255),
lote_produto date,
medida_metros int,
preco decimal(5,2),
categoriaid bigint, 
constraint fk_produtos_caterias foreign key (categoriaid) references tb_categorias (id)
);

INSERT INTO tb_categorias(tipo, quantidade) 
VALUES
("Cimento", 400), 
("Tinta", 600), 
("Ferramentas Manuais", 200), 
("Materiais Elétricos", 800), 
("Materiais Hidráulicos", 200);


INSERT INTO tb_produtos(nome, lote_produto, medida_metros, preco, categoriaid) 
VALUES
("Cimento CP-II", "2024-10-29", 50, 25.00, 1), -- Cimento
("Tinta Branca", "2024-08-24", 20, 70.00, 2), -- Tinta
("Martelo", "2024-08-15", 0.5, 30.00, 3), -- Ferramentas Manuais
("Fio Elétrico 2mm", "2024-08-18", 100, 150.00, 4), -- Materiais Elétricos
("Tubo PVC 40mm", "2024-08-30", 6, 35.00, 5), -- Materiais Hidráulicos
("Prego 17x27", "2024-08-29", 5, 10.00, 3), -- Ferramentas Manuais
("Interruptor Simples", "2024-08-23", 1, 15.00, 4), -- Materiais Elétricos
("Torneira de Jardim", "2024-08-26", 0.3, 25.00, 5), -- Materiais Hidráulicos
("Broxa de Pintura", "2024-08-27", 0.2, 5.00, 3); -- Ferramentas Manuais



select * from tb_produtos where preco > 100;

select * from tb_produtos where preco > 70 and preco < 150;

select * from tb_produtos where nome like "%c%";

select * from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.categoriaid;

select * from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.categoriaid
where tb_categorias.tipo = "Materiais Hidráulicos";
