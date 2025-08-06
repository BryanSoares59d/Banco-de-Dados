# 	CREATE - create database  (criar base de dados)
# 	CREATE - create table (criar tabela)

create database auto;

# USE - selecionar a base de dados
use  auto;

# CREATE TABLE
create table automovel(
idauto int auto_increment not null,
modelo varchar(30) null,
marca varchar(20) null,
valor double null,
primary key (idauto));

create table carro(
idcarro int auto_increment not null,
nomecomprador varchar(200) null,
quantidade int null,
valortotal double,
autoFK int,
primary key(idcarro),
foreign key(autoFK) references automovel(idauto));

# SELECT - seleciona a tabela | (*) -> seleciona todos os atributos
select * from automovel;
select * from carro;

# INSERT INTO - inserir dados na tabela
insert into automovel(modelo,marca,valor) values ('big trail', 'tiger 1200 XCA', 1000.50);

insert into carro(nomecomprador,quantidade,valortotal,autoFK) values ('Leandro',1, 900.5,2);

# DELETE - Apagar registro
delete from carro where idcarro = 1; 

# UPDATE - atualizar campo
update carro
set quantidade = 3, autoFK = 2
where idcarro = 4;

# CRUD - create, read (select), update, delete

# Variações select
select * from automovel;
select marca, valor from automovel;
select * from automovel where idauto = 3;
select modelo, marca from automovel where idauto = 3;