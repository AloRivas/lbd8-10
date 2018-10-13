create database CENTRAL

use CENTRAL
Create table Autobuses 
(
Id_Autobus int PRIMARY KEY NOT NULL Identity (1,1),
Marca_Autobus varchar (30),
Modelo_Autobus varchar (30),
Asientos_Autobus int,
)

select * from Boletos

Create table Boletos
(
Id_Boleto int PRIMARY KEY NOT NULL Identity (1,1),
Tipo_Boleto varchar (30),
Id_Viaje int ,
Nombre_Pasajero varchar (30),
Id_Autobus int ,
Precio_Boleto float,
Num_Asiento varchar(20),
)

Create table Conductor
(
Id_Conductor int Identity (1,1) PRIMARY KEY NOT NULL,
Nom_Conductor varchar (30),
Apellido_Paterno varchar(30),
Apellido_Materno varchar(30),
Edad_Conductor int,
Id_Autobus int,
Id_Empleado uniqueidentifier,
)

Create table Ciudad
(
Id_Ciudad int Identity (1,1) PRIMARY KEY NOT NULL,
C_Nombre varchar(30),
C_Estado varchar (30),
P_Nombre varchar (30),

)

Create table Destinos
(
Id_Ciudad int,
)

Create table Salida
(
Id_Ciudad int,
)

Create table PrecioBoleto
(
Id_Precio int Identity (1,1) PRIMARY KEY NOT NULL,
Id_Viaje int,
)

Create table Ruta
(
Id_Ruta int Identity (1,1) PRIMARY KEY NOT NULL,
Id_Destino int,
Id_Origen int,
)

create table Viajes
(
Id_Viaje int Identity (1,1) PRIMARY KEY NOT NULL,
Id_Ruta int,
Fecha date,
Hora time,
Id_Autobus int,
Id_Conductor int,
)

select * from Autobuses
insert into Autobuses
	values ('Mercedes-Benz','Torino',35)

insert into Autobuses
	values ('Mercedes-Benz','Torino',35)

insert into Autobuses
	values ('Mercedes-Benz','Torino',35)

insert into Autobuses
	values ('Mercedes-Benz','Torino',35)

insert into Autobuses
	values ('Mercedes-Benz','Torino',35)

insert into Autobuses
	values ('Mercedes-Benz','Torino',35)

insert into Autobuses
	values ('Mercedes-Benz','Torino',35)

insert into Autobuses
	values ('Mercedes-Benz','Torino',35)

insert into Autobuses
	values ('Mercedes-Benz','Torino',35)
	
insert into Autobuses
	values ('Mercedes-Benz','Torino',35)

insert into Autobuses
	values ('Mercedes-Benz','Torino-P',30)

insert into Autobuses
	values ('Mercedes-Benz','Torino-P',30)

insert into Autobuses
	values ('Mercedes-Benz','Torino-P',30)

insert into Autobuses
	values ('Mercedes-Benz','Torino-P',30)

insert into Autobuses
	values ('Mercedes-Benz','Torino-P',30)


insert into Autobuses
	values ('Mercedes-Benz','Torino-P',30)

insert into Autobuses
	values ('Mercedes-Benz','Torino-Premiere',40)

insert into Autobuses
	values ('Mercedes-Benz','Torino-Premiere',40)

insert into Autobuses
	values ('Mercedes-Benz','Torino-Premiere',40)

insert into Autobuses
	values ('Mercedes-Benz','Torino-Premiere',40)

insert into Autobuses
	values ('Mercedes-Benz','Torino-Premiere',40)




select * from Conductor

insert into Conductor
	values('Dario', 'Clemente', 'Torres', 35, 1, NEWID())

insert into Conductor	
	values('Oscar', 'Alvarado', 'Mendoza', 46, 2, NEWID())

insert into Conductor
	values('Gilberto', 'Estrada', 'Felix', 52, 3, NEWID())

insert into Conductor
	values('Dalia', 'Hernandez', 'Espinoza', 42, 4, NEWID())

insert into Conductor
	values('Elizabeth', 'Balderas', 'Arriaga', 45, 5, NEWID())

insert into Conductor
	values('Francisco', 'Banda', 'Jimenez', 32, 6, NEWID())

insert into Conductor
	values('María Fernanda', 'Diaz', 'Rodriguez', 39, 7, NEWID())

insert into Conductor
	values('Rafael', 'Chong', 'Gutiérrez', 46, 8, NEWID())

insert into Conductor
	values('Ignacio', 'Ezra', 'Escamilla', 26, 9, NEWID())

insert into Conductor
	values('Alberto', 'Villarreal', 'Arias', 26, 10, NEWID())

insert into Conductor
	values('Gabriel', 'Velez', 'Muro', 26, 11, NEWID())

insert into Conductor
	values('Andrea', 'Zepeda', 'Duarte', 26, 12, NEWID())

insert into Conductor
	values('Paola', 'Trujillo', 'Arias', 40, 13, NEWID())

insert into Conductor
	values('Gustavo', 'Loera', 'Balleza', 35, 14, NEWID())

insert into Conductor
	values('Armando', 'Esponda', 'Araiza', 40, 15, NEWID())

insert into Conductor
	values('Cesar', 'Ruiz', 'Garcia', 50, 16, NEWID())

insert into Conductor
	values('Victoria', 'Diaz', 'Pineda', 43, 17, NEWID())

insert into Conductor
	values('Erick', 'Rofriguez', 'Vallejo', 31, 18, NEWID())

insert into Conductor
	values('Saul', 'Ponce', 'Sanchez', 39, 19, NEWID())

insert into Conductor
	values('Emilio', 'Sauceda', 'Cano', 53, 20, NEWID())

	select * from Conductor

	select * from Ciudad

insert into Ciudad
	values('Monterrey', 'Nuevo Leon', 'Mexico')

insert into Ciudad
	values('Aguascalientes', 'Aguascalientes', 'Mexico')

insert into Ciudad
	values('Ciudad Juarez', 'Chihuahua', 'Mexico')

insert into Ciudad
	values('Chihuahua', 'Chihuahua', 'Mexico')

insert into Ciudad
	values('Cuatro Cienegas', 'Coahuila', 'Mexico')

insert into Ciudad
	values('Monclova', 'Coahuila', 'Mexico')

insert into Ciudad
	values('Saltillo', 'Coahuila', 'Mexico')

insert into Ciudad
	values('Durango', 'Durango', 'Mexico')

insert into Ciudad
	values('Guadalajara', 'Jalisco', 'Mexico')

insert into Ciudad
	values('San Juan de los Lagos', 'Jalisco', 'Mexico')

insert into Ciudad
	values('Tampico', 'Tamaulipas', 'Mexico')

insert into Ciudad
	values('Matamoros', 'Tamaulipas', 'Mexico')

insert into Ciudad
	values('Nuevo Laredo', 'Tamaulipas', 'Mexico')

insert into Ciudad
	values('Reynosa', 'Tamaulipas', 'Mexico')

insert into Ciudad
	values('Queretaro', 'Queretaro', 'Mexico')

insert into Ciudad
	values('Mazatlan', 'Sinaloa', 'Mexico')

insert into Ciudad
	values('San Luis Potosi', 'San Luis Potosi', 'Mexico')

insert into Ciudad
	values('Zacatecas', 'Zacatecas', 'Mexico')

insert into Ciudad
	values('Chicago', 'Illinois', 'Estados Unidos de America')

insert into Ciudad
	values('Dallas', 'Texas', 'Estados Unidos de America')

insert into Ciudad
	values('Austin', 'Texas', 'Estados Unidos de America')

insert into Ciudad
	values('Houston', 'Texas', 'Estados Unidos de America')

insert into Ciudad
	values('Laredo', 'Texas', 'Estados Unidos de America')

insert into Ciudad
	values('San Antonio', 'Texas', 'Estados Unidos de America')


select * from PrecioBoleto

ALTER TABLE PrecioBoleto add Precio_Boleto float
ALTER TABLE PrecioBoleto add Tipo_Autobus varchar(30)

insert into PrecioBoleto 
	values (1, 180.00, 'Normal')

insert into PrecioBoleto
	values (2, 150.00, 'Normal' )

insert into PrecioBoleto
	values (3, 100.00, 'Normal' )

insert into PrecioBoleto
	values (4, 250.00, 'Premiere' )

insert into PrecioBoleto
	values (5, 235.00, 'Premiere' )

insert into PrecioBoleto
	values (6, 200.00, 'Premiere' )


insert into PrecioBoleto
	values (7, 250.00, 'Plus' )


insert into PrecioBoleto
	values (8, 225.00, 'Plus' )


insert into PrecioBoleto
	values (9, 190.00, 'Plus' )


-----------------------------------------------------------------------------------------------------------------------

select* from Conductor
	
select Nom_Conductor + '' + Apellido_Paterno + '' + Apellido_Materno as 'Nombre Completo' from Conductor

select Id_Conductor, Edad_Conductor as 'Edad Conductor' from Conductor

select Tipo_Autobus as 'Clase de autobus' from PrecioBoleto

select Id_Autobus, Asientos_Autobus as 'Asientos de autobus' from Autobuses

select C_Nombre + '' + C_Estado + '' + P_Nombre as 'Ciudad' from Ciudad



select * from Conductor
right JOIN Autobuses on Conductor.Id_Autobus = Autobuses.Id_Autobus

select * from Conductor 
left JOIN Autobuses on Conductor.Id_Autobus = Autobuses.Id_Autobus

select * from Conductor 
inner JOIN Autobuses on Conductor.Id_Autobus = Autobuses.Id_Autobus

select * from Conductor 
cross JOIN Autobuses--Conductor.Id_Autobus = Autobuses.Id_Autobus


select * from Autobuses
where Autobuses.Modelo_Autobus like 'T%'

select * from Ciudad
where Ciudad.C_Nombre like 'C%'

select * from Conductor
where Conductor.Apellido_Paterno like 'R%'

select * from PrecioBoleto
where PrecioBoleto.Tipo_Autobus like 'P%'

select * from Conductor
where Conductor.Nom_Conductor like 'A%'
order by Edad_Conductor



select * from Autobuses

select Asientos_Autobus, COUNT (Autobuses.Asientos_Autobus) as 'Cantidad de asientos' from Autobuses
group by Asientos_Autobus

select Precio_Boleto, COUNT (PrecioBoleto.Precio_Boleto) as 'Precios' from PrecioBoleto
group by Precio_Boleto

select COUNT (Conductor.Id_Conductor) as 'Cantidad' from Conductor
where Conductor.Nom_Conductor like 'E%'

select COUNT (Ciudad.Id_Ciudad) as 'Cantidad' from Ciudad
where Ciudad.C_Nombre like 'M%'

select Asientos_Autobus, COUNT(Asientos_Autobus) as 'Cantidad' from Autobuses
group by Asientos_Autobus
having count (*) > 3




