create database tokenbd;
use tokenbd;

CREATE TABLE usuario (
	idusuario INT auto_increment NOT NULL,
	nomusuario varchar(100) NULL,
	email varchar(250) NULL,
	password varchar(250) NULL,
	activo BOOL NULL,
	CONSTRAINT users_pk PRIMARY KEY (idusuario)
);


CREATE TABLE rol (
	idrol INT auto_increment NOT NULL,
	nomrol varchar(250) NULL,
	CONSTRAINT roles_pk PRIMARY KEY (idrol)
);


CREATE TABLE usuario_rol (
	idusuario INT NOT NULL,
	idrol INT NOT NULL,
	CONSTRAINT user_role_pk PRIMARY KEY (idusuario, idrol),
	CONSTRAINT user_role_FK FOREIGN KEY (idusuario) REFERENCES usuario(idusuario),
	CONSTRAINT user_role_FK_1 FOREIGN KEY (idrol) REFERENCES rol(idrol)
);

insert into tb

select * from usuario

insert into usuario values(1,'cperiche','cperiche@hotmail.com','$12$6s5554y81TlNjqcsSM0XwOTVntNgvyJVOeVbRLeDOVTJi0/DkhzYq','1'),
(2,'amunoz','amunoz@hotmail.com','$12$kzkLQOsNQhRBzFlr/o8GreBO7QRNL0qn8OknW3WR/kvwJhJwcxDUy','1'),
(3,'kecca','kecca@hotmail.com','$2a$12$dA23N0VN0ijYuqd873Q.OOckpBPNmsHd7QJHRYNZlOET9dX08VHQq','1'),
(4,'cbacca','cbacca@@hotmail.com','$2a$12$wyDrDQ.WGKbpMti6aq2vG.IFxmLO66lmaR5ydobkLRTAfhQ0JBBEO','1');
insert into rol values(1,'COORDINADOR'),(2,'GESTOR');
insert into usuario_rol values(1,'1'),(2,'1'),(3,'1'),(4,'2');