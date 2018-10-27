use Senda
------SCRIPT----------------------------------------------------------------------------------

create procedure Nuevo_Empleado (
	@idEmpleado int,
	@Nom_Empleado varchar(50),
	@Apellido_Paterno varchar(50),
	@Apellido_Materno varchar(50),
	@Edad_Empleado int,
	@Empleado_Puesto tinyint
)
as 
begin
	insert into Empleado(iIdEmpleado,vNomEmpleado,vApePatEm,vApeMatEm,tEdadEmpleado, Puesto)
		values (@idEmpleado, @Nom_Empleado,	@Apellido_Paterno, @Apellido_Materno ,@Edad_Empleado, @Empleado_Puesto)
end

EXEC Nuevo_Empleado @idEmpleado = 1, @Nom_Empleado = 'Maria Jose', @Apellido_Paterno = 'Flores', @Apellido_Materno = 'Rubio',
	@Edad_Empleado = 35, @Empleado_Puesto = 'Chofer'


--------PROCEDIMIENTOS---------------------------------------------------------------------

create procedure Consulta_Empleado 
	@Id_Empleado int
		as
		select * from Empleado
		where iIdEmpleado =@Id_Empleado
		go

		EXEC Consulta_Empleado 1


Create procedure Consulta_Chofer
	@Edad_Chofer int
		as
		select * from Empleado where tEdadEmpleado = @Edad_Chofer
		go

		EXEC Consulta_Chofer 35


--------FUNCION-------------------

create function Autobuses(
) 
returns int
as 
begin
	declare @cantidadAutobuses int = (select count(a.iIdEmpleado) as TotalE from Empleado as )
	return @totalE
end

select dbo.TotalDeEmpleados() as 'Total de empleados'

drop function TotalDeEmpleados