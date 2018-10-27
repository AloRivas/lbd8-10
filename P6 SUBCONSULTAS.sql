Use CENTRAL

select * from PrecioBoleto

-------SUBCONSULTAS-------------------------------------------------------------------------------

select Nom_Conductor, Apellido_Paterno, Edad_Conductor,
	(select COUNT (Edad_Conductor) from Conductor where Edad_Conductor > 30 ) as 'TotalEdad'
		from Conductor


select * from  
	(select Edad_Conductor, count (Edad_Conductor) as 'Cantidad'
		from Conductor
		group by Edad_Conductor) as Total
	where Total.Cantidad >1


select * from  
	(select Precio_Boleto, count (Precio_Boleto) as 'Cantidad'
		from PrecioBoleto
		group by Precio_Boleto) as Total
	where Total.Cantidad >1
	
--------WITH-----------------------------------------------------------

with EdadConductor
as 
(select Edad_Conductor, count(Edad_Conductor) as [Cantidad]
	from Conductor
	group by Edad_Conductor
	)
select *
from EdadConductor
where EdadConductor.Cantidad >0


-------VISTAS--------------------------------------------------------------

create view ChoferAutobus 
as(
Select e.Id_Conductor as [Chofer Autobus], 
	Count(v.Id_Autobus) as [Autobus]
from Autobuses as v
left join Conductor e on v.Id_Autobus = e.Id_Conductor
where v.Id_Autobus= e.Id_Conductor
group by e.Id_Conductor)


Select * from ChoferAutobus

create view Precios
as
(select a.Tipo_Autobus as [Tipo], 
	b.Precio_Boleto as [Precio]
	from PrecioBoleto as a
	INNER JOIN PrecioBoleto as b
	on a.Precio_Boleto= b.Precio_Boleto)

Select * from Precios

create view Ciudades
as
	(select a.Id_Ciudad as [ID],
	b.C_Nombre as [Nombre ciudad]
	from Ciudad as a
	INNER JOIN Ciudad as b
	on a.Id_Ciudad=b.Id_Ciudad)

select * from Ciudades

create view Vista_Viaje
as
(select e.Id_Ruta as [Ruta], 
		Count(v.Id_Viaje) as [Viaje]
	from Viajes as v
	LEFT JOIN Ruta e on v.Id_Viaje = e.Id_Ruta
	where v.Id_Viaje = e.Id_Ruta
	group by e.Id_Ruta)

Select * from Vista_Viaje

create view EdadChofer
as
	(select a.Apellido_Paterno as [Apellido],
	b.Edad_Conductor as [Edad]
	from Conductor as a
	INNER JOIN Conductor as b
	on a.Apellido_Paterno=b.Apellido_Paterno)

select * from EdadChofer


create view VistaEmpleado
as
	(select a.Id_Conductor as [ID Conductor],
	b.Id_Empleado as [ID Empleado]
	from Conductor as a
	INNER JOIN Conductor as b
	on a.Id_Conductor=b.Id_Conductor)

select * from VistaEmpleado



------CONSULTA DINAMICA---------------------------------------------------

declare @query nvarchar (MAX)
set @query = 'select * from Ciudad'
exec (@query)

declare @query nvarchar (MAX)
declare @nomcolm nvarchar (MAX)= 'Id_Conductor'
set @query =  'Select '+  @nomcolm +' from Conductor'
exec (@query)