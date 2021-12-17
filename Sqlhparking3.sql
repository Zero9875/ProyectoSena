CREATE DATABASE hparking7;
use hparking7;

CREATE 	TABLE Usuario (
Idpersona int not null,
Nombre varchar(25) not null,
Contraseña varchar (9) not null ,
Primary key (Contraseña)
);

CREATE TABLE Vehiculo(
Placa varchar(10) primary key,
Marca varchar(10),	
Idpersona int ,
idtipo int,

 contraseña varchar(9) not null,
foreign key (contraseña) references Usuario (Contraseña ),
Id_tipo int references TipoVehiculo (Idtipo)

	);
CREATE TABLE TipoVehiculo (
Idtipo int primary key,
Idtarifa decimal,
Id_tarifa int references Tarifa (Idtarifa)
);
Create table Tarifa(
Idtarifa decimal primary key,
Costo decimal,
Id_Tipo int,
foreign key (Id_Tipo) references TipoVehiculo (Idtipo)
);



 CREATE TABLE TK(Placa varchar(10),
 idpago  INT NOT NULL auto_increment,
 idbahia int,
 primary key (idpago),
 Idvehiculo int,
 /*llave foranea que llama al nombre de la tabla la llave foranea*/
 foreign key (placa) references Vehiculo (Placa),
 bahia int references Bahia (idbahia ));
 
 CREATE TABLE Bahia (
 idbahia int primary key,
 disponible boolean,
 Id_pago INT,
 foreign key (Id_pago) references TK (idpago)
 
 );
 
 Insert into usuario (Idpersona, Nombre, Contraseña) values ('12323', 'pepito perez', 'Sena123');
 Insert into usuario (Idpersona, Nombre, Contraseña) values ('434', 'angie suarez', 'Trasmilen');
 Insert into usuario (Idpersona, Nombre, Contraseña) values ('1', ' juanito arizaa', 'Se232');
 Insert into usuario (Idpersona, Nombre, Contraseña) values ('13', 'daniela gomez', 'Re1212');
  Insert into tarifa (Idtarifa,Costo) values ('2', '20.000');
  

 
 
 
 
 
 
 

 

