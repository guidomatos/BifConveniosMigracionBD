USE [bifconvenio]
GO
/****** Object:  View [dbo].[vw_DeudaEnvioMasivo]    Script Date: 10-Jan-23 12:28:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*          
Autor: Noel Callapiña
Fecha: 16/07/2014       
Motivo: EA 273-Mejoras convenios          
Descripcion: Vista que obtiene la deuda de los trabajadores de una empresa ( convenio )
*/ 
create view [dbo].[vw_DeudaEnvioMasivo]
as
SELECT 
	DLCCR.DLACC, 
	DLCCR.DLCCY, 
	DLCCR.DLVCA, 
	DLCCR.DLVCM, 
	DLCCR.DLVCD, 
	(DLCCR.DLNCT - (SELECT COUNT(1) FROM DLPMT WHERE DLPACC = DLCCR.DLACC AND DLPPNU = 999)) AS DLNCT, 
	DLCCR.DLIMC, 
	DLCCR.DLIPC, 
	DLCCR.DLITF, 
	DLCCR.DLSTS,
	CAST ( 2000+DLVCA  AS CHARACTER ( 4 ) )  +  
		CASE WHEN LEN(RTRIM(CAST ( DLVCM AS CHARACTER ( 2 ) ))) = 1 THEN  	'0' + RTRIM(CAST ( DLVCM AS CHARACTER ( 2 ) ))  
			ELSE RTRIM(CAST ( DLVCM AS CHARACTER ( 2 ) )) END AS DLVCAM,
	DLCRE.DLCCC
FROM DLCCR 
	INNER JOIN  DLCRE ON DLCCR.DLACC = DLCRE.DLACC
WHERE DLCCR.DLSTS = ''


/*
	PRUEBA UNITARIA
	***************
drop view vw_DeudaEnvioMasivo

select * from vw_DeudaEnvioMasivo
*/


GO
/****** Object:  View [dbo].[VW_EstadoTrabajador]    Script Date: 10-Jan-23 12:28:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_EstadoTrabajador]
AS
	SELECT TOP 100 PERCENT codigoFlag, nombreCortoFlag, precedenciaFlag
	from flag WHERE nombreTabla = 'ClienteCuota' AND nombreColumna = 'DLST'
	ORDER BY precedenciaFlag

GO
/****** Object:  View [dbo].[vw_PagaresEnvioMasivo]    Script Date: 10-Jan-23 12:28:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*          
Autor: Noel Callapiña
Fecha: 16/07/2014       
Motivo: EA 273-Mejoras convenios          
Descripcion: Vista que obtiene el listado de pagares de los convenios.
*/ 
create view [dbo].[vw_PagaresEnvioMasivo]
as
SELECT 
e.DLCCC AS DLECC, e.DLAÑO AS DLEAN, e.DLAGC AS DLEAG, e.DLCOC AS DLECO, 
e.DLCCY AS DLEMO, e.DLACC AS DLENP, e.DLCEM AS DLECM, 
e.DLNCL AS DLENE, e.DLAPP AS DLEPA, e.DLAPM AS DLEMA, rtrim(DLPRN) + ' ' + rtrim(DLSGN) AS DLEMN, 
CASE WHEN rtrim(CAST(DLCCR AS CHARACTER(8)) + 
	DLPLA + DLCUS) = '0' THEN '' ELSE CAST(SUBSTRING(rtrim(DLCUS) 
	+ '0000', 1, 4)  + DLPLA + 
	CAST(DLCCR AS CHARACTER(8))  AS CHARACTER(20)) END AS DLECR, 
	2000 + c.DLVCA AS DLEAP, 
c.DLVCM AS DLEMP, 
/*
SUM(r.DLIMC - r.DLIPC + r.DLITF) AS DLEIC, 
*/
e.DLSTS AS DLEST, 
CAST(YEAR(getdate()) AS CHARACTER(4)) 
+ CASE len(rtrim(CAST(MONTH(getdate()) AS CHARACTER(2)))) WHEN 1 THEN '0' + rtrim(CAST(MONTH(getdate()) 
AS CHARACTER(2))) WHEN 2 THEN SUBSTRING('00' + CAST(MONTH(getdate()) AS CHARACTER(2)), 3, 2) 
END + CASE len(rtrim(CAST(DAY(getdate()) AS CHARACTER(2)))) WHEN 1 THEN '0' + rtrim(CAST(DAY(getdate()) 
AS CHARACTER(2))) WHEN 2 THEN SUBSTRING('00' + CAST(DAY(getdate()) AS CHARACTER(2)), 3, 2) END AS DLEFP, 
/*
CASE WHEN COUNT(1) > 1 THEN 1 ELSE 0 END DLESD, 
*/
e.DLFLI, 
/*
COUNT(1) AS NUMCUOTAS,
*/
CAST (2000 + R.DLVCA AS CHARACTER (4))  +  
		CASE WHEN len(rtrim(CAST(R.DLVCM AS CHARACTER (2) ))) = 1 THEN  	'0' + rtrim(CAST(R.DLVCM AS CHARACTER ( 2 ))) 
			 ELSE	rtrim(CAST ( R.DLVCM AS CHARACTER ( 2 ) )) END as rDLVCAM,
c.DLNCT as cDLNCT,
r.DLNCT as rDLNCT,
CAST ( 2000+c.DLVCA  AS CHARACTER ( 4 ) )  +  
				 CASE WHEN len(rtrim(CAST ( c.DLVCM AS CHARACTER ( 2 ) ))) = 1 THEN 	'0' + rtrim(CAST ( c.DLVCM AS CHARACTER ( 2 ) )) 
					  ELSE 	rtrim(CAST ( c.DLVCM AS CHARACTER ( 2 ) )) END as cDLVCAM,
c.DLVCD AS cDLVCD,
r.DLIMC,
r.DLIPC,
r.DLITF
FROM  DLCRE e INNER JOIN
      DLCCR r ON e.DLACC = r.DLACC INNER JOIN
      DLCCR c ON e.DLACC = c.DLACC AND c.DLSTS = ''
      INNER JOIN DLEMP D ON (D.DLECUN = E.DLCCC 
		/* AND
		(CAST (2000 + R.DLVCA AS CHARACTER (4))  + 
			CASE WHEN len(rtrim(CAST(R.DLVCM AS CHARACTER (2) ))) = 1 THEN   '0' + rtrim(CAST(R.DLVCM AS CHARACTER ( 2 ))) 
				 ELSE   rtrim(CAST ( R.DLVCM AS CHARACTER ( 2 ) )) END <='201408')
		*/
	  )
 WHERE     (rtrim(r.DLSTS) = '')  
	/* AND 
 	CAST (2000 + R.DLVCA AS CHARACTER (4))  +  
		CASE WHEN len(rtrim(CAST(R.DLVCM AS CHARACTER (2) ))) = 1 THEN  	'0' + rtrim(CAST(R.DLVCM AS CHARACTER ( 2 ))) 
			 ELSE	rtrim(CAST ( R.DLVCM AS CHARACTER ( 2 ) )) END <='201408'
	*/
/*
 GROUP BY e.DLCCC, e.DLAÑO, e.DLAGC, e.DLCOC, e.DLCCY, e.DLACC, e.DLCEM, e.DLNCL, 
		  e.DLAPP, e.DLAPM, e.DLPRN, e.DLSGN, e.DLCCR, e.DLPLA, 
          e.DLCUS, c.DLNCT, c.DLVCA, c.DLVCM, c.DLVCD, e.DLSTS, e.DLFLI,
		  R.DLVCA, R.DLVCM
 HAVING   (c.DLNCT = MAX(r.DLNCT)) AND 
		  e.DLCCC = 363946 AND 
		  CAST ( 2000+c.DLVCA  AS CHARACTER ( 4 ) )  +  
				 CASE WHEN len(rtrim(CAST ( c.DLVCM AS CHARACTER ( 2 ) ))) = 1 THEN 	'0' + rtrim(CAST ( c.DLVCM AS CHARACTER ( 2 ) )) 
					  ELSE 	rtrim(CAST ( c.DLVCM AS CHARACTER ( 2 ) )) END <='201408'
*/



/*
	drop view vw_PagaresEnvioMasivo
	sp_help dlcre
*/

/*
	PRUEBAS UNITARIAS
	*****************

	select * from vw_PagaresEnvioMasivo

*/
GO
/****** Object:  View [dbo].[VW_STATUSTRABAJADOR]    Script Date: 10-Jan-23 12:28:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_STATUSTRABAJADOR]
AS
	SELECT top 100 percent IdStatus = [id], 
		NombreStatus = [NombreCorto]
	FROM [Generica]
	where tabla = 'STATUSTRABAJADOR'
	order by [Orden] 

GO
