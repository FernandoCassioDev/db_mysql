create database db_e_commerce;

use db_e_commerce;

create table tb_produtos(
id bigint auto_increment primary key,
nome varchar(255) not null,
valor decimal(6,2) not null,
quantidade int not null,
tipo varchar(255) not null,
data_vencimento date 
); 

alter table tb_produtos add marca varchar(255);

insert into tb_produtos(nome, valor, quantidade, tipo, data_vencimento, marca) values (
"rtx 3060", 3000, 200, "placa de video", null, "Nvidea"
),(
"vipper mini", 250, 500, "mouse", null, "Razer"
),(
"Kumara red", 350, 600, "teclado", null, "Redragon"
),(
"Dual Shock 4", 400, 100, "controle", null, "Sony" 
),(
"ssd kingston", 250, 170, "ssd_pc", null, "Kingston"
),(
"atx 550", 500, 50, "fonte_pc", null, "Corsair"
),(
"air cooler gamer", 100, 300, "air_cooler", null, "Rise_mode"
),(
"b450", 800, 80, "placa_mae", null, "Asus"
);

select * from tb_produtos;
select * from tb_produtos where marca = "Kingston";

-- selecionando todos os produtos que possuem o valor maior que 500
select * from tb_produtos where valor > 500;

-- selecionando todos os produtos que possuem o valor menor que 500
select * from tb_produtos where valor < 500;

-- atualizando um registro atraves de uma query de atualização
-- dimuindo 30% do valor do produto com id 5
update tb_produtos set valor = valor - (valor*30) / 100 where id = 5;