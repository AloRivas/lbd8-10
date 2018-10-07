Create database CentralAutobus

use CentralAutobus

Create table Autobus 
(
Id_Autobus uniqueidentifier PRIMARY KEY NOT NULL,
Marca_Autobus varchar (30),
Modelo_Autobus varchar (30),
Asientos_Autobus int,
)

select * from Boleto

Create table Boleto
(
Id_Boleto uniqueidentifier PRIMARY KEY NOT NULL,
Tipo_Boleto varchar (30),
Id_Viaje uniqueidentifier,
Nombre_Pasajero varchar (30),
Id_Autobus uniqueidentifier,
Precio_Boleto float,
Num_Asiento varchar(20),
)

Create table Chofer
(
Id_Chofer uniqueidentifier PRIMARY KEY NOT NULL,
Nom_Chofer varchar (30),
Apellido_Paterno varchar(30),
Apellido_Materno varchar(30),
Edad_Chofer int,
Id_Autobus uniqueidentifier,
Id_Empleado uniqueidentifier,
)

Create table Ciudades
(
Id_Ciudad uniqueidentifier PRIMARY KEY NOT NULL,
C_Nombre varchar(30),
C_Estado varchar (30),
P_Nombre varchar (30),

)

Create table Destino
(
Id_Ciudad uniqueidentifier,
)

Create table Origen
(
Id_Ciudad uniqueidentifier,
)

Create table Precio
(
Id_Precio uniqueidentifier PRIMARY KEY NOT NULL,
Id_Viaje uniqueidentifier,
)

Create table Rutas
(
Id_Ruta uniqueidentifier PRIMARY KEY NOT NULL,
Id_Destino uniqueidentifier,
Id_Origen uniqueidentifier,
)

create table Viaje
(
Id_Viaje uniqueidentifier PRIMARY KEY NOT NULL,
Id_Ruta uniqueidentifier,
Fecha date,
Hora time,
Id_Autobus uniqueidentifier,
Id_Chofer uniqueidentifier,
)

select * from Autobus
insert into Autobus
	values (NEWID(), 'Mercedes-Benz','Torino',35)

insert into Autobus
	values (NEWID(), 'Mercedes-Benz','Torino',35)

insert into Autobus
	values (NEWID(), 'Mercedes-Benz','Torino',35)

insert into Autobus
	values (NEWID(), 'Mercedes-Benz','Torino',35)

insert into Autobus
	values (NEWID(), 'Mercedes-Benz','Torino',35)

insert into Autobus
	values (NEWID(), 'Mercedes-Benz','Torino',35)

insert into Autobus
	values (NEWID(), 'Mercedes-Benz','Torino',35)

insert into Autobus
	values (NEWID(), 'Mercedes-Benz','Torino',35)

insert into Autobus
	values (NEWID(), 'Mercedes-Benz','Torino',35)
	
insert into Autobus
	values (NEWID(), 'Mercedes-Benz','Torino',35)

insert into Autobus
	values (NEWID(), 'Mercedes-Benz','Torino-P',30)

insert into Autobus
	values (NEWID(), 'Mercedes-Benz','Torino-P',30)

insert into Autobus
	values (NEWID(), 'Mercedes-Benz','Torino-P',30)

insert into Autobus
	values (NEWID(), 'Mercedes-Benz','Torino-P',30)

insert into Autobus
	values (NEWID(), 'Mercedes-Benz','Torino-P',30)


insert into Autobus
	values (NEWID(), 'Mercedes-Benz','Torino-P',30)

insert into Autobus
	values (NEWID(), 'Mercedes-Benz','Torino-Premiere',40)


insert into Autobus
	values (NEWID(), 'Mercedes-Benz','Torino-Premiere',40)

insert into Autobus
	values (NEWID(), 'Mercedes-Benz','Torino-Premiere',40)

insert into Autobus
	values (NEWID(), 'Mercedes-Benz','Torino-Premiere',40)


insert into Autobus
	values (NEWID(), 'Mercedes-Benz','Torino-Premiere',40)



select * from Chofer

insert into Chofer (Id_Chofer, Nom_Chofer, Apellido_Paterno, Apellido_Materno, Edad_Chofer)
	values(NEWID(), 'Dario', 'Clemente', 'Torres', 35)

insert into Chofer (Id_Chofer, Nom_Chofer, Apellido_Paterno, Apellido_Materno, Edad_Chofer)
	values(NEWID(), 'Oscar', 'Alvarado', 'Mendoza', 46)

insert into Chofer (Id_Chofer, Nom_Chofer, Apellido_Paterno, Apellido_Materno, Edad_Chofer)
	values(NEWID(), 'Gilberto', 'Estrada', 'Felix', 52)

insert into Chofer (Id_Chofer, Nom_Chofer, Apellido_Paterno, Apellido_Materno, Edad_Chofer)
	values(NEWID(), 'Dalia', 'Hernandez', 'Espinoza', 42)

insert into Chofer (Id_Chofer, Nom_Chofer, Apellido_Paterno, Apellido_Materno, Edad_Chofer)
	values(NEWID(), 'Elizabeth', 'Balderas', 'Arriaga', 45)

insert into Chofer (Id_Chofer, Nom_Chofer, Apellido_Paterno, Apellido_Materno, Edad_Chofer)
	values(NEWID(), 'Francisco', 'Banda', 'Jimenez', 32)

insert into Chofer (Id_Chofer, Nom_Chofer, Apellido_Paterno, Apellido_Materno, Edad_Chofer)
	values(NEWID(), 'María Fernanda', 'Diaz', 'Rodriguez', 39)

insert into Chofer (Id_Chofer, Nom_Chofer, Apellido_Paterno, Apellido_Materno, Edad_Chofer)
	values(NEWID(), 'Rafael', 'Chong', 'Gutiérrez', 46)

insert into Chofer (Id_Chofer, Nom_Chofer, Apellido_Paterno, Apellido_Materno, Edad_Chofer)
	values(NEWID(), 'Ignacio', 'Ezra', 'Escamilla', 26)

insert into Chofer (Id_Chofer, Nom_Chofer, Apellido_Paterno, Apellido_Materno, Edad_Chofer)
	values(NEWID(), 'Alberto', 'Villarreal', 'Arias', 26)

insert into Chofer (Id_Chofer, Nom_Chofer, Apellido_Paterno, Apellido_Materno, Edad_Chofer)
	values(NEWID(), 'Gabriel', 'Velez', 'Muro', 26)

insert into Chofer (Id_Chofer, Nom_Chofer, Apellido_Paterno, Apellido_Materno, Edad_Chofer)
	values(NEWID(), 'Andrea', 'Zepeda', 'Duarte', 26)

insert into Chofer (Id_Chofer, Nom_Chofer, Apellido_Paterno, Apellido_Materno, Edad_Chofer)
	values(NEWID(), 'Paola', 'Trujillo', 'Arias', 40)

insert into Chofer (Id_Chofer, Nom_Chofer, Apellido_Paterno, Apellido_Materno, Edad_Chofer)
	values(NEWID(), 'Gustavo', 'Loera', 'Balleza', 35)

insert into Chofer (Id_Chofer, Nom_Chofer, Apellido_Paterno, Apellido_Materno, Edad_Chofer)
	values(NEWID(), 'Armando', 'Esponda', 'Araiza', 40)

insert into Chofer (Id_Chofer, Nom_Chofer, Apellido_Paterno, Apellido_Materno, Edad_Chofer)
	values(NEWID(), 'Cesar', 'Ruiz', 'Garcia', 50)

insert into Chofer (Id_Chofer, Nom_Chofer, Apellido_Paterno, Apellido_Materno, Edad_Chofer)
	values(NEWID(), 'Victoria', 'Diaz', 'Pineda', 43)

insert into Chofer (Id_Chofer, Nom_Chofer, Apellido_Paterno, Apellido_Materno, Edad_Chofer)
	values(NEWID(), 'Erick', 'Rofriguez', 'Vallejo', 31)

insert into Chofer (Id_Chofer, Nom_Chofer, Apellido_Paterno, Apellido_Materno, Edad_Chofer)
	values(NEWID(), 'Saul', 'Ponce', 'Sanchez', 39)

insert into Chofer (Id_Chofer, Nom_Chofer, Apellido_Paterno, Apellido_Materno, Edad_Chofer)
	values(NEWID(), 'Emilio', 'Sauceda', 'Cano', 53)

	select * from Chofer
	update Chofer set Edad_Chofer = 38 where Nom_Chofer = 'Rafael'

	update Chofer set Edad_Chofer = 37 where Nom_Chofer = 'Andrea'

	update Chofer set Edad_Chofer = 42 where Nom_Chofer = 'Gabriel'

	update Chofer set Edad_Chofer = 28 where Nom_Chofer = 'Alberto'

	update Chofer set Edad_Chofer = 37 where Nom_Chofer = 'Elizabeth'

	select * from Ciudades

insert into Ciudades
	values(NEWID(), 'Monterrey', 'Nuevo Leon', 'Mexico')

insert into Ciudades
	values(NEWID(), 'Aguascalientes', 'Aguascalientes', 'Mexico')

insert into Ciudades
	values(NEWID(), 'Ciudad Juarez', 'Chihuahua', 'Mexico')

insert into Ciudades
	values(NEWID(), 'Chihuahua', 'Chihuahua', 'Mexico')

insert into Ciudades
	values(NEWID(), 'Cuatro Cienegas', 'Coahuila', 'Mexico')

insert into Ciudades
	values(NEWID(), 'Monclova', 'Coahuila', 'Mexico')

insert into Ciudades
	values(NEWID(), 'Saltillo', 'Coahuila', 'Mexico')

insert into Ciudades
	values(NEWID(), 'Durango', 'Durango', 'Mexico')

insert into Ciudades
	values(NEWID(), 'Guadalajara', 'Jalisco', 'Mexico')

insert into Ciudades
	values(NEWID(), 'San Juan de los Lagos', 'Jalisco', 'Mexico')

insert into Ciudades
	values(NEWID(), 'Tampico', 'Tamaulipas', 'Mexico')

insert into Ciudades
	values(NEWID(), 'Matamoros', 'Tamaulipas', 'Mexico')

insert into Ciudades
	values(NEWID(), 'Nuevo Laredo', 'Tamaulipas', 'Mexico')

insert into Ciudades
	values(NEWID(), 'Reynosa', 'Tamaulipas', 'Mexico')

insert into Ciudades
	values(NEWID(), 'Queretaro', 'Queretaro', 'Mexico')

insert into Ciudades
	values(NEWID(), 'Mazatlan', 'Sinaloa', 'Mexico')

insert into Ciudades
	values(NEWID(), 'San Luis Potosi', 'San Luis Potosi', 'Mexico')

insert into Ciudades
	values(NEWID(), 'Zacatecas', 'Zacatecas', 'Mexico')

insert into Ciudades
	values(NEWID(), 'Chicago', 'Illinois', 'Estados Unidos de America')

insert into Ciudades
	values(NEWID(), 'Dallas', 'Texas', 'Estados Unidos de America')

insert into Ciudades
	values(NEWID(), 'Austin', 'Texas', 'Estados Unidos de America')

insert into Ciudades
	values(NEWID(), 'Houston', 'Texas', 'Estados Unidos de America')

insert into Ciudades
	values(NEWID(), 'Laredo', 'Texas', 'Estados Unidos de America')

insert into Ciudades
	values(NEWID(), 'San Antonio', 'Texas', 'Estados Unidos de America')


select * from Precio

ALTER TABLE Precio add Precio_Boleto float
ALTER TABLE Precio add Tipo_Autobus varchar(30)

insert into Precio (Id_Precio, Precio_Boleto, Tipo_Autobus)
	values (NEWID(), 180.00, 'Normal' )

insert into Precio (Id_Precio, Precio_Boleto, Tipo_Autobus)
	values (NEWID(), 150.00, 'Normal' )

insert into Precio (Id_Precio, Precio_Boleto, Tipo_Autobus)
	values (NEWID(), 100.00, 'Normal' )

insert into Precio (Id_Precio, Precio_Boleto, Tipo_Autobus)
	values (NEWID(), 250.00, 'Premiere' )

insert into Precio (Id_Precio, Precio_Boleto, Tipo_Autobus)
	values (NEWID(), 235.00, 'Premiere' )

insert into Precio (Id_Precio, Precio_Boleto, Tipo_Autobus)
	values (NEWID(), 200.00, 'Premiere' )


insert into Precio (Id_Precio, Precio_Boleto, Tipo_Autobus)
	values (NEWID(), 250.00, 'Plus' )


insert into Precio (Id_Precio, Precio_Boleto, Tipo_Autobus)
	values (NEWID(), 225.00, 'Plus' )


insert into Precio (Id_Precio, Precio_Boleto, Tipo_Autobus)
	values (NEWID(), 190.00, 'Plus' )

	delete Precio where Id_Precio like '87%'

	delete Precio where Id_Precio like 'D9%'
	
	delete Precio where Id_Precio like '16%'

	delete Precio where Id_Precio like 'C4%'

	delete Precio where Id_Precio like '57%'

	delete Precio where Id_Precio like 'F3%'

