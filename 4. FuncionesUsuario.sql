USE [bifconvenio]
GO
/****** Object:  UserDefinedFunction [dbo].[DateFromParts]    Script Date: 10-Jan-23 1:59:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[DateFromParts](    
 @anio int,
 @mes int,
 @dia int
)    
returns datetime    
as    
begin    
    
 declare @fecha as datetime    
    
 SELECT @fecha = cast(cast((@anio*10000 + @mes*100 + @dia)as varchar(8)) as datetime) 
      
 return @fecha    
end     
/*    
drop function DateFromParts    
*/    
/*    
PRUEBAS UNITARIAS    
*****************    
    
select dbo.DateFromParts(2014,9,1)    
select dbo.DateFromParts(14,9,1)    
select dateadd(day,36,getdate())    
select datediff(day,dateadd(day,-5,getdate()),getdate())  
   
select * from dlemp
sp_helptext  
SELECT  cast(cast((2014*10000 + 9*100 + 1)as varchar(8) ) as datetime) 
SELECT (20140901)
SELECT  cast('20140901' as datetime) 
*/



GO
/****** Object:  UserDefinedFunction [dbo].[F_Fecha_Anio_Anterior]    Script Date: 10-Jan-23 1:59:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[F_Fecha_Anio_Anterior](      
 @anio Decimal(4,0),  
 @mes Decimal(2,0)  
)      
returns int     
as      
begin      
      
 declare @fecha as char(8),@anio_anterior int  
select @fecha = CONVERT(CHAR(4),@anio)+ SUBSTRING('00' + LTRIM(RTRIM(@mes)) , LEN(LTRIM(RTRIM(@mes))) + 1, 2 )+ '01'   
select @anio_anterior = year(dateadd(month,-1,@fecha))  
return @anio_anterior  
end       
/*      
drop function DateFromParts      
*/      
/*      
PRUEBAS UNITARIAS      
*****************      
select dbo.F_Fecha_Anio_Anterior(2015,1)   
select dbo.DateFromParts(2014,9,1)      
select dbo.DateFromParts(14,9,1)      
select dateadd(day,36,getdate())      
select datediff(day,dateadd(day,-5,getdate()),getdate())    
     
select * from dlemp  
sp_helptext    
SELECT  cast(cast((2014*10000 + 9*100 + 1)as varchar(8) ) as datetime)   
SELECT (20140901)  
SELECT  cast('20140901' as datetime)   
*/  
  
  
GO
/****** Object:  UserDefinedFunction [dbo].[F_Fecha_Mes_Anterior]    Script Date: 10-Jan-23 1:59:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[F_Fecha_Mes_Anterior](    
 @anio Decimal(4,0),
 @mes Decimal(2,0)
)    
returns int   
as    
begin    
    
 declare @fecha as char(8),@mes_anterior int
select @fecha = CONVERT(CHAR(4),@anio)+ SUBSTRING('00' + LTRIM(RTRIM(@mes)) , LEN(LTRIM(RTRIM(@mes))) + 1, 2 )+ '01' 
select @mes_anterior = month(dateadd(month,-1,@fecha))
return @mes_anterior
end     
/*    
drop function DateFromParts    
*/    
/*    
PRUEBAS UNITARIAS    
*****************    
select dbo.F_Fecha_Mes_Anterior(2015,1) 
select dbo.DateFromParts(2014,9,1)    
select dbo.DateFromParts(14,9,1)    
select dateadd(day,36,getdate())    
select datediff(day,dateadd(day,-5,getdate()),getdate())  
   
select * from dlemp
sp_helptext  
SELECT  cast(cast((2014*10000 + 9*100 + 1)as varchar(8) ) as datetime) 
SELECT (20140901)
SELECT  cast('20140901' as datetime) 
*/



GO
/****** Object:  UserDefinedFunction [dbo].[fConsulta_Listado_Cuotas]    Script Date: 10-Jan-23 1:59:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[fConsulta_Listado_Cuotas](
	@id_proceso int
)
returns @ListadoCuotas table (
	id int,	
	dlncc varchar(50),
	cuscun varchar(18),
	dlefp varchar(8),
	codigo_proceso varchar(255)
)
as
begin 
	insert into @ListadoCuotas
	select id, dlncc, convert(varchar(18), cuscun) as cuscun, dlefp, codigo_proceso 
				from em_listadoCuotas where id_proceso = @id_proceso
	return
end 

/*
	drop function fConsulta_Listado_Cuotas
*/

/*
	PRUEBAS UNITARIAS
	*****************
select id,dlncc,cuscun,dlefp,codigo_proceso from dbo.fConsulta_Listado_Cuotas(1)
*/
GO
/****** Object:  UserDefinedFunction [dbo].[fn_ObtenerCorreoCoordinadoresxCliente]    Script Date: 10-Jan-23 1:59:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*            
Autor: Noel Callapiña  
Fecha: 16/07/2014         
Motivo: EA 273-Mejoras convenios            
Descripcion: Funcion que obtiene correos concatenados de los coordinadores de un cliente
*/  

CREATE function [dbo].[fn_ObtenerCorreoCoordinadoresxCliente] (
	@codigo_cliente numeric(9,0)
)
returns varchar(1000)
as
begin
declare @ret as varchar(1000)

SELECT @ret= COALESCE(@ret + ';', '') + isnull(email_coordinador,'') 
	FROM coordinador_cliente 
	where codigo_cliente = @codigo_cliente and estado_coordinador = 1 
		and (email_coordinador is not null and rtrim(ltrim(email_coordinador))<>'')

if @ret is null 
	set @ret = ''

return @ret

end

/*
	PRUEBAS UNITARIAS
	*****************
	/*
	drop function fn_ObtenerCorreoCoordinadoresxCliente
	*/
	select dbo.fn_ObtenerCorreoCoordinadoresxCliente(190828602)
	select dbo.fn_ObtenerCorreoCoordinadoresxCliente(1)
*/
GO
/****** Object:  UserDefinedFunction [dbo].[fObtenerFuncionario]    Script Date: 10-Jan-23 1:59:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[fObtenerFuncionario] (
@codigo_cliente numeric(9,0) 
) 
returns @funcionario table  (
				nombre_funcionario varchar(200),
				email_funcionario varchar(100),
				telefono_funcionario varchar(50)
			)
as
begin
	insert into  @funcionario
	select  f.nombre_funcionario,f.email_funcionario, f.telefono_funcionario  
	  from cliente c inner join funcionario_convenios f on  
	 c.id_funcionario=f.id_funcionario  
	 and c.codigo_cliente=@codigo_cliente  
return 
end 

/*
	drop function fObtenerFuncionario
*/
/*
	PRUEBAS UNITARIAS
*/
/*
select nombre_funcionario,email_funcionario, telefono_funcionario from fObtenerFuncionario(190827919)
*/
GO
/****** Object:  UserDefinedFunction [dbo].[getUserId]    Script Date: 10-Jan-23 1:59:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[getUserId] (@UserId as varchar(100))
RETURNS varchar(100)
AS
BEGIN

	DECLARE @user as nvarchar(100)
	DECLARE @B AS BIT
	SET @B  = 0 
	if (select CHARINDEX (  '\', @UserId))>0
	begin
		set @user = SUBSTRING ( @UserId, CHARINDEX (  '\', @UserId) + 1, LEN(@UserId))	
	end
	else
	begin
		set @user = @UserId
	end

RETURN @user
END

GO
/****** Object:  UserDefinedFunction [dbo].[lpad]    Script Date: 10-Jan-23 1:59:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[lpad] (
	@cadena_a_replicar	varchar(1),
	@cadena				varchar(1000),
	@nro_veces			int
)
returns  varchar(1000)
as
begin
	declare @retorno as varchar(1000)

	if @nro_veces is null or @nro_veces = 0
	begin 
		set @retorno = @cadena
	end
	else
	begin
		select @retorno = right((replicate(@cadena_a_replicar,@nro_veces) + @cadena), @nro_veces)
	end
	return @retorno
end

/*
drop function dbo.lpad
*/


/*
	PRUEBAS UNITARIAS
	*****************
*/

/*
Select dbo.lpad('0','8',2)
Select dbo.lpad(' ','8',2)
Select dbo.lpad('0','8',null)

*/
GO
/****** Object:  UserDefinedFunction [dbo].[uf_CorregirFecha]    Script Date: 10-Jan-23 1:59:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------    
--Nombre: [uf_CorregirFecha]    
--Objetivo: corrige una fecha dada.
--Creacion: NCA 08/01/2018 INCIDENTE: 45616
--Modificacion: 
--------------------------------------------------------------------    
create function [dbo].[uf_CorregirFecha](      
 @strfecha varchar(20)
)      
returns varchar(20)
as      
begin      

--1. DECLARACION E INICIALIZACION      
 declare @strfechaCorregida as varchar(20) = @strfecha
 declare @dia varchar(2), @mes varchar(2), @anio varchar(4)
 
 select @dia = dbo.uf_ObtenerSplit(@strfecha,'/',1), @mes = dbo.uf_ObtenerSplit(@strfecha,'/',2), @anio = dbo.uf_ObtenerSplit(@strfecha,'/',3)

--2. CORRECCION DE DATOS (DIA)
 select @dia = case when @mes = 2 or @mes = 4 or @mes = 6 or @mes = 9 or @mes = 11 then 
				case when (@dia = 31) and (@mes <> 2) then 30
					 when ((@dia = 31) or (@dia = 30) or (@dia = 29)) and (@mes = 2) then 
						case when (dbo.uf_esBisiesto(@anio) = 1) then 29 else 28 end
					 else @dia
				end	
				else @dia
			   end
      
      
 select @strfechaCorregida = dbo.uf_lpad(@dia,2,'0')+'/'+dbo.uf_lpad(@mes,2,'0')+'/'+dbo.uf_lpad(@anio,4,'0')
-- RETORNO      
 return @strfechaCorregida      
end       
/*
PRUEBAS UNITARIAS      
*****************      
/* febrero anio normal */      
select dbo.uf_CorregirFecha('29/02/2018')
select dbo.uf_CorregirFecha('30/02/2018')
select dbo.uf_CorregirFecha('31/02/2018')
/* febrero anio bisiesto */
select dbo.uf_CorregirFecha('29/02/2020')
select dbo.uf_CorregirFecha('30/02/2020')
select dbo.uf_CorregirFecha('31/02/2020')
/* diferente febrero anio normal */
select dbo.uf_CorregirFecha('31/04/2018')
select dbo.uf_CorregirFecha('31/06/2018')
select dbo.uf_CorregirFecha('31/09/2018')
select dbo.uf_CorregirFecha('31/11/2018')
/* otros dias */
select dbo.uf_CorregirFecha('15/11/2018')
     
*/
GO
/****** Object:  UserDefinedFunction [dbo].[uf_esBisiesto]    Script Date: 10-Jan-23 1:59:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------    
--Nombre: [uf_esBisiesto]    
--Objetivo: indica si el año es bisiesto
--Creacion: NCA 08/01/2018 INCIDENTE: 45616
--Modificacion: 
--------------------------------------------------------------------  
CREATE FUNCTION [dbo].[uf_esBisiesto](
 @anio varchar(4)
) RETURNS BIT 
AS
BEGIN

 DECLARE @esBisiesto BIT
 
 IF @anio % 4 = 0 AND (@anio % 100 <> 0 OR @anio % 400 = 0)
 BEGIN
  SET @esBisiesto = 1
 END
 ELSE
 BEGIN
  SET @esBisiesto = 0
 END 

 RETURN @esBisiesto
END
/*
Prueba Unitaria
*/
/*
select dbo.uf_esBisiesto('2018')
*/

GO
/****** Object:  UserDefinedFunction [dbo].[uf_GetErrorInfo]    Script Date: 10-Jan-23 1:59:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[uf_GetErrorInfo]()
	returns varchar(4000)
as 
begin
	declare @retorno as varchar(4000)

	SELECT	@retorno = 'SQL ERROR=> ' +  
        'NRO: ' + convert(varchar(50), ERROR_NUMBER()) + ', ' + 
        'SEV: ' + convert(varchar(50), ERROR_SEVERITY()) + ', ' + 
        'ST: ' + convert(varchar(50), ERROR_STATE()) + ', ' + 
        'PROC: ' + convert(varchar(400), ERROR_PROCEDURE()) + ', ' + 
        'LINE: ' + convert(varchar(50), ERROR_LINE()) + ', ' + 
        'MSG: ' + convert(varchar(4000), ERROR_MESSAGE())

	return @retorno
end

/*
	drop function uf_GetErrorInfo
*/
/*
	PRUEBAS UNITARIAS
	*****************
*/
/*
create procedure A
as 
begin try
declare @a as int
	set @a = 1/0
end try
begin catch
	print dbo.uf_GetErrorInfo()
end catch

exec A 

drop procedure A
*/
GO
/****** Object:  UserDefinedFunction [dbo].[uf_lpad]    Script Date: 10-Jan-23 1:59:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------    
--Nombre: [uf_esBisiesto]    
--Objetivo: indica si el año es bisiesto
--Creacion: NCA 08/01/2018 INCIDENTE: 45616
--Modificacion: 
--------------------------------------------------------------------  
CREATE FUNCTION [dbo].[uf_lpad]
(
    @string VARCHAR(MAX), -- Initial string
    @length INT,          -- Size of final string
    @pad CHAR             -- Pad character
)
RETURNS VARCHAR(MAX)
AS
BEGIN
    RETURN REPLICATE(@pad, @length - LEN(@string)) + @string;
END

GO
/****** Object:  UserDefinedFunction [dbo].[uf_ObtenerCodigoBanco_x_Ruc]    Script Date: 10-Jan-23 1:59:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/***********************************************************************************************
Nombre:		uf_ObtenerCodigoBanco_x_Ruc
Objetivo:	Obtener código de banco x Ruc 
Creador:	08/11/2016 NCA TI-EA2016-10682_Creación de nuevo formato de reporte.
***********************************************************************************************/  
Create function [dbo].[uf_ObtenerCodigoBanco_x_Ruc](
	@NumeroDocumento nvarchar(12)
)
returns varchar(4)
as
begin
/*
	Declaración Variables		
*/
	declare @CODIGOBANCO varchar(4)

/*
	Principal
*/
	
SELECT  @CODIGOBANCO   = CASE WHEN @NumeroDocumento = '20218911189' THEN -- DIRECCION REGIONAL DE SALUD      
     '2024'--'2272'      
    WHEN  @NumeroDocumento = '20221373449' THEN -- UTES 03 CHEPEN      
     '2028'      
    WHEN  @NumeroDocumento = '20223966684' THEN -- UTES 4      
     '2024'      
    WHEN  @NumeroDocumento = '20222308080' THEN -- UTES 5      
     '2024'      
    WHEN  @NumeroDocumento = '20228257479' THEN -- HOSPITAL BELEN DE TRUJILLO      
     '2024'--'2211'      
    WHEN  @NumeroDocumento = '20223149635' THEN -- HOSPITAL REGIONAL      
     '2180'--'2023'      
    WHEN  @NumeroDocumento = '20396835801' THEN -- UTES 6      
     '2024'      
    WHEN  @NumeroDocumento = '20354537096' THEN -- UTES 8      
     '2024'      
/* ADD NCA 08/11/2016 TI-EA2016-10682 */
    WHEN  @NumeroDocumento = '20131379863' THEN -- BIBLIOTECA NACIONAL      
     'XXX'      
/* FIN */
    ELSE      
     'BIF'       
    END

/*
	Salida
*/

return @CODIGOBANCO

end


/*
	Pruebas Unitarias
*/

/*
	select dbo.uf_ObtenerCodigoBanco_x_Ruc('20131379863')
	select dbo.uf_ObtenerCodigoBanco_x_Ruc('20354537096')

*/

GO
/****** Object:  UserDefinedFunction [dbo].[uf_ObtenerDescripcionMes]    Script Date: 10-Jan-23 1:59:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[uf_ObtenerDescripcionMes] (
	@nro_mes int
)
returns varchar(10)
as
begin
	return (select case @nro_mes when 1 then 'Enero'  
				when 1 then 'Enero'  
				when 2 then 'Febrero'  
				when 3 then 'Marzo'  
				when 4 then 'Abril'  
				when 5 then 'Mayo'
				when 6 then 'Junio'  
				when 7 then 'Julio'  
				when 8 then 'Agosto'  
				when 9 then 'Septiembre'  
				when 10 then 'Octubre'  
				when 11 then 'Noviembre'  
				when 12 then 'Diciembre'  
				else 'Undefined'			
			end)
end
/*
drop function dbo.uf_ObtenerDescripcionMes
*/
/*
	PRUEBAS UNITARIAS
	*****************
select dbo.uf_ObtenerDescripcionMes(12)
*/
GO
/****** Object:  UserDefinedFunction [dbo].[uf_ObtenerFechaPagoEmpresa]    Script Date: 10-Jan-23 1:59:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[uf_ObtenerFechaPagoEmpresa](
	@codigo_ibs decimal(9,0),
	@fecha_actual datetime
)
returns datetime
as
begin

	declare @fecha as datetime

	SELECT top 1 @fecha = cast(rtrim(year(@fecha_actual)*10000 + month(@fecha_actual)*100+dldpg) as datetime) FROM dlcre WHERE dlccc = @codigo_ibs

	if datediff(day,@fecha_actual,@fecha) <= 0
	begin
		select @fecha = dateadd(month,1,@fecha)
	end

	return @fecha
end 
/*
drop function uf_ObtenerFechaPagoEmpresa
*/
/*
PRUEBAS UNITARIAS
*****************

select dbo.uf_ObtenerFechaPagoEmpresa(233317,dateadd(day,36,getdate()))
select dateadd(day,36,getdate())

*/
GO
/****** Object:  UserDefinedFunction [dbo].[uf_ObtenerFechaPagoxDia]    Script Date: 10-Jan-23 1:59:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create function [dbo].[uf_ObtenerFechaPagoxDia](    
 @dia int,
 @fecha_actual datetime    
)    
returns datetime    
as    
begin    
    
 declare @fecha as datetime    
    
 SELECT @fecha = cast(rtrim(year(@fecha_actual)*10000 + month(@fecha_actual)*100+@dia) as datetime) 
    
 if datediff(day,@fecha_actual,@fecha) <= 0    
 begin    
  select @fecha = dateadd(month,1,@fecha)    
 end    
    
 return @fecha    
end     
/*    
drop function uf_ObtenerFechaPagoxDia    
*/    
/*    
PRUEBAS UNITARIAS    
*****************    
    
select dbo.uf_ObtenerFechaPagoxDia(5,dateadd(day,0,getdate()))    
select dateadd(day,36,getdate())    
select datediff(day,dateadd(day,-5,getdate()),getdate())  
    
*/
GO
/****** Object:  UserDefinedFunction [dbo].[uf_ObtenerSplit]    Script Date: 10-Jan-23 1:59:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--------------------------------------------------------------------    
--Nombre: [uf_ObtenerSplit]    
--Objetivo: corrige una fecha dada.
--Creacion: NCA 08/01/2018 INCIDENTE: 45616
--Modificacion: 
--------------------------------------------------------------------  
CREATE FUNCTION [dbo].[uf_ObtenerSplit]( @stringToSplit VARCHAR(MAX), @simbolo char(1), @posicion int)
RETURNS VARCHAR(255)
AS
BEGIN

 DECLARE @name VARCHAR(255)
 DECLARE @pos INT, @count int = 0

 WHILE (CHARINDEX(@simbolo, @stringToSplit) > 0) and (@posicion > @count)
 BEGIN
  SELECT @pos  = CHARINDEX(@simbolo, @stringToSplit)  
  SELECT @name = SUBSTRING(@stringToSplit, 1, @pos-1)
  SELECT @stringToSplit = SUBSTRING(@stringToSplit, @pos+1, LEN(@stringToSplit)-@pos)
  SELECT @count = @count+1

 END
 
 if @count <> @posicion
	set @name = @stringToSplit

 RETURN @name
END

/*
Prueba Unitaria
*/
/*
select dbo.uf_ObtenerSplit('09/02/2018','/',1)
select dbo.uf_ObtenerSplit('09/02/2018','/',2)
select dbo.uf_ObtenerSplit('09/02/2018','/',3)
*/


GO
/****** Object:  UserDefinedFunction [dbo].[uf_ObtenerTipoTrabajadorDescripcion]    Script Date: 10-Jan-23 1:59:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/***********************************************************************************************
Nombre:		uf_ObtenerCodigoBanco_x_Ruc
Objetivo:	Obtener código de banco x Ruc 
Creador:	08/11/2016 NCA TI-EA2016-10682_Creación de nuevo formato de reporte.
***********************************************************************************************/  
Create function [dbo].[uf_ObtenerTipoTrabajadorDescripcion](
	@TipoTrabajador varchar(2)
)
returns varchar(20)
as
begin
/*
	Declaración Variables		
*/
	declare @retorno varchar(20)

/*
	Principal
*/
	
SELECT  @retorno   = CASE WHEN @TipoTrabajador = 'A' THEN 'ACTIVOS'
						  WHEN @TipoTrabajador = 'C' THEN 'PENSIONISTAS'
						  WHEN @TipoTrabajador = 'J' THEN 'CAS'
					ELSE      
						' '       
					END

/*
	Salida
*/

return @retorno

end


/*
	Pruebas Unitarias
*/

/*
	select dbo.uf_ObtenerTipoTrabajadorDescripcion('A')
	select dbo.uf_ObtenerTipoTrabajadorDescripcion('C')
	select dbo.uf_ObtenerTipoTrabajadorDescripcion('J')
	select dbo.uf_ObtenerTipoTrabajadorDescripcion(' ')
	select dbo.uf_ObtenerTipoTrabajadorDescripcion(null)
*/


GO
/****** Object:  UserDefinedFunction [dbo].[fnGetCuotaMesActualizada]    Script Date: 10-Jan-23 1:59:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fnGetCuotaMesActualizada] (
@Anio_periodo  char ( 4 ) ,
@Mes_Periodo  char ( 2),
@DLCUN	 decimal,
@DLNP  decimal) RETURNS  table 
AS

        return (SELECT 
		SUM(r.DLIMC - r.DLIPC + r.DLITF) AS DLEIC /*@codigo_proceso AS Codigo_proceso, e.DLCCC AS DLECC, e.DLAÑO AS DLEAN, e.DLAGC AS DLEAG, e.DLCOC AS DLECO, 
		e.DLCCY AS DLEMO, e.DLACC AS DLENP, e.DLCEM AS DLECM, e.DLNCL AS DLENE, e.DLAPP AS DLEPA, e.DLAPM AS DLEMA, 
		Rtrim(DLPRN) + ' ' + RTRIM(DLSGN) AS DLEMN, 
		CASE WHEN RTRIM(CAST(DLCCR AS char(8)) + DLPLA + DLCUS) = '0' THEN '' ELSE CAST(SUBSTRING(rtrim(DLCUS) 
                              + '0000', 1, 4)  + DLPLA + CAST(DLCCR AS char(8))  AS char(20)) END AS DLECR, 2000 + c.DLVCA AS DLEAP, 
                              c.DLVCM AS DLEMP, SUM(r.DLIMC - r.DLIPC + r.DLITF) AS DLEIC, e.DLSTS AS DLEST, CAST(YEAR(getdate()) AS char(4)) 
                              + CASE len(rtrim(CAST(MONTH(getdate()) AS char(2)))) WHEN 1 THEN '0' + RTRIM(CAST(MONTH(getdate()) 
                              AS char(2))) WHEN 2 THEN SUBSTRING('00' + CAST(MONTH(getdate()) AS char(2)), 3, 2) 
                              END + CASE len(rtrim(CAST(DAY(getdate()) AS char(2)))) WHEN 1 THEN '0' + RTRIM(CAST(DAY(getdate()) 
                              AS char(2))) WHEN 2 THEN SUBSTRING('00' + CAST(DAY(getdate()) AS char(2)), 3, 2) END AS DLEFP, 
                              CASE WHEN COUNT(1) > 1 THEN 1 ELSE 0 END DLESD, e.DLFLI, COUNT(1) AS NUMCUOTAS*/
        FROM         DLCRE e INNER JOIN
                              DLCCRDiario r ON e.DLACC = r.DLACC INNER JOIN
                              DLCCRDiario c ON e.DLACC = c.DLACC AND c.DLSTS = ''
                              --INNER JOIN DLEMP D ON (D.DLECUN = E.DLCCC AND D .DLEAEN = c.DLVCA AND D.DLEMEN >= c.DLVCM)
         WHERE  e.DLACC = @DLNP AND  (rtrim(r.DLSTS) = '') 
         AND CAST (2000 + R.DLVCA AS char (4)) 
         + 
         CASE WHEN len(rtrim(CAST(R.DLVCM AS char (2) ))) = 1 THEN 
         	'0' + RTRIM(CAST(R.DLVCM AS char ( 2 )))
         ELSE
        	rtrim(CAST ( R.DLVCM AS char ( 2 ) ))
         END <=@Anio_periodo +  
		case when len ( rtrim ( @Mes_Periodo )  )  = 1 then 
			'0' + rtrim(@Mes_Periodo) 
		else @Mes_Periodo 
		end 
        GROUP BY e.DLCCC, e.DLAÑO, e.DLAGC, e.DLCOC, e.DLCCY, e.DLACC, e.DLCEM, e.DLNCL, e.DLAPP, e.DLAPM, e.DLPRN, e.DLSGN, e.DLCCR, e.DLPLA, 
                              e.DLCUS, c.DLNCT, c.DLVCA, c.DLVCM, c.DLVCD, e.DLSTS, e.DLFLI
         HAVING      (c.DLNCT = MAX(r.DLNCT)) AND e.DLCCC = @DLCUN AND 2000 + c.DLVCA <= @Anio_periodo AND c.DLVCM <= @Mes_Periodo 
         AND CAST ( 2000+c.DLVCA  AS char ( 4 ) ) 
         + 
         CASE WHEN len(rtrim(CAST ( c.DLVCM AS char ( 2 ) ))) = 1 THEN
         	'0' + RTRIM(CAST ( c.DLVCM AS char ( 2 ) ))
         ELSE
         	rtrim(CAST ( c.DLVCM AS char ( 2 ) ))
         END <=@Anio_periodo +  
		case when len ( rtrim ( @Mes_Periodo )  )  = 1 then 
			'0' + rtrim(@Mes_Periodo) 
		else @Mes_Periodo 
		end 
	)
	



GO
