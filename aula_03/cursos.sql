create database db_curso_da_minha_vida;

use db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT NOT NULL
);


CREATE TABLE tb_cursos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    duracao INT NOT NULL, -- duração em horas
    preco DECIMAL(10, 2) NOT NULL,
    modalidade VARCHAR(50) NOT NULL, -- por exemplo, online, presencial
    categoriaid INT,
    FOREIGN KEY (categoriaid) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) 
VALUES
("Tecnologia", "Cursos voltados para a área de tecnologia e informática."),
("Negócios", "Cursos focados em administração, economia e finanças."),
("Saúde", "Cursos na área de saúde e bem-estar."),
("Artes", "Cursos de música, pintura, e outras formas de arte."),
("Idiomas", "Cursos de idiomas estrangeiros.");

INSERT INTO tb_cursos (nome, duracao, preco, modalidade, categoriaid) 
VALUES
("Programação em Python", 40, 500.00, "Online", 1),
("Gestão de Projetos", 60, 800.00, "Presencial", 2),
("Primeiros Socorros", 20, 300.00, "Online", 3),
("Introdução à Pintura", 30, 400.00, "Presencial", 4),
("Inglês Básico", 50, 600.00, "Online", 5),
("Segurança da Informação", 35, 700.00, "Online", 1),
("Marketing Digital", 45, 750.00, "Presencial", 2),
("Espanhol Intermediário", 40, 650.00, "Online", 5);


select * from tb_cursos where preco > 500;

select * from tb_cursos where preco > 600 and preco < 1000;

select * from tb_cursos where nome like "%j%";

select * from tb_cursos inner join tb_categorias on tb_categorias.id = tb_cursos.categoriaid;

select * from tb_cursos inner join tb_categorias on tb_categorias.id = tb_cursos.categoriaid
where tb_categorias.nome = "Tecnologia";

