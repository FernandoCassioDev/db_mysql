describe tb_produtos;

select * from tb_produtos;

select * from tb_produtos order by nome;

select * from tb_produtos order by nome desc;

select * from tb_produtos where preco between 3.00 and 8.25;

select * from tb_produtos where nome like "%a%";

show create table tb_produtos;

INSERT INTO tb_produtos (nome, quantidade, validade, preco, categoriaid)
VALUES ("Batata doce", 2000, "2022-03-09", 10.00, 3),
("Alface", 300, "2022-03-10", 7.00, 2),
("Cebola", 1020, "2022-03-08", 5.00, 3),
("Ovo Branco", 1000, "2022-03-07", 15.00, 5),
("Agrião", 1500, "2022-03-06", 3.00, 2),
("Cenoura", 1800, "2022-03-09", 3.50, 3),
("Pimenta", 1100, "2022-03-15", 10.00, 4),
("Alecrim", 130, "2022-03-10", 5.00, 4),
("Manga", 200, "2022-03-07", 5.49, 1),
("Couve", 100, "2022-03-12", 1.50, 2),
("Rabanete", 1200, "2022-03-15", 13.00, 3),
("Grapefruit", 3000, "2022-03-13", 50.00, 1);

INSERT INTO tb_produtos (nome, quantidade, preco)
VALUES("Sacola Cinza", 1118, 0.50),
("Sacola Verde", 1118, 0.50);

INSERT INTO tb_categorias (descricao)
VALUES ("Frutas"), ("Verduras"), ("Legumes"),("Temperos"),("Ovos"),('Outros');

drop table tb_categorias;

-- Associação entre tabelas

create table tb_categorias(
id bigint auto_increment primary key,
descricao varchar(255) not null
);

select * from tb_categorias;

delete from tb_produtos where id in (19,20);

alter table tb_produtos add categoriaid bigint;

alter table tb_produtos add constraint fk_produtos_categorias foreign key (categoriaid)
references tb_categorias (id); 

select * from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.categoriaid;

select * from tb_produtos left join tb_categorias on tb_categorias.id = tb_produtos.categoriaid;

select * from tb_produtos right join tb_categorias on tb_categorias.id = tb_produtos.categoriaid;