create database lapcom_tecnologia
use lapcom_tecnologia

create table cliente (
id_clien int primary key,
nom_clien varchar(130),
ape_clien varchar (20) 
)

create table producto(
id_prod int primary key,
nom_prod varchar (130)
)

create table clien_prod(
id_prod1 int, 
id_clien1 int, 
constraint fk_prod foreign key (id_prod1) references producto (id_prod),
constraint fk_clien foreign key (id_clien1) references cliente (id_clien)   
) 


insert into cliente values(01,'luisa','ruiz')
insert into cliente values(02,'joselo','guillen')
insert into cliente values(03,'jose','diaz')
insert into cliente values(04,'maria ','ruiz')
insert into cliente values(05,'lauren','moreno')
insert into cliente values(06,'ramon','diaz')
insert into cliente values(07,'juan ','hess')
insert into cliente values(08,'rossana','moreno')
insert into cliente values(09,'luis','cabral')
insert into cliente values(10,'rosalia','nuñez')

select *from cliente


insert into producto values(01,'switch')
insert into producto values(02,'router')
insert into producto values(03,'rj45')
insert into producto values(04,'mouse')
insert into producto values(05,'teclado')
insert into producto values(06,'mouse pad')
insert into producto values(07,'cable power')
insert into producto values(08,'clave vga')
insert into producto values(09,'memoria usb')
insert into producto values(10,'adaptador wifi')

select *from producto

insert into clien_prod values(01, 03)
insert into clien_prod values(02, 01)
insert into clien_prod values(03, 04)
insert into clien_prod values(04, 06)
insert into clien_prod values(05, 07)
insert into clien_prod values(06, 08)
insert into clien_prod values(07, 09)
insert into clien_prod values(08, 10)
insert into clien_prod values(09, 02)
insert into clien_prod values(10, 05)


select *from clien_prod