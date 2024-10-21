create database votaciones2503816;
use votaciones2503816;

create table Genero(
	idGenero int auto_increment primary key,
    nomGenero varchar(30) not null,
    estadoG bool not null
);

create table Jornada(
	idJornada int auto_increment primary key,
    nomJornada varchar(30) not null,
    estadoJ bool not null
);

create table TipoDocumento(
	idTipoDoc int auto_increment primary key,
    nomTipoDoc varchar(30) not null,
    estadoTD bool not null
);

create table TipoMiembro(
	idTipoMiembro int auto_increment primary key,
    nomTipoMiembro varchar(30) not null,
    estadoTM bool not null
);

create table Curso(
	idCurso int auto_increment primary key,
    nomCurso varchar(30) not null,
    estadoCu bool not null
);

create table Concejo(
	idConcejo int auto_increment primary key,
    nomConcejo varchar(30) not null,
    estadoCO bool not null
);

create table Cargo(
	idCargo int auto_increment primary key,
    nomCargo varchar(30) not null,
    idConcejoFK int,
	foreign key (idConcejoFK) references Concejo(idConcejo),
    estadoC bool not null
);

create table Eleccion(
	idEleccion int auto_increment primary key,
    fechaEleccion date not null,
    anioEleccion int not null,
    estadoEL bool not null
);

create table Usuario(
	idUsuario int auto_increment primary key,
    noDocUsuario int not null,
    idTipoDocFK int,
    foreign key (idTipoDocFK) references TipoDocumento(idTipoDoc),
    nombreUsuario varchar(30) not null,
    apellidoUsuario varchar(30) not null,
    idGeneroFK int,
    foreign key (idGeneroFK) references Genero(idGenero),
    fechaNacUsuario varchar(20) not null,
    emailUsuario varchar(40),
    passwordUsuario varchar(20),
    fotoUsuario varchar(3) null,
    idJornadaFK int,
    foreign key (idJornadaFK) references Jornada(idJornada),
    idTipoMiembroFK int,
    foreign key (idTipoMiembroFK) references TipoMiembro(idTipoMiembro),
    idCursoFK int,
    foreign key (idCursoFK) references Curso(idCurso),
    estadoU bool not null
);

create table Postulacion_candidato(
	idPostCandidato int auto_increment primary key,
	idUsuarioFK int,
	foreign key (idUsuarioFK) references Usuario(idUsuario),
    idEleccionFK int,
	foreign key (idEleccionFK) references Eleccion(idEleccion),
    idCargoFK int,
	foreign key (idCargoFK) references Cargo(idCargo),
    propuestas varchar(50) not null,
    totalVotos int not null,
    estadoCan bool not null
);

create table Votacion(
	idVotacion int auto_increment primary key,
	horaVotacion time not null,
	idUsuarioVotanteFK int,
	foreign key (idUsuarioVotanteFK) references Usuario(idUsuario),
	idPostCandidatoFK int,
    foreign key (idPostCandidatoFK) references Postulacion_candidato(idPostCandidato),
    estadoV bool not null
);

insert into Genero values ('','Femenino',true), ('','Masculino',true);
insert into Jornada values ('', 'Mañana', true), ('', 'Tarde', true), ('', 'Noche', true);
insert into TipoDocumento values ('', 'Tarjeta de Identidad', true), ('', 'Cédula Ciudadanía', true), ('', 'Cédula Extranjeria', true), ('', 'Pasaporte', true), ('', 'NUIP', false);
insert into TipoMiembro values ('', 'Estudiante', true), ('', 'Profesor', true), ('', 'Acudiente', true);
insert into Curso values ('', '901', true), ('', '902', true), ('', '1001', true), ('', '1002', true), ('', '1003', false), ('', '1101', true), ('', '1102', true), ('', '1103', false);
insert into Concejo values ('', 'Concejo Académico', true), ('', 'Concejo Directivo', true), ('', 'Concejo Convivencia', true);
insert into Cargo values ('', 'Personero', 1, true), ('', 'Contralor', 1, true), ('', 'Cabildante', 1, true);
insert into Eleccion values ('', '2020-04-20', 2020, true), ('', '2019-04-15', 2019, true), ('', '2019-04-12', 2019, false), ('', '2018-04-14', 2018, true), ('', '2017-04-12', 2017, true);
insert into Votacion values ('', '12:08:15', 1, 1, true), ('', '12:12:35', 2, 3, true), ('', '12:14:18', 3, 2, true), ('', '12:15:58', 4, 2, true), ('', '12:18:02', 5, 3, true), ('', '12:24:22', 6, 3, true), ('', '12:28:02', 7, 3, true), ('', '12:30:14', 8, 2, true), ('', '12:40:20', 9, 2, true), ('', '12:45:20', 10, 2, true);
insert into Postulacion_candidato values ('', 1, 1, 1, 'Mejorar entrega refrigerios, Alargar descansos', 0, true), ('', 5, 1, 1, 'Mejorar entrega refrigerios, Alargar descansos', 0, true), ('', 7, 1, 1, 'Mejorar sala de informática, Construir piscina', 0, true);

select* from Concejo inner join Cargo on Concejo.nomConcejo = Cargo.nomCargo where Cargo.estadoC = true;
select* from Concejo inner join Cargo on Concejo.nomConcejo = Cargo.nomCargo = Cargo.estadoC;

select nombreUsuario, idJornadaFK, idMiembroFK, idCursoFK from Usuario;

select idPostCandidato, totalVotos from Votacion;

Delimiter //
create procedure insertarGenero(idGenero int, nomGenero varchar(30), estadoG bool)
begin
insert into Genero values (idGenero, nomGenero, estadoG);
end //
Delimiter ;

Delimiter //
create procedure insertarConcejo(idConcejo int, nomConcejo varchar(30), estadoG bool)
begin
insert into Concejo values (idConcejo, nomConcejo, estadoCO);
end //
Delimiter ;

Delimiter //
create procedure insertarEleccion(idEleccion int, fechaEleccion date, anioEleccion int,estadoEL bool)
begin
insert into Eleccion values (idEleccion, fechaEleccion, anioEleccion, estadoEL);
end //
Delimiter ;

create view nombreUsuario as select* from Usuario;
create view nomTipoDoc as select* from TipoDocumento;
create view propuestas as select* from Postulacion_candidato;