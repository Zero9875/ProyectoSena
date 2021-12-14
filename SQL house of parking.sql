create database parqueadero
use parqueadero

CREATE TABLE Vehiculo(Id_Vehiculo INT AUTO_INCREMENT,
 idUsuario  INT NOT NULL,
 primary key (Id_Vehiculo),
/*llave foranea que llama al nombre de la tabla la llave foranea*/
 foreign key (idUsuario) references usuario (idUsuario));
 
 CREATE TABLE Pago(Id_Vehiculo INT AUTO_INCREMENT,
 idpago  INT NOT NULL,
 primary key (idpago),
/*llave foranea que llama al nombre de la tabla la llave foranea*/
 foreign key (Id_Vehiculo) references Vehiculo (Id_Vehiculo));
 
 CREATE TABLE Bahia(Id_Vehiculo INT,
 idparqueadero  INT NOT NULL,
 primary key (idparqueadero),	
/*llave foranea que llama al nombre de la tabla la llave foranea*/
 foreign key (idpago) references Pago (idpago));
 
 
 
 
 
 