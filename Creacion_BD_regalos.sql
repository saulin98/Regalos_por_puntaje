create database regalos;

create table regalos.Tipo_cliente(
TipoClienteId int auto_increment not null,
Tipo varchar(100),
primary key(TipoClienteId)
)Engine=InnoDB;

create table regalos.Usuario(
UsuarioId int auto_increment not null,
UsuarioUser varchar(100),
UsuarioPsw varchar(100),
UsuarioDNI varchar(100),
UsuarioNombre varchar(100),
UsuarioApellidoPaterno varchar(100),
UsuarioApellidoMaterno varchar(100),
primary key(UsuarioId),
FK_TipoClienteId int not null,
constraint FKUsuario_TipoCliente
foreign key (FK_TipoClienteId) references Tipo_cliente (TipoClienteId)
)Engine=InnoDB;
