USE [bifconvenio]
GO
/****** Object:  Table [dbo].[Acceso]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Acceso](
	[UserId] [varchar](100) NOT NULL,
	[idPaginaRestringida] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Acceso] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[idPaginaRestringida] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 10) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AccesoSeguridad]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AccesoSeguridad](
	[iCodAcceso] [int] IDENTITY(1,1) NOT NULL,
	[vUserId] [varchar](50) NOT NULL,
	[vNombreUser] [varchar](50) NOT NULL,
	[iEstado] [int] NOT NULL,
	[iCodPerfil] [int] NOT NULL,
	[vUsuarioCreacion] [varchar](50) NULL,
	[dFechaCreacion] [datetime] NULL,
	[vUsuarioModificacion] [varchar](50) NULL,
	[dFechaModificacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[iCodAcceso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AHSP_20100104]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AHSP_20100104](
	[pagare] [float] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AlertaCliente]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AlertaCliente](
	[iAlertaClienteId] [int] IDENTITY(1,1) NOT NULL,
	[iAlertaId] [int] NOT NULL,
	[iClienteId] [int] NOT NULL,
	[iDiasAntes] [int] NOT NULL,
	[iDiasDespues] [int] NOT NULL,
	[iAdjunto] [int] NOT NULL,
	[iEstado] [int] NOT NULL,
	[vUsuarioCreacion] [varchar](50) NOT NULL,
	[dFechaCreacion] [datetime] NOT NULL,
	[vUsuarioModificacion] [varchar](50) NULL,
	[dFechaModificacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[iAlertaClienteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Alertas]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Alertas](
	[iAlertaId] [int] IDENTITY(1,1) NOT NULL,
	[iTipoAlerta] [int] NOT NULL,
	[vNombreAlerta] [varchar](250) NOT NULL,
	[vDescripcionAlerta] [varchar](500) NULL,
	[vAsuntoMensaje] [varchar](1000) NOT NULL,
	[vCuerpoMensaje] [varchar](5000) NOT NULL,
	[iEstadoAlerta] [int] NOT NULL,
	[vUsuarioCreacion] [varchar](50) NOT NULL,
	[dFechaCreacion] [datetime] NOT NULL,
	[vUsuarioModificacion] [varchar](50) NULL,
	[dFechaModificacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[iAlertaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ArchivoConvenios]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ArchivoConvenios](
	[iArchivoConvenioId] [int] IDENTITY(1,1) NOT NULL,
	[vCodProceso] [varchar](100) NOT NULL,
	[vNombreArchivo] [varchar](100) NOT NULL,
	[vRutaCreacion] [varchar](200) NOT NULL,
	[vRutaModificacion] [varchar](200) NULL,
	[vRutaHistorico] [varchar](200) NULL,
	[iEstado] [int] NOT NULL,
	[vUsuarioCreacion] [varchar](50) NOT NULL,
	[dFechaCreacion] [datetime] NOT NULL,
	[vUsuarioModificacion] [varchar](50) NULL,
	[dFechaModificacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[iArchivoConvenioId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ArchivoDescuentos]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ArchivoDescuentos](
	[CodigoBanco] [varchar](255) NULL,
	[Moneda] [varchar](255) NULL,
	[NumeroPagare] [varchar](255) NULL,
	[CodigoModular] [varchar](255) NULL,
	[NombreTrabajador] [varchar](255) NULL,
	[CodigoReferencia] [varchar](255) NULL,
	[Anio] [varchar](255) NULL,
	[Mes] [varchar](255) NULL,
	[Cuota] [varchar](255) NULL,
	[SituacionLaboral] [varchar](255) NULL,
	[MontoDescuento] [varchar](255) NULL,
	[Estado] [char](2) NULL,
	[Codigo_proceso] [uniqueidentifier] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ArchivoDescuentos$]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArchivoDescuentos$](
	[CodigoBanco] [nvarchar](255) NULL,
	[Moneda] [nvarchar](255) NULL,
	[NumeroPagare] [nvarchar](255) NULL,
	[CodigoModular] [nvarchar](255) NULL,
	[NombreTrabajador] [nvarchar](255) NULL,
	[CodigoReferencia] [nvarchar](255) NULL,
	[Anio] [nvarchar](255) NULL,
	[Mes] [nvarchar](255) NULL,
	[Cuota] [nvarchar](255) NULL,
	[SituacionLaboral] [nvarchar](255) NULL,
	[MontoDescuento] [nvarchar](255) NULL,
	[Estado] [nvarchar](255) NULL,
	[Codigo_proceso] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ArchivoDescuentos_tmp]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ArchivoDescuentos_tmp](
	[CodigoBanco] [varchar](255) NULL,
	[Moneda] [varchar](255) NULL,
	[NumeroPagare] [varchar](255) NULL,
	[CodigoModular] [varchar](255) NULL,
	[NombreTrabajador] [varchar](255) NULL,
	[CodigoReferencia] [varchar](255) NULL,
	[Anio] [varchar](255) NULL,
	[Mes] [varchar](255) NULL,
	[Cuota] [varchar](255) NULL,
	[SituacionLaboral] [varchar](255) NULL,
	[MontoDescuento] [varchar](255) NULL,
	[Estado] [char](2) NULL,
	[Codigo_proceso] [uniqueidentifier] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ArchivoDescuentosHist]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ArchivoDescuentosHist](
	[Fecha] [datetime] NULL,
	[CodigoBanco] [varchar](255) NULL,
	[Moneda] [varchar](255) NULL,
	[NumeroPagare] [varchar](255) NULL,
	[CodigoModular] [varchar](255) NULL,
	[NombreTrabajador] [varchar](255) NULL,
	[CodigoReferencia] [varchar](255) NULL,
	[Anio] [varchar](255) NULL,
	[Mes] [varchar](255) NULL,
	[Cuota] [varchar](255) NULL,
	[SituacionLaboral] [varchar](255) NULL,
	[MontoDescuento] [varchar](255) NULL,
	[Estado] [char](2) NULL,
	[Codigo_proceso] [uniqueidentifier] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[aviso]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[aviso](
	[id_aviso] [smallint] NULL,
	[descripcion_aviso] [varchar](250) NULL,
	[dias_antes_vencimiento_cuota] [tinyint] NULL,
	[dias_despues_vencimiento_cuota] [tinyint] NULL,
	[asunto_mensaje] [varchar](250) NULL,
	[cuerpo_mensaje] [varchar](2500) NULL,
	[ind_archivo_adjunto] [char](1) NULL,
	[estado_aviso] [bit] NULL,
	[usuario_creacion] [varchar](30) NULL,
	[fecha_creacion] [datetime] NULL,
	[usuario_modificacion] [varchar](30) NULL,
	[fecha_modificacion] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CARGOSICA20070813]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CARGOSICA20070813](
	[DLACC] [float] NULL,
	[DLID] [float] NULL,
	[NUMCUOTAS] [float] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cliente](
	[Codigo_Cliente] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[Nombre_Cliente] [nvarchar](100) NOT NULL,
	[FormatoArchivo] [varchar](10) NULL,
	[TipoFormatoArchivo] [varchar](4) NULL,
	[Codigo_Referencia] [varchar](12) NULL,
	[TipoDocumento] [varchar](2) NULL,
	[NumeroDocumento] [varchar](12) NULL,
	[CorreoElectronico] [varchar](200) NULL,
	[UsuarioCreacion] [varchar](100) NULL,
	[FormatoArchivoImportacion] [varchar](20) NULL,
	[telefono_1] [varchar](11) NULL,
	[telefono_2] [varchar](11) NULL,
	[telefono_3] [varchar](11) NULL,
	[telefono_4] [varchar](11) NULL,
	[dia_envio_planilla] [char](2) NULL,
	[dia_cierre_planilla] [char](2) NULL,
	[meses_anticipacion_envio_listado] [char](2) NULL,
	[dia_corte] [char](2) NULL,
	[id_funcionario] [int] NULL,
	[codigo_IBS] [int] NULL,
	[codigo_institucion] [varchar](10) NULL,
	[ind_envio_automatico_listado] [char](1) NULL,
	[usuario_creacion] [varchar](30) NULL,
	[fecha_creacion] [datetime] NULL,
	[usuario_modificacion] [varchar](30) NULL,
	[fecha_modificacion] [datetime] NULL,
	[Codigo_Oficina] [int] NULL,
	[Nombre_Oficina] [varchar](100) NULL,
	[Codigo_Gestor] [int] NULL,
	[Nombre_Gestor] [varchar](100) NULL,
	[TipoArchivoEnviar] [varchar](100) NULL,
	[BloquearCredito] [int] NULL,
 CONSTRAINT [Cliente_PK] PRIMARY KEY CLUSTERED 
(
	[Codigo_Cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 10) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ClienteCuota]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ClienteCuota](
	[DLCC] [decimal](9, 0) NOT NULL,
	[DLAN] [decimal](2, 0) NOT NULL,
	[DLAG] [decimal](3, 0) NOT NULL,
	[DLCO] [decimal](4, 0) NOT NULL,
	[DLMO] [varchar](3) NOT NULL,
	[DLNP] [decimal](12, 0) NOT NULL,
	[DLCM] [varchar](20) NOT NULL,
	[DLNE] [varchar](75) NOT NULL,
	[DLPA] [varchar](25) NULL,
	[DLMA] [varchar](25) NULL,
	[DLMN] [varchar](25) NULL,
	[DLCR] [varchar](20) NOT NULL,
	[DLAP] [decimal](4, 0) NOT NULL,
	[DLMP] [decimal](2, 0) NOT NULL,
	[DLIC] [decimal](14, 2) NOT NULL,
	[DLST] [varchar](2) NOT NULL,
	[DLID] [decimal](14, 2) NULL,
	[DLFP] [decimal](8, 0) NOT NULL,
	[DLER] [varchar](8) NOT NULL,
	[DLESD] [varchar](1) NOT NULL,
	[DLFLI] [varchar](1) NULL,
	[NUMCUOTAS] [int] NULL,
	[DeudaPeriodo]  AS ([DLIC]-isnull([DLID],(0))),
	[Estado] [char](2) NULL,
	[Pago] [bit] NULL,
	[Codigo_proceso] [uniqueidentifier] NULL,
	[bloqueado] [bit] NULL,
	[prorrogado] [bit] NULL,
	[dateCode] [varchar](14) NULL,
	[orden] [int] NULL,
	[EDFLAGP] [char](1) NULL,
	[FechaDesembolso] [datetime] NULL,
	[TipoCuenta] [int] NULL,
	[NroDocumento] [char](11) NULL,
	[MontoOriginal] [decimal](18, 2) NULL,
	[CuotaInformada] [int] NULL,
	[FechaCargo] [datetime] NULL,
	[CuotaPactadas] [int] NULL,
	[CuotaPagadas] [int] NULL,
	[CuotaPendientes] [int] NULL,
	[TipoRegistro] [char](2) NULL,
	[NroTipoCredito] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CLIENTECUOTA_20080702]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CLIENTECUOTA_20080702](
	[DLCC] [decimal](9, 0) NOT NULL,
	[DLAN] [decimal](2, 0) NOT NULL,
	[DLAG] [decimal](3, 0) NOT NULL,
	[DLCO] [decimal](4, 0) NOT NULL,
	[DLMO] [varchar](3) NOT NULL,
	[DLNP] [decimal](12, 0) NOT NULL,
	[DLCM] [varchar](20) NOT NULL,
	[DLNE] [varchar](75) NOT NULL,
	[DLPA] [varchar](25) NULL,
	[DLMA] [varchar](25) NULL,
	[DLMN] [varchar](25) NULL,
	[DLCR] [varchar](20) NOT NULL,
	[DLAP] [decimal](4, 0) NOT NULL,
	[DLMP] [decimal](2, 0) NOT NULL,
	[DLIC] [decimal](14, 2) NOT NULL,
	[DLST] [varchar](2) NOT NULL,
	[DLID] [decimal](14, 2) NULL,
	[DLFP] [decimal](8, 0) NOT NULL,
	[DLER] [varchar](8) NOT NULL,
	[DLESD] [varchar](1) NOT NULL,
	[DLFLI] [varchar](1) NULL,
	[NUMCUOTAS] [int] NULL,
	[DeudaPeriodo] [decimal](15, 2) NULL,
	[Estado] [char](2) NULL,
	[Pago] [bit] NULL,
	[Codigo_proceso] [uniqueidentifier] NULL,
	[bloqueado] [bit] NULL,
	[prorrogado] [bit] NULL,
	[dateCode] [varchar](14) NULL,
	[orden] [int] NULL,
	[EDFLAGP] [char](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[clientecuota_20080902]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[clientecuota_20080902](
	[DLCC] [decimal](9, 0) NOT NULL,
	[DLAN] [decimal](2, 0) NOT NULL,
	[DLAG] [decimal](3, 0) NOT NULL,
	[DLCO] [decimal](4, 0) NOT NULL,
	[DLMO] [varchar](3) NOT NULL,
	[DLNP] [decimal](12, 0) NOT NULL,
	[DLCM] [varchar](20) NOT NULL,
	[DLNE] [varchar](75) NOT NULL,
	[DLPA] [varchar](25) NULL,
	[DLMA] [varchar](25) NULL,
	[DLMN] [varchar](25) NULL,
	[DLCR] [varchar](20) NOT NULL,
	[DLAP] [decimal](4, 0) NOT NULL,
	[DLMP] [decimal](2, 0) NOT NULL,
	[DLIC] [decimal](14, 2) NOT NULL,
	[DLST] [varchar](2) NOT NULL,
	[DLID] [decimal](14, 2) NULL,
	[DLFP] [decimal](8, 0) NOT NULL,
	[DLER] [varchar](8) NOT NULL,
	[DLESD] [varchar](1) NOT NULL,
	[DLFLI] [varchar](1) NULL,
	[NUMCUOTAS] [int] NULL,
	[DeudaPeriodo] [decimal](15, 2) NULL,
	[Estado] [char](2) NULL,
	[Pago] [bit] NULL,
	[Codigo_proceso] [uniqueidentifier] NULL,
	[bloqueado] [bit] NULL,
	[prorrogado] [bit] NULL,
	[dateCode] [varchar](14) NULL,
	[orden] [int] NULL,
	[EDFLAGP] [char](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[clientecuota_20080902_V2]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[clientecuota_20080902_V2](
	[DLCC] [decimal](9, 0) NOT NULL,
	[DLAN] [decimal](2, 0) NOT NULL,
	[DLAG] [decimal](3, 0) NOT NULL,
	[DLCO] [decimal](4, 0) NOT NULL,
	[DLMO] [varchar](3) NOT NULL,
	[DLNP] [decimal](12, 0) NOT NULL,
	[DLCM] [varchar](20) NOT NULL,
	[DLNE] [varchar](75) NOT NULL,
	[DLPA] [varchar](25) NULL,
	[DLMA] [varchar](25) NULL,
	[DLMN] [varchar](25) NULL,
	[DLCR] [varchar](20) NOT NULL,
	[DLAP] [decimal](4, 0) NOT NULL,
	[DLMP] [decimal](2, 0) NOT NULL,
	[DLIC] [decimal](14, 2) NOT NULL,
	[DLST] [varchar](2) NOT NULL,
	[DLID] [decimal](14, 2) NULL,
	[DLFP] [decimal](8, 0) NOT NULL,
	[DLER] [varchar](8) NOT NULL,
	[DLESD] [varchar](1) NOT NULL,
	[DLFLI] [varchar](1) NULL,
	[NUMCUOTAS] [int] NULL,
	[DeudaPeriodo] [decimal](15, 2) NULL,
	[Estado] [char](2) NULL,
	[Pago] [bit] NULL,
	[Codigo_proceso] [uniqueidentifier] NULL,
	[bloqueado] [bit] NULL,
	[prorrogado] [bit] NULL,
	[dateCode] [varchar](14) NULL,
	[orden] [int] NULL,
	[EDFLAGP] [char](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[clientecuota_chulucanas_231107]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[clientecuota_chulucanas_231107](
	[DLCC] [decimal](9, 0) NOT NULL,
	[DLAN] [decimal](2, 0) NOT NULL,
	[DLAG] [decimal](3, 0) NOT NULL,
	[DLCO] [decimal](4, 0) NOT NULL,
	[DLMO] [varchar](3) NOT NULL,
	[DLNP] [decimal](12, 0) NOT NULL,
	[DLCM] [varchar](20) NOT NULL,
	[DLNE] [varchar](75) NOT NULL,
	[DLPA] [varchar](25) NULL,
	[DLMA] [varchar](25) NULL,
	[DLMN] [varchar](25) NULL,
	[DLCR] [varchar](20) NOT NULL,
	[DLAP] [decimal](4, 0) NOT NULL,
	[DLMP] [decimal](2, 0) NOT NULL,
	[DLIC] [decimal](14, 2) NOT NULL,
	[DLST] [varchar](2) NOT NULL,
	[DLID] [decimal](14, 2) NULL,
	[DLFP] [decimal](8, 0) NOT NULL,
	[DLER] [varchar](8) NOT NULL,
	[DLESD] [varchar](1) NOT NULL,
	[DLFLI] [varchar](1) NULL,
	[NUMCUOTAS] [int] NULL,
	[DeudaPeriodo] [decimal](15, 2) NULL,
	[Estado] [char](2) NULL,
	[Pago] [bit] NULL,
	[Codigo_proceso] [uniqueidentifier] NULL,
	[bloqueado] [bit] NULL,
	[prorrogado] [bit] NULL,
	[dateCode] [varchar](14) NULL,
	[orden] [int] NULL,
	[EDFLAGP] [char](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CLIENTECUOTA_DESA]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CLIENTECUOTA_DESA](
	[DLCC] [decimal](9, 0) NOT NULL,
	[DLAN] [decimal](2, 0) NOT NULL,
	[DLAG] [decimal](3, 0) NOT NULL,
	[DLCO] [decimal](4, 0) NOT NULL,
	[DLMO] [varchar](3) NOT NULL,
	[DLNP] [decimal](12, 0) NOT NULL,
	[DLCM] [varchar](20) NOT NULL,
	[DLNE] [varchar](75) NOT NULL,
	[DLPA] [varchar](25) NULL,
	[DLMA] [varchar](25) NULL,
	[DLMN] [varchar](25) NULL,
	[DLCR] [varchar](20) NOT NULL,
	[DLAP] [decimal](4, 0) NOT NULL,
	[DLMP] [decimal](2, 0) NOT NULL,
	[DLIC] [decimal](14, 2) NOT NULL,
	[DLST] [varchar](2) NOT NULL,
	[DLID] [decimal](14, 2) NULL,
	[DLFP] [decimal](8, 0) NOT NULL,
	[DLER] [varchar](8) NOT NULL,
	[DLESD] [varchar](1) NOT NULL,
	[DLFLI] [varchar](1) NULL,
	[NUMCUOTAS] [int] NULL,
	[DeudaPeriodo] [decimal](15, 2) NULL,
	[Estado] [char](2) NULL,
	[Pago] [bit] NULL,
	[Codigo_proceso] [uniqueidentifier] NULL,
	[bloqueado] [bit] NULL,
	[prorrogado] [bit] NULL,
	[dateCode] [varchar](14) NULL,
	[orden] [int] NULL,
	[EDFLAGP] [char](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ClienteFirma]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ClienteFirma](
	[Codigo_Cliente] [numeric](9, 0) NOT NULL,
	[EjecutivoId] [varchar](10) NOT NULL,
	[UserId] [varchar](100) NOT NULL,
	[orden] [int] NULL,
 CONSTRAINT [PK_ClienteFirma] PRIMARY KEY CLUSTERED 
(
	[Codigo_Cliente] ASC,
	[EjecutivoId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 10) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ClienteFirma_190828050_14032012]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ClienteFirma_190828050_14032012](
	[Codigo_Cliente] [numeric](9, 0) NOT NULL,
	[EjecutivoId] [varchar](10) NOT NULL,
	[UserId] [varchar](100) NOT NULL,
	[orden] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ClienteFirma_190828059_14032012]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ClienteFirma_190828059_14032012](
	[Codigo_Cliente] [numeric](9, 0) NOT NULL,
	[EjecutivoId] [varchar](10) NOT NULL,
	[UserId] [varchar](100) NOT NULL,
	[orden] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ClienteFirma_190828101_14032012]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ClienteFirma_190828101_14032012](
	[Codigo_Cliente] [numeric](9, 0) NOT NULL,
	[EjecutivoId] [varchar](10) NOT NULL,
	[UserId] [varchar](100) NOT NULL,
	[orden] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ClienteFirma_190828106_14032012]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ClienteFirma_190828106_14032012](
	[Codigo_Cliente] [numeric](9, 0) NOT NULL,
	[EjecutivoId] [varchar](10) NOT NULL,
	[UserId] [varchar](100) NOT NULL,
	[orden] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ClienteFirma_190828108_14032012]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ClienteFirma_190828108_14032012](
	[Codigo_Cliente] [numeric](9, 0) NOT NULL,
	[EjecutivoId] [varchar](10) NOT NULL,
	[UserId] [varchar](100) NOT NULL,
	[orden] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ClienteFirma_190828428_14032012]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ClienteFirma_190828428_14032012](
	[Codigo_Cliente] [numeric](9, 0) NOT NULL,
	[EjecutivoId] [varchar](10) NOT NULL,
	[UserId] [varchar](100) NOT NULL,
	[orden] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CLIENTEFIRMA_DENISSE_170108]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CLIENTEFIRMA_DENISSE_170108](
	[Codigo_Cliente] [numeric](9, 0) NOT NULL,
	[EjecutivoId] [varchar](10) NOT NULL,
	[UserId] [varchar](100) NOT NULL,
	[orden] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ClienteNomina]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ClienteNomina](
	[Nomina_id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo_proceso] [uniqueidentifier] NULL,
	[Fecha_envio_recepcion] [datetime] NULL,
	[Cantidad_registros] [int] NULL,
	[Cantidad_registros_OK] [int] NULL,
	[Cantidad_registros_KO] [int] NULL,
	[Monto_deuda_soles] [decimal](15, 2) NULL,
	[Monto_deuda_dolares] [decimal](15, 2) NULL,
	[Codigo_clienteIBS] [decimal](9, 0) NULL,
	[Nombre_empresa] [nvarchar](100) NULL,
	[Tipo_nomina] [char](2) NULL,
	[Tipo_formato] [char](2) NULL,
	[Id_funcionario] [int] NULL,
	[Fecha_envioFuncionario] [datetime] NULL,
	[Tipo_proceso] [char](2) NULL,
 CONSTRAINT [PK_ClienteNomina] PRIMARY KEY CLUSTERED 
(
	[Nomina_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ClienteXCodInstitucionCAS]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ClienteXCodInstitucionCAS](
	[CODIGO_CLIENTE] [numeric](9, 0) NULL,
	[CODIGO_IBS] [int] NULL,
	[CODIGO_INSTITUCION] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CNOFC]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CNOFC](
	[CNOCFL] [varchar](2) NOT NULL,
	[CNORCD] [varchar](4) NOT NULL,
	[CNODSC] [varchar](35) NOT NULL,
	[CNOFRP] [decimal](5, 0) NOT NULL,
	[CNOCHG] [decimal](13, 2) NOT NULL,
	[CNODCC] [varchar](2) NOT NULL,
	[CNOPAF] [varchar](1) NOT NULL,
	[CNOADI] [varchar](1) NOT NULL,
	[CNOAPC] [varchar](1) NOT NULL,
	[CNOCPF] [varchar](1) NOT NULL,
	[CNOF01] [varchar](1) NOT NULL,
	[CNODCB] [varchar](1) NOT NULL,
	[CNOSCG] [decimal](16, 0) NOT NULL,
	[CNOMID] [varchar](6) NOT NULL,
	[CNOMIC] [varchar](6) NOT NULL,
	[CNOF02] [varchar](3) NOT NULL,
	[CNOCPC] [varchar](4) NOT NULL,
	[CNOTCF] [varchar](1) NOT NULL,
	[CNOMXC] [decimal](13, 2) NOT NULL,
	[CNOMNC] [decimal](13, 2) NOT NULL,
	[CNOIVA] [varchar](1) NOT NULL,
	[CNOCST] [decimal](7, 3) NOT NULL,
	[CNOF03] [varchar](1) NOT NULL,
	[CNOACD] [varchar](2) NOT NULL,
	[CNOACS] [decimal](7, 3) NOT NULL,
	[CNOF04] [varchar](1) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CodigoEstado]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CodigoEstado](
	[CodigoId] [char](2) NOT NULL,
	[CodigoNombre] [varchar](200) NULL,
	[CodigoDescripcion] [varchar](100) NULL,
	[Tabla] [varchar](50) NULL,
	[Orden] [int] NULL,
 CONSTRAINT [CodigoEstado_PK] PRIMARY KEY CLUSTERED 
(
	[CodigoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 10) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[coordinador_cliente]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[coordinador_cliente](
	[codigo_cliente] [numeric](9, 0) NULL,
	[id_coordinador] [int] NULL,
	[nombre_coordinador] [varchar](125) NULL,
	[email_coordinador] [varchar](50) NULL,
	[estado_coordinador] [bit] NULL,
	[usuario_creacion] [varchar](30) NULL,
	[fecha_creacion] [datetime] NULL,
	[usuario_modificacion] [varchar](30) NULL,
	[fecha_modificacion] [datetime] NULL,
	[Telefono] [varchar](12) NULL,
	[Anexo] [varchar](12) NULL,
	[Celular] [varchar](12) NULL,
	[Cargo] [varchar](100) NULL,
	[TipoPlanilla] [varchar](200) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CoordinadorCliente]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CoordinadorCliente](
	[iCoordinadorId] [int] IDENTITY(1,1) NOT NULL,
	[iClienteId] [int] NOT NULL,
	[vNombreCoordinador] [varchar](200) NOT NULL,
	[vEmailCoordinador] [varchar](100) NOT NULL,
	[vTelefono] [varchar](12) NULL,
	[vAnexo] [varchar](12) NULL,
	[vCelular] [varchar](12) NULL,
	[vCargo] [varchar](100) NULL,
	[vTipoPlanilla] [varchar](200) NULL,
	[iEstado] [int] NOT NULL,
	[vUsuarioCreacion] [varchar](50) NOT NULL,
	[dFechaCreacion] [datetime] NOT NULL,
	[vUsuarioModificacion] [varchar](50) NULL,
	[dFechaModificacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[iCoordinadorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CUOTAS_NEGATIVAS_MAESTRO_CONVENIOS]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CUOTAS_NEGATIVAS_MAESTRO_CONVENIOS](
	[DEAACC] [char](12) NULL,
	[DEAPRI] [decimal](14, 2) NULL,
	[DEAMEI] [decimal](14, 2) NULL,
	[DEAMEM] [decimal](14, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CuotasBloqueo]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CuotasBloqueo](
	[Codigo_proceso] [uniqueidentifier] NOT NULL,
	[CodigoLote] [bigint] NOT NULL,
	[DLNP] [decimal](18, 0) NOT NULL,
	[bloqueado] [bit] NULL,
 CONSTRAINT [PK_CuotasBloqueo] PRIMARY KEY CLUSTERED 
(
	[Codigo_proceso] ASC,
	[CodigoLote] ASC,
	[DLNP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 10) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CuotasProrroga]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CuotasProrroga](
	[Codigo_proceso] [uniqueidentifier] NOT NULL,
	[CodigoLote] [bigint] NOT NULL,
	[DLNP] [decimal](18, 0) NOT NULL,
	[prorrogado] [bit] NULL,
	[EDFLAGP] [char](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DATA_AMAZONAS]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DATA_AMAZONAS](
	[DLCM] [varchar](20) NULL,
	[MONTO] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DLCCR]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DLCCR](
	[DLACC] [decimal](12, 0) NOT NULL,
	[DLCCY] [varchar](3) NOT NULL,
	[DLVCA] [decimal](2, 0) NOT NULL,
	[DLVCM] [decimal](2, 0) NOT NULL,
	[DLVCD] [decimal](2, 0) NOT NULL,
	[DLNCT] [decimal](3, 0) NOT NULL,
	[DLIMC] [decimal](15, 2) NOT NULL,
	[DLIPC] [decimal](15, 2) NOT NULL,
	[DLITF] [decimal](18, 2) NOT NULL,
	[DLSTS] [varchar](1) NOT NULL,
	[Codigo_proceso] [uniqueidentifier] NULL,
	[DLMOD] [varchar](1) NULL,
	[FECHA_PREPA] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DLCCRDiario]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DLCCRDiario](
	[DLACC] [decimal](12, 0) NOT NULL,
	[DLCCY] [varchar](3) NOT NULL,
	[DLVCA] [decimal](2, 0) NOT NULL,
	[DLVCM] [decimal](2, 0) NOT NULL,
	[DLVCD] [decimal](2, 0) NOT NULL,
	[DLNCT] [decimal](3, 0) NOT NULL,
	[DLIMC] [decimal](15, 2) NOT NULL,
	[DLIPC] [decimal](15, 2) NOT NULL,
	[DLITF] [decimal](15, 2) NOT NULL,
	[DLSTS] [varchar](1) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DLCEC]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DLCEC](
	[DLCCDG] [decimal](9, 0) NOT NULL,
	[DLCZGR] [varchar](40) NOT NULL,
	[DLCAIN] [decimal](2, 0) NOT NULL,
	[DLCMIN] [decimal](2, 0) NOT NULL,
	[DLCDIN] [decimal](2, 0) NOT NULL,
	[DLCFCB] [decimal](2, 0) NOT NULL,
	[DLCABA] [decimal](2, 0) NOT NULL,
	[DLCMBA] [decimal](2, 0) NOT NULL,
	[DLCARE] [decimal](2, 0) NOT NULL,
	[DLCMRE] [decimal](2, 0) NOT NULL,
	[DLCDRE] [decimal](2, 0) NOT NULL,
	[DLCSTS] [varchar](1) NOT NULL,
	[DLCCFL] [varchar](2) NOT NULL,
	[DLCSTC] [varchar](7) NOT NULL,
	[DLCCIN] [varchar](2) NOT NULL,
	[DLCLOT] [varchar](4) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DLCND]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DLCND](
	[AÑCONV] [decimal](2, 0) NULL,
	[AGCONV] [decimal](3, 0) NULL,
	[COCONV] [decimal](4, 0) NULL,
	[DEAACC] [decimal](12, 0) NULL,
	[CDGTSOL] [char](1) NULL,
	[CDGNSOL] [decimal](7, 0) NULL,
	[CDGVCUO] [decimal](15, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DLCNT]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DLCNT](
	[DLCACC] [decimal](12, 0) NOT NULL,
	[DLCPM1] [decimal](2, 0) NOT NULL,
	[DLCPD1] [decimal](2, 0) NOT NULL,
	[DLCPY1] [decimal](2, 0) NOT NULL,
	[DLCGM1] [decimal](2, 0) NOT NULL,
	[DLCGD1] [decimal](2, 0) NOT NULL,
	[DLCGY1] [decimal](2, 0) NOT NULL,
	[DLCXM1] [decimal](2, 0) NOT NULL,
	[DLCXD1] [decimal](2, 0) NOT NULL,
	[DLCXY1] [decimal](2, 0) NOT NULL,
	[DLCFP1] [decimal](3, 0) NOT NULL,
	[DLCTP1] [varchar](1) NOT NULL,
	[DLCNC1] [decimal](3, 0) NOT NULL,
	[DLCCP1] [decimal](3, 0) NOT NULL,
	[DLCVA1] [decimal](13, 2) NOT NULL,
	[DLCVP1] [decimal](13, 2) NOT NULL,
	[DLCPP1] [decimal](13, 2) NOT NULL,
	[DLCIN1] [decimal](13, 2) NOT NULL,
	[DLCOR1] [decimal](3, 0) NOT NULL,
	[DLCDY1] [decimal](3, 0) NOT NULL,
	[DLCRT1] [decimal](9, 6) NOT NULL,
	[DLCUF1] [decimal](21, 8) NOT NULL,
	[DLCPM2] [decimal](2, 0) NOT NULL,
	[DLCPD2] [decimal](2, 0) NOT NULL,
	[DLCPY2] [decimal](2, 0) NOT NULL,
	[DLCGM2] [decimal](2, 0) NOT NULL,
	[DLCGD2] [decimal](2, 0) NOT NULL,
	[DLCGY2] [decimal](2, 0) NOT NULL,
	[DLCXM2] [decimal](2, 0) NOT NULL,
	[DLCXD2] [decimal](2, 0) NOT NULL,
	[DLCXY2] [decimal](2, 0) NOT NULL,
	[DLCFP2] [decimal](3, 0) NOT NULL,
	[DLCTP2] [varchar](1) NOT NULL,
	[DLCNC2] [decimal](3, 0) NOT NULL,
	[DLCCP2] [decimal](3, 0) NOT NULL,
	[DLCVA2] [decimal](13, 2) NOT NULL,
	[DLCVP2] [decimal](13, 2) NOT NULL,
	[DLCPP2] [decimal](13, 2) NOT NULL,
	[DLCIN2] [decimal](13, 2) NOT NULL,
	[DLCOR2] [decimal](3, 0) NOT NULL,
	[DLCDY2] [decimal](3, 0) NOT NULL,
	[DLCRT2] [decimal](9, 6) NOT NULL,
	[DLCUF2] [decimal](21, 8) NOT NULL,
	[DLCEVA] [decimal](13, 2) NOT NULL,
	[DLCENU] [decimal](3, 0) NOT NULL,
	[DLCEFR] [decimal](2, 0) NOT NULL,
	[DLCABM] [decimal](2, 0) NOT NULL,
	[DLCABD] [decimal](2, 0) NOT NULL,
	[DLCABY] [decimal](2, 0) NOT NULL,
	[DLCABC] [decimal](3, 0) NOT NULL,
	[DLCABF] [varchar](1) NOT NULL,
	[DLCABA] [decimal](13, 2) NOT NULL,
	[DLCMN1] [decimal](2, 0) NOT NULL,
	[DLCMN2] [decimal](2, 0) NOT NULL,
	[DLCMN3] [decimal](2, 0) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DLCON]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DLCON](
	[CONCUN] [decimal](9, 0) NOT NULL,
	[CONSEC] [decimal](2, 0) NOT NULL,
	[NOMCNT] [varchar](30) NOT NULL,
	[CRGCNT] [varchar](30) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DLCONV1]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DLCONV1](
	[Codigo_proceso] [uniqueidentifier] NOT NULL,
	[usuario] [varchar](15) NOT NULL,
	[pagare] [decimal](12, 0) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DLCRE]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DLCRE](
	[DLAÑO] [decimal](2, 0) NOT NULL,
	[DLAGC] [decimal](3, 0) NOT NULL,
	[DLCOC] [decimal](4, 0) NOT NULL,
	[DLCCC] [decimal](9, 0) NOT NULL,
	[DLNCC] [varchar](45) NOT NULL,
	[DLCLI] [decimal](4, 0) NOT NULL,
	[DLCTA] [decimal](12, 0) NOT NULL,
	[DLDPG] [decimal](2, 0) NOT NULL,
	[DLDEN] [decimal](2, 0) NOT NULL,
	[DLACC] [decimal](12, 0) NOT NULL,
	[DLCCY] [varchar](3) NOT NULL,
	[DLCUN] [decimal](9, 0) NOT NULL,
	[DLNCL] [varchar](45) NOT NULL,
	[DLAPP] [varchar](30) NOT NULL,
	[DLAPM] [varchar](30) NOT NULL,
	[DLPRN] [varchar](30) NOT NULL,
	[DLSGN] [varchar](30) NOT NULL,
	[DLPRI] [decimal](15, 2) NOT NULL,
	[DLOAM] [decimal](15, 2) NOT NULL,
	[DLCEM] [varchar](12) NOT NULL,
	[DLSTS] [varchar](1) NOT NULL,
	[DLCUS] [varchar](2) NOT NULL,
	[DLCCR] [decimal](8, 0) NOT NULL,
	[DLPLA] [varchar](4) NOT NULL,
	[DLFLI] [varchar](1) NULL,
	[DLDNI] [varchar](15) NULL,
	[FINICRE] [varchar](10) NULL,
	[PLDNPR] [varchar](15) NULL,
	[PLDFDE] [varchar](1) NULL,
	[PLCCD] [varchar](1) NULL,
	[CUSTID] [varchar](4) NULL,
	[CUSIDN] [varchar](15) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[dlcre_2]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dlcre_2](
	[DLAÑO] [decimal](2, 0) NOT NULL,
	[DLAGC] [decimal](3, 0) NOT NULL,
	[DLCOC] [decimal](4, 0) NOT NULL,
	[DLCCC] [decimal](9, 0) NOT NULL,
	[DLNCC] [varchar](45) NOT NULL,
	[DLCLI] [decimal](4, 0) NOT NULL,
	[DLCTA] [decimal](12, 0) NOT NULL,
	[DLDPG] [decimal](2, 0) NOT NULL,
	[DLDEN] [decimal](2, 0) NOT NULL,
	[DLACC] [decimal](12, 0) NOT NULL,
	[DLCCY] [varchar](3) NOT NULL,
	[DLCUN] [decimal](9, 0) NOT NULL,
	[DLNCL] [varchar](45) NOT NULL,
	[DLAPP] [varchar](30) NOT NULL,
	[DLAPM] [varchar](30) NOT NULL,
	[DLPRN] [varchar](30) NOT NULL,
	[DLSGN] [varchar](30) NOT NULL,
	[DLPRI] [decimal](15, 2) NOT NULL,
	[DLOAM] [decimal](15, 2) NOT NULL,
	[DLCEM] [varchar](12) NOT NULL,
	[DLSTS] [varchar](1) NOT NULL,
	[DLCUS] [varchar](2) NOT NULL,
	[DLCCR] [decimal](8, 0) NOT NULL,
	[DLPLA] [varchar](4) NOT NULL,
	[DLFLI] [varchar](1) NULL,
	[DLDNI] [varchar](15) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DLEMP]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DLEMP](
	[DLECUN] [varchar](50) NOT NULL,
	[DLEDSC] [varchar](200) NOT NULL,
	[DLEAEN] [char](2) NOT NULL,
	[DLEMEN] [char](2) NOT NULL,
	[DLEDEN] [char](2) NOT NULL,
	[DLEAPA] [char](2) NOT NULL,
	[DLEMPA] [char](2) NOT NULL,
	[DLEDPA] [char](2) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DLENV]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DLENV](
	[DLECC] [varchar](9) NOT NULL,
	[DLEAN] [varchar](2) NOT NULL,
	[DLEAG] [varchar](3) NOT NULL,
	[DLECO] [varchar](4) NOT NULL,
	[DLEMO] [varchar](3) NOT NULL,
	[DLENP] [varchar](12) NOT NULL,
	[DLECM] [varchar](20) NOT NULL,
	[DLENE] [varchar](75) NOT NULL,
	[DLEPA] [varchar](25) NOT NULL,
	[DLEMA] [varchar](25) NOT NULL,
	[DLEMN] [varchar](25) NOT NULL,
	[DLECR] [varchar](20) NOT NULL,
	[DLEAP] [varchar](4) NOT NULL,
	[DLEMP] [varchar](2) NOT NULL,
	[DLEIC] [varchar](14) NOT NULL,
	[DLEST] [varchar](1) NOT NULL,
	[DLEFP] [varchar](8) NOT NULL,
	[DLESD] [varchar](1) NULL,
	[DLFLI] [varchar](1) NULL,
	[NUMCUOTAS] [int] NOT NULL,
	[Codigo_proceso] [uniqueidentifier] NOT NULL,
	[FECDESEMBOLSO] [varchar](10) NULL,
	[MONTOORIGINAL] [varchar](20) NULL,
	[CUOTASPACTADAS] [int] NULL,
	[CUOTASINFORMADA] [int] NULL,
	[FECCARGO] [varchar](10) NULL,
	[CUOTASPAGADAS] [int] NULL,
	[CUOTASPENDIENTES] [int] NULL,
	[NROTIPOCREDITO] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DLPMT]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DLPMT](
	[DLPBNK] [char](2) NULL,
	[DLPBRN] [decimal](3, 0) NULL,
	[DLPCCY] [char](3) NULL,
	[DLPACC] [decimal](12, 0) NULL,
	[DLPPDC] [numeric](1, 0) NULL,
	[DLPPDY] [numeric](2, 0) NULL,
	[DLPPDM] [numeric](2, 0) NULL,
	[DLPPDD] [numeric](2, 0) NULL,
	[DLPPNU] [numeric](3, 0) NULL,
	[DLPTYP] [char](1) NULL,
	[DLPGPD] [numeric](2, 0) NULL,
	[DLPPPM] [decimal](15, 2) NULL,
	[DLPPPD] [decimal](15, 2) NULL,
	[DLPAEX] [decimal](15, 2) NULL,
	[DLPIPM] [decimal](15, 2) NULL,
	[DLPIPD] [decimal](15, 2) NULL,
	[DLPRPM] [decimal](15, 2) NULL,
	[DLPRPD] [decimal](15, 2) NULL,
	[DLPPIA] [decimal](15, 2) NULL,
	[DLPPIP] [decimal](15, 2) NULL,
	[DLPIMP] [decimal](15, 2) NULL,
	[DLPIMX] [decimal](15, 2) NULL,
	[DLPCOM] [decimal](15, 2) NULL,
	[DLPCOX] [decimal](15, 2) NULL,
	[DLPDED] [decimal](15, 2) NULL,
	[DLPDEX] [decimal](15, 2) NULL,
	[DLPIVA] [decimal](15, 2) NULL,
	[DLPIVX] [decimal](15, 2) NULL,
	[DLPDTM] [numeric](2, 0) NULL,
	[DLPDTD] [numeric](2, 0) NULL,
	[DLPDTY] [numeric](2, 0) NULL,
	[DLPPFL] [char](1) NULL,
	[DLPIIP] [char](1) NULL,
	[DLPNOF] [char](1) NULL,
	[DLPCLS] [numeric](2, 0) NULL,
	[DLPPRO] [char](1) NULL,
	[DLPFLG] [char](1) NULL,
	[DLPDLC] [char](1) NULL,
	[DLPFL1] [char](1) NULL,
	[DLPFL2] [char](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DLREC]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DLREC](
	[DLRCC] [varchar](9) NOT NULL,
	[DLRAN] [varchar](2) NOT NULL,
	[DLRAG] [varchar](3) NOT NULL,
	[DLRCO] [varchar](4) NOT NULL,
	[DLRMO] [varchar](3) NOT NULL,
	[DLRNP] [varchar](12) NOT NULL,
	[DLRCM] [varchar](20) NOT NULL,
	[DLRNE] [varchar](75) NOT NULL,
	[DLRCR] [varchar](20) NOT NULL,
	[DLRAP] [varchar](4) NOT NULL,
	[DLRMP] [varchar](2) NOT NULL,
	[DLRIC] [varchar](14) NOT NULL,
	[DLRST] [varchar](1) NOT NULL,
	[DLRID] [varchar](14) NOT NULL,
	[DLRFP] [varchar](8) NOT NULL,
	[DLRER] [varchar](8) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DocumentoCobranzaGenerado]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DocumentoCobranzaGenerado](
	[Codigo_proceso] [uniqueidentifier] NOT NULL,
	[DLCC] [decimal](18, 0) NOT NULL,
	[fecha] [datetime] NOT NULL,
	[TipoDocumento] [char](2) NULL,
	[UserId] [varchar](100) NULL,
	[Monto] [decimal](18, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DocumentoCobranzaGenerado_AGRAR_231107]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DocumentoCobranzaGenerado_AGRAR_231107](
	[Codigo_proceso] [uniqueidentifier] NOT NULL,
	[DLCC] [decimal](18, 0) NOT NULL,
	[fecha] [datetime] NOT NULL,
	[TipoDocumento] [char](2) NULL,
	[UserId] [varchar](100) NULL,
	[Monto] [decimal](18, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DocumentoCobranzaGenerado_direp_221107]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DocumentoCobranzaGenerado_direp_221107](
	[Codigo_proceso] [uniqueidentifier] NOT NULL,
	[DLCC] [decimal](18, 0) NOT NULL,
	[fecha] [datetime] NOT NULL,
	[TipoDocumento] [char](2) NULL,
	[UserId] [varchar](100) NULL,
	[Monto] [decimal](18, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DocumentoCobranzaGenerado_Historico]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DocumentoCobranzaGenerado_Historico](
	[Codigo_proceso] [uniqueidentifier] NOT NULL,
	[DLCC] [decimal](18, 0) NOT NULL,
	[fecha] [datetime] NOT NULL,
	[TipoDocumento] [char](2) NULL,
	[UserId] [varchar](100) NULL,
	[Monto] [decimal](18, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[em_ListadoCuotas]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[em_ListadoCuotas](
	[id_proceso] [int] NOT NULL,
	[id] [int] NOT NULL,
	[DLNCC] [varchar](50) NULL,
	[CUSTID] [varchar](4) NULL,
	[CUSIDN] [varchar](15) NULL,
	[DLECC] [numeric](18, 0) NOT NULL,
	[DLEAP] [varchar](4) NULL,
	[CUSCUN] [numeric](18, 0) NOT NULL,
	[DLEMP] [varchar](2) NULL,
	[DLEFP] [varchar](8) NOT NULL,
	[CODIGO_CLIENTE] [numeric](9, 0) NULL,
	[fechaGeneracion] [datetime] NULL,
	[codigo_proceso] [varchar](255) NULL,
	[fechaAct_proceso] [datetime] NULL,
	[ruta_archivo] [varchar](255) NULL,
	[fechaAct_ruta_archivo] [datetime] NULL,
	[fechaAct_envio_mail] [datetime] NULL,
 CONSTRAINT [pk_listadoCuotas] PRIMARY KEY CLUSTERED 
(
	[id] ASC,
	[id_proceso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[em_Proceso]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[em_Proceso](
	[id_proceso] [int] IDENTITY(1,1) NOT NULL,
	[fechaProceso] [datetime] NULL,
	[paso1] [bit] NULL,
	[fechaPaso1] [datetime] NULL,
	[paso2] [bit] NULL,
	[fechaPaso2] [datetime] NULL,
	[paso3] [bit] NULL,
	[fechaPaso3] [datetime] NULL,
	[paso4] [bit] NULL,
	[fechaPaso4] [datetime] NULL,
	[paso5] [bit] NULL,
	[fechaPaso5] [datetime] NULL,
	[mensaje] [varchar](200) NULL,
	[ImpTotal] [int] NULL,
	[ImpProcesados] [int] NULL,
	[ImpErrores] [int] NULL,
	[EnvTotal] [int] NULL,
	[EnvProcesados] [int] NULL,
	[EnvErrores] [int] NULL,
 CONSTRAINT [pk_em_Proceso] PRIMARY KEY CLUSTERED 
(
	[id_proceso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ErrorArchivoDescuentos]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ErrorArchivoDescuentos](
	[Codigo_proceso] [uniqueidentifier] NOT NULL,
	[CodigoBanco] [varchar](255) NULL,
	[Moneda] [varchar](255) NULL,
	[NumeroPagare] [varchar](255) NULL,
	[CodigoModular] [varchar](255) NULL,
	[NombreTrabajador] [varchar](255) NULL,
	[CodigoReferencia] [varchar](255) NULL,
	[Anio] [varchar](255) NULL,
	[Mes] [varchar](255) NULL,
	[Cuota] [varchar](255) NULL,
	[SituacionLaboral] [varchar](255) NULL,
	[MontoDescuento] [varchar](255) NULL,
	[Estado] [char](2) NULL,
	[codigo] [uniqueidentifier] ROWGUIDCOL  NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ESSALUD200712]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ESSALUD200712](
	[PAGARE] [nvarchar](255) NULL,
	[MODULAR] [nvarchar](255) NULL,
	[NOMBRE] [nvarchar](255) NULL,
	[ANIO] [nvarchar](255) NULL,
	[MES] [nvarchar](255) NULL,
	[CUOTA] [nvarchar](255) NULL,
	[DESCUENTO] [nvarchar](255) NULL,
	[DEUDA] [nvarchar](255) NULL,
	[Deuda Actual Proyectada (IBS)] [nvarchar](255) NULL,
	[PAGOIBSPROCESOCOBRANZA] [nvarchar](255) NULL,
	[DIFERENCIA] [float] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Estado_Actual_FiltroProrrogas]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Estado_Actual_FiltroProrrogas](
	[estado] [bit] NOT NULL,
	[usuario] [varchar](10) NOT NULL,
	[fecha] [datetime] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EventoSistema]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EventoSistema](
	[Ident_EventoSistema] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Hilo] [varchar](255) NOT NULL,
	[Nivel] [varchar](50) NOT NULL,
	[Accion] [varchar](255) NOT NULL,
	[Mensaje] [varchar](1000) NULL,
	[Excepcion] [varchar](4000) NULL,
	[Usuario] [varchar](50) NULL,
 CONSTRAINT [PK__EventoSistema__066DDD9B] PRIMARY KEY CLUSTERED 
(
	[Ident_EventoSistema] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FirmaEjecutivo]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FirmaEjecutivo](
	[EjecutivoId] [varchar](10) NOT NULL,
	[EjecutivoNombre] [varchar](100) NULL,
	[EjecutivoCargo] [varchar](50) NULL,
	[EjecutivoImagePath] [varchar](200) NULL,
 CONSTRAINT [PK_FirmaEjecutivo] PRIMARY KEY CLUSTERED 
(
	[EjecutivoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 10) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Flag]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Flag](
	[codigo] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[nombreTabla] [varchar](50) NOT NULL,
	[nombreColumna] [varchar](50) NOT NULL,
	[codigoFlag] [varchar](50) NOT NULL,
	[nombreCortoFlag] [varchar](50) NOT NULL,
	[nombreLargoFlag] [varchar](50) NULL,
	[precedenciaFlag] [int] NULL,
 CONSTRAINT [PK_Flag] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC,
	[nombreTabla] ASC,
	[nombreColumna] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 10) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[flagcargapagos]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[flagcargapagos](
	[tipo] [char](1) NULL,
	[flag] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FormatoArchivoCliente]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FormatoArchivoCliente](
	[Codigo_Cliente] [numeric](9, 0) NOT NULL,
	[DescripcionFormatoArchivo] [varchar](50) NULL,
	[FormatoArchivo] [varchar](50) NULL,
	[TipoFormatoArchivo] [varchar](50) NULL,
	[ValorAsociado] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FormatoArchivoCliente_Convenio20120222]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FormatoArchivoCliente_Convenio20120222](
	[Codigo_Cliente] [numeric](9, 0) NOT NULL,
	[DescripcionFormatoArchivo] [varchar](50) NULL,
	[FormatoArchivo] [varchar](50) NULL,
	[TipoFormatoArchivo] [varchar](50) NULL,
	[ValorAsociado] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FormatoArchivoCliente_ConvenioCajamarca20120223]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FormatoArchivoCliente_ConvenioCajamarca20120223](
	[Codigo_Cliente] [numeric](9, 0) NOT NULL,
	[DescripcionFormatoArchivo] [varchar](50) NULL,
	[FormatoArchivo] [varchar](50) NULL,
	[TipoFormatoArchivo] [varchar](50) NULL,
	[ValorAsociado] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FormatoArchivoCliente_ConvenioCajamarca20120307]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FormatoArchivoCliente_ConvenioCajamarca20120307](
	[Codigo_Cliente] [numeric](9, 0) NOT NULL,
	[DescripcionFormatoArchivo] [varchar](50) NULL,
	[FormatoArchivo] [varchar](50) NULL,
	[TipoFormatoArchivo] [varchar](50) NULL,
	[ValorAsociado] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[funcionario_convenios]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[funcionario_convenios](
	[id_funcionario] [int] IDENTITY(1,1) NOT NULL,
	[nombre_funcionario] [varchar](125) NULL,
	[email_funcionario] [varchar](50) NULL,
	[telefono_funcionario] [varchar](11) NULL,
	[estado_funcionario] [bit] NULL,
	[usuario_creacion] [varchar](30) NULL,
	[fecha_creacion] [datetime] NULL,
	[usuario_modificacion] [varchar](30) NULL,
	[fecha_modificacion] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Generica]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Generica](
	[idGenerica] [int] IDENTITY(1,1) NOT NULL,
	[id] [varchar](50) NOT NULL,
	[NombreCorto] [varchar](50) NULL,
	[Descripcion] [varchar](50) NULL,
	[Orden] [int] NULL,
	[Tabla] [varchar](50) NULL,
 CONSTRAINT [PK_Generica] PRIMARY KEY CLUSTERED 
(
	[idGenerica] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 10) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HISTORICO_CLIENTECUOTA]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HISTORICO_CLIENTECUOTA](
	[Codigo_HistoricoClienteCuota] [int] IDENTITY(1,1) NOT NULL,
	[Codigo_proceso] [uniqueidentifier] NOT NULL,
	[Codigo_ClienteIBS] [decimal](9, 0) NOT NULL,
	[Pagare] [decimal](12, 0) NOT NULL,
	[Trabajador] [varchar](75) NOT NULL,
	[Importe] [decimal](14, 2) NOT NULL,
	[CuotaPactadas] [int] NOT NULL,
	[CuotaPagadas] [int] NOT NULL,
	[CuotaPendientes] [int] NOT NULL,
	[usuario_creacion] [varchar](30) NOT NULL,
	[fecha_creacion] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Codigo_HistoricoClienteCuota] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HistoricoDLCCR]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HistoricoDLCCR](
	[Codigo_proceso] [uniqueidentifier] NOT NULL,
	[DLACC] [decimal](12, 0) NOT NULL,
	[DLCCY] [varchar](3) NOT NULL,
	[DLVCA] [decimal](2, 0) NOT NULL,
	[DLVCM] [decimal](2, 0) NOT NULL,
	[DLVCD] [decimal](2, 0) NOT NULL,
	[DLNCT] [decimal](3, 0) NOT NULL,
	[DLIMC] [decimal](15, 2) NOT NULL,
	[DLIPC] [decimal](15, 2) NOT NULL,
	[DLITF] [decimal](18, 2) NOT NULL,
	[DLSTS] [varchar](1) NOT NULL,
	[DLMOD] [varchar](1) NULL,
	[FECHA_PREPA] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HistoricoNroDocumentos]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HistoricoNroDocumentos](
	[Codigo_proceso] [uniqueidentifier] NULL,
	[DLNP] [decimal](12, 0) NULL,
	[TipoDocumento] [varchar](15) NULL,
	[NroDocumento] [varchar](15) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Log]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log](
	[id] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[NombreTabla] [varchar](100) NULL,
	[CodigoRegistro] [varchar](250) NULL,
	[EstadoAnterior] [char](2) NULL,
	[EstadoNuevo] [char](2) NULL,
	[FechaActividad] [datetime] NULL,
	[Accion] [varchar](200) NULL,
	[UserId] [varchar](100) NULL,
	[Cliente] [numeric](9, 0) NULL,
	[Anio_periodo] [char](4) NULL,
	[Mes_Periodo] [char](2) NULL,
 CONSTRAINT [PK_Log] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 10) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LOG_AccesoSeguridad]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LOG_AccesoSeguridad](
	[iCodAcceso] [int] IDENTITY(1,1) NOT NULL,
	[Accion] [varchar](50) NOT NULL,
	[vUserId] [varchar](50) NOT NULL,
	[vNombreUser] [varchar](50) NOT NULL,
	[iEstado] [int] NOT NULL,
	[iCodPerfil] [int] NOT NULL,
	[vUsuario] [varchar](50) NULL,
	[dFecha] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[iCodAcceso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[log_ejecucion_aviso]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[log_ejecucion_aviso](
	[fecha] [datetime] NULL,
	[id_aviso] [smallint] NULL,
	[codigo_IBS] [int] NULL,
	[email_envio_aviso] [varchar](4000) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LOG_ENVIO_CORREOS]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LOG_ENVIO_CORREOS](
	[iEnvioCorreoId] [int] IDENTITY(1,1) NOT NULL,
	[iProcesoAutomaticoId] [int] NOT NULL,
	[iTipoEnvioCorreoId] [int] NOT NULL,
	[iCodigoCliente] [int] NOT NULL,
	[iCodigoIBS] [int] NOT NULL,
	[vCodigoProceso] [varchar](100) NOT NULL,
	[iAnioPeriodo] [int] NULL,
	[iMesPeriodo] [int] NULL,
	[vMensajeProceso] [varchar](1000) NULL,
	[iEstado] [int] NOT NULL,
	[vUsuarioCreacion] [varchar](50) NOT NULL,
	[dFechaCreacion] [datetime] NOT NULL,
	[vUsuarioModificacion] [varchar](50) NULL,
	[dFechaModificacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[iEnvioCorreoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Log_prorrogas]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Log_prorrogas](
	[estado] [bit] NOT NULL,
	[usuario] [varchar](15) NOT NULL,
	[fecha] [datetime] NOT NULL,
	[Codigo_proceso] [uniqueidentifier] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[logprocesobatch]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[logprocesobatch](
	[codigo_proceso] [char](3) NULL,
	[fecha_proceso] [char](8) NULL,
	[hora_inicio] [char](5) NULL,
	[hora_fin] [char](5) NULL,
	[estado_proceso] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoteBloqueo]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LoteBloqueo](
	[Codigo_proceso] [uniqueidentifier] NOT NULL,
	[CodigoLote] [bigint] IDENTITY(1,1) NOT NULL,
	[userId] [varchar](100) NULL,
	[estadoProceso] [char](1) NULL,
	[respuesta] [varchar](100) NULL,
	[Fin] [bit] NULL,
	[Fecha] [datetime] NULL,
 CONSTRAINT [PK_LoteBloqueo] PRIMARY KEY CLUSTERED 
(
	[Codigo_proceso] ASC,
	[CodigoLote] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 10) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoteProrroga]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LoteProrroga](
	[Codigo_proceso] [uniqueidentifier] NOT NULL,
	[CodigoLote] [bigint] IDENTITY(1,1) NOT NULL,
	[userId] [varchar](100) NULL,
	[estadoProceso] [char](1) NULL,
	[respuesta] [varchar](100) NULL,
	[Fin] [bit] NULL,
	[Fecha] [datetime] NULL,
 CONSTRAINT [PK_LoteProrroga] PRIMARY KEY CLUSTERED 
(
	[Codigo_proceso] ASC,
	[CodigoLote] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 10) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MANTENIMIENTO_CUOTA]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MANTENIMIENTO_CUOTA](
	[DLECUN] [varchar](50) NOT NULL,
	[TIPO_CUOTA] [char](1) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mora2008]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mora2008](
	[F1] [float] NULL,
	[F2] [float] NULL,
	[ABANTO CARRION ELIANA DEL CARMEN] [nvarchar](255) NULL,
	[F4] [float] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[mora2008_final]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mora2008_final](
	[DLNP] [float] NULL,
	[A1] [float] NULL,
	[A2] [nvarchar](255) NULL,
	[NOMBRE] [nvarchar](255) NULL,
	[DLID] [float] NULL,
	[ESTADO] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[mora2008_final1]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mora2008_final1](
	[DLNP] [varchar](30) NULL,
	[DLID] [numeric](12, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mora2008_mylen]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mora2008_mylen](
	[DLCC] [decimal](9, 0) NOT NULL,
	[DLAN] [decimal](2, 0) NOT NULL,
	[DLAG] [decimal](3, 0) NOT NULL,
	[DLCO] [decimal](4, 0) NOT NULL,
	[DLMO] [varchar](3) NOT NULL,
	[DLNP] [decimal](12, 0) NOT NULL,
	[DLCM] [varchar](20) NOT NULL,
	[DLNE] [varchar](75) NOT NULL,
	[DLCR] [varchar](20) NOT NULL,
	[DLAP] [decimal](4, 0) NOT NULL,
	[DLMP] [char](2) NULL,
	[DLIC] [numeric](18, 0) NULL,
	[DLST] [varchar](2) NOT NULL,
	[DLID] [numeric](18, 0) NULL,
	[DLFP] [varchar](8) NULL,
	[DLER] [varchar](1) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OLE DB Destination]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OLE DB Destination](
	[DEAACC] [decimal](18, 0) NULL,
	[DEAPRI] [decimal](29, 2) NULL,
	[DEAMEI] [decimal](29, 2) NULL,
	[DEAMEM] [decimal](29, 2) NULL,
	[Copy of DEAACC] [decimal](18, 0) NULL,
	[Copy of DEAPRI] [decimal](29, 2) NULL,
	[Copy of DEAMEI] [decimal](29, 2) NULL,
	[Copy of DEAMEM] [decimal](29, 2) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PaginaRestringida]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PaginaRestringida](
	[id] [varchar](10) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Descripcion] [varchar](100) NULL,
 CONSTRAINT [PK_PaginaRestringida] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 10) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Parametro]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Parametro](
	[Parametro_Codigo] [varchar](5) NOT NULL,
	[Parametro_ItemID] [char](4) NOT NULL,
	[Parametro_ItemValor] [varchar](100) NOT NULL,
	[Parametro_Descripcion] [varchar](200) NULL,
	[Parametro_Estado] [bit] NOT NULL,
	[Parametro_Orden] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PerfilSeguridad]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PerfilSeguridad](
	[iCodPerfil] [int] IDENTITY(1,1) NOT NULL,
	[vNombrePerfil] [varchar](50) NOT NULL,
	[vUsuarioCreacion] [varchar](50) NULL,
	[dFechaCreacion] [datetime] NULL,
	[vUsuarioModificacion] [varchar](50) NULL,
	[dFechaModificacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[iCodPerfil] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PLPDE]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PLPDE](
	[PDEBRN] [decimal](3, 0) NOT NULL,
	[PDENPR] [decimal](12, 0) NOT NULL,
	[PDETYP] [char](4) NOT NULL,
	[PDENUM] [decimal](4, 0) NOT NULL,
	[PDEACO] [decimal](2, 0) NOT NULL,
	[PDEAGE] [decimal](3, 0) NOT NULL,
	[PDESEC] [decimal](4, 0) NOT NULL,
	[PDECUN] [decimal](9, 0) NOT NULL,
	[PDEDSC] [char](45) NOT NULL,
	[PDEHAD] [decimal](6, 0) NOT NULL,
	[PDEAAP] [decimal](2, 0) NOT NULL,
	[PDEMAP] [decimal](2, 0) NOT NULL,
	[PDEDAP] [decimal](2, 0) NOT NULL,
	[PDEAAD] [decimal](2, 0) NOT NULL,
	[PDEMAD] [decimal](2, 0) NOT NULL,
	[PDEDAD] [decimal](2, 0) NOT NULL,
	[PDEAPD] [decimal](2, 0) NOT NULL,
	[PDEMPD] [decimal](2, 0) NOT NULL,
	[PDEDPD] [decimal](2, 0) NOT NULL,
	[PDEACC] [decimal](12, 0) NOT NULL,
	[PDESEQ] [decimal](12, 0) NOT NULL,
	[PDESTS] [char](1) NULL,
	[PDEHCD] [decimal](6, 0) NOT NULL,
	[PDEACD] [decimal](2, 0) NOT NULL,
	[PDEMCD] [decimal](2, 0) NOT NULL,
	[PDEDCD] [decimal](2, 0) NOT NULL,
	[PDEAGC] [decimal](3, 0) NOT NULL,
	[PDETLR] [char](7) NULL,
	[PDETYC] [char](7) NULL,
	[PDEUSR] [char](10) NULL,
	[PDENPA] [decimal](12, 0) NOT NULL,
	[PDEIPA] [decimal](15, 2) NOT NULL,
	[PDEIMN] [decimal](15, 2) NOT NULL,
	[PDETID] [char](4) NULL,
	[PDEIDN] [char](15) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PLPDWH]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PLPDWH](
	[PDWPACC] [decimal](12, 0) NULL,
	[PDWCOMPD] [char](2) NULL,
	[PDWNOV] [char](2) NULL,
	[MontoDesembolso] [decimal](10, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Proceso]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Proceso](
	[Codigo_proceso] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Estado] [char](2) NULL,
	[Anio_periodo] [char](4) NULL,
	[Mes_Periodo] [char](2) NULL,
	[Fecha_ProcesoAS400] [char](8) NULL,
	[Codigo_Cliente] [numeric](9, 0) NULL,
	[Fecha_CargaAS400] [datetime] NULL,
	[Fecha_GeneracionCF] [datetime] NULL,
	[Fecha_DescargaArchivo] [datetime] NULL,
	[Fecha_EnvioEmail] [datetime] NULL,
	[TmpStatusGen] [char](2) NULL,
	[Fecha_ProcesoAD] [datetime] NULL,
	[Fecha_EnvioAS400] [datetime] NULL,
	[Fecha_CorteSeguimiento] [datetime] NULL,
	[UsuarioCreacion] [varchar](100) NULL,
	[Fecha_PostConciliacion] [datetime] NULL,
 CONSTRAINT [Proceso_PK] PRIMARY KEY CLUSTERED 
(
	[Codigo_proceso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 10) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[procesobatch]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[procesobatch](
	[codigo_proceso] [char](3) NULL,
	[descripcion_proceso] [varchar](50) NULL,
	[estado] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PROCESOS_AUTOMATICOS]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PROCESOS_AUTOMATICOS](
	[iProcesoAutomaticoId] [int] IDENTITY(1,1) NOT NULL,
	[iTotalRegistros] [int] NOT NULL,
	[iProcesados] [int] NOT NULL,
	[iErroneos] [int] NOT NULL,
	[vMensajeProceso] [varchar](1000) NULL,
	[iEstado] [int] NOT NULL,
	[vUsuarioCreacion] [varchar](50) NOT NULL,
	[dFechaCreacion] [datetime] NOT NULL,
	[vUsuarioModificacion] [varchar](50) NULL,
	[dFechaModificacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[iProcesoAutomaticoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PRORROGA20070810]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRORROGA20070810](
	[DLACC] [float] NULL,
	[DLID] [float] NULL,
	[NUMCUOTAS] [float] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ResponsableOficina]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ResponsableOficina](
	[iResponsableId] [int] IDENTITY(1,1) NOT NULL,
	[iOficinaId] [int] NOT NULL,
	[vOficina] [varchar](100) NOT NULL,
	[vNombreResponsable] [varchar](100) NOT NULL,
	[vCorreoResponsable] [varchar](100) NOT NULL,
	[iEstado] [int] NOT NULL,
	[vUsuarioCreacion] [varchar](50) NOT NULL,
	[dFechaCreacion] [datetime] NOT NULL,
	[vUsuarioModificacion] [varchar](50) NULL,
	[dFechaModificacion] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Solicitud_prestamo_presonal]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Solicitud_prestamo_presonal](
	[Codigo_Planilla] [varchar](7) NULL,
	[Apellido_Paterno] [varchar](20) NULL,
	[Apellido_Materno] [varchar](20) NULL,
	[Nombre] [varchar](20) NULL,
	[Monto_Prestamo] [decimal](12, 2) NULL,
	[Plazo] [int] NULL,
	[Cuota] [decimal](11, 2) NULL,
	[Compra_deuda] [bit] NULL,
	[Usuario] [varchar](50) NULL,
	[Fecha] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SystemParameters]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SystemParameters](
	[iGrupoId] [int] NOT NULL,
	[iParametroId] [int] NOT NULL,
	[vDescripcion] [varchar](500) NULL,
	[vValor] [varchar](max) NULL,
	[iOrden] [int] NOT NULL,
	[iVisible] [int] NOT NULL,
	[dFechaInicio] [datetime] NULL,
	[dFechaFin] [datetime] NULL,
	[iEstado] [int] NOT NULL,
	[vUsuarioCreacion] [varchar](50) NOT NULL,
	[dFechaCreacion] [datetime] NOT NULL,
	[vUsuarioModificacion] [varchar](50) NULL,
	[dFechaModificacion] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TEMPEMP]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TEMPEMP](
	[DLECUN] [decimal](9, 0) NOT NULL,
	[DLEDSC] [varchar](45) NOT NULL,
	[DLEAEN] [decimal](2, 0) NOT NULL,
	[DLEMEN] [decimal](2, 0) NOT NULL,
	[DLEDEN] [decimal](2, 0) NOT NULL,
	[CUSCUN] [decimal](9, 0) NOT NULL,
	[CUSIDN] [varchar](15) NOT NULL,
	[CUSTID] [varchar](4) NOT NULL,
	[CUSPID] [varchar](4) NOT NULL,
	[CUSIDF] [varchar](15) NOT NULL,
	[CUSTIF] [varchar](4) NOT NULL,
	[CUSPIF] [varchar](4) NOT NULL,
	[CUSID3] [varchar](15) NOT NULL,
	[CUSTI3] [varchar](4) NOT NULL,
	[CUSPI3] [varchar](4) NOT NULL,
	[CUSID4] [varchar](15) NOT NULL,
	[CUSTI4] [varchar](4) NOT NULL,
	[CUSPI4] [varchar](4) NOT NULL,
	[CUSLGT] [varchar](1) NOT NULL,
	[CUSSTF] [varchar](1) NOT NULL,
	[CUSSHN] [varchar](15) NOT NULL,
	[CUSSTS] [varchar](1) NOT NULL,
	[CUSNA1] [varchar](45) NOT NULL,
	[CUSNA2] [varchar](35) NOT NULL,
	[CUSNA3] [varchar](35) NOT NULL,
	[CUSNA4] [varchar](35) NOT NULL,
	[CUSCTY] [varchar](30) NOT NULL,
	[CUSSTE] [varchar](4) NOT NULL,
	[CUSZPC] [varchar](15) NOT NULL,
	[CUSPOB] [varchar](10) NOT NULL,
	[CUSCTR] [varchar](20) NOT NULL,
	[CUSCCS] [varchar](4) NOT NULL,
	[CUSSEX] [varchar](1) NOT NULL,
	[CUSMST] [varchar](1) NOT NULL,
	[CUSNSO] [decimal](2, 0) NOT NULL,
	[CUSILV] [decimal](1, 0) NOT NULL,
	[CUSRLV] [varchar](1) NOT NULL,
	[CUSLIF] [varchar](1) NOT NULL,
	[CUSATM] [varchar](1) NOT NULL,
	[CUSCCL] [varchar](1) NOT NULL,
	[CUSTAX] [varchar](1) NOT NULL,
	[CUSBDM] [decimal](2, 0) NOT NULL,
	[CUSBDD] [decimal](2, 0) NOT NULL,
	[CUSBDY] [decimal](4, 0) NOT NULL,
	[CUSIDM] [decimal](2, 0) NOT NULL,
	[CUSIDD] [decimal](2, 0) NOT NULL,
	[CUSIDY] [decimal](2, 0) NOT NULL,
	[CUSLDM] [decimal](2, 0) NOT NULL,
	[CUSLDD] [decimal](2, 0) NOT NULL,
	[CUSLDY] [decimal](2, 0) NOT NULL,
	[CUSMAM] [decimal](2, 0) NOT NULL,
	[CUSMAD] [decimal](2, 0) NOT NULL,
	[CUSMAY] [decimal](2, 0) NOT NULL,
	[CUSRBY] [varchar](4) NOT NULL,
	[CUSRBN] [varchar](15) NOT NULL,
	[CUSEDL] [varchar](4) NOT NULL,
	[CUSINC] [varchar](4) NOT NULL,
	[CUSBUC] [varchar](4) NOT NULL,
	[CUSINL] [varchar](1) NOT NULL,
	[CUSSOI] [varchar](4) NOT NULL,
	[CUSCOB] [varchar](4) NOT NULL,
	[CUSRSL] [varchar](4) NOT NULL,
	[CUSGEC] [varchar](4) NOT NULL,
	[CUSOFC] [varchar](4) NOT NULL,
	[CUSOF2] [varchar](4) NOT NULL,
	[CUSUC1] [varchar](4) NOT NULL,
	[CUSUC2] [varchar](4) NOT NULL,
	[CUSUC3] [varchar](4) NOT NULL,
	[CUSUC4] [varchar](6) NOT NULL,
	[CUSUC5] [varchar](4) NOT NULL,
	[CUSUC6] [varchar](4) NOT NULL,
	[CUSUC7] [varchar](4) NOT NULL,
	[CUSUC8] [varchar](4) NOT NULL,
	[CUSUC9] [varchar](4) NOT NULL,
	[CUSTYP] [varchar](1) NOT NULL,
	[CUSGRP] [decimal](9, 0) NOT NULL,
	[CUSBRN] [decimal](4, 0) NOT NULL,
	[CUSMLC] [varchar](4) NOT NULL,
	[CUSHPN] [decimal](11, 0) NOT NULL,
	[CUSPHN] [decimal](11, 0) NOT NULL,
	[CUSPH1] [decimal](11, 0) NOT NULL,
	[CUSFAX] [decimal](11, 0) NOT NULL,
	[CUSFNA] [varchar](30) NOT NULL,
	[CUSLN1] [varchar](30) NOT NULL,
	[CUSLN2] [varchar](30) NOT NULL,
	[CUSACA] [varchar](30) NOT NULL,
	[CUSFN2] [varchar](30) NOT NULL,
	[CUSLN3] [varchar](30) NOT NULL,
	[CUSFL1] [varchar](1) NOT NULL,
	[CUSFL2] [varchar](1) NOT NULL,
	[CUSFL3] [varchar](1) NOT NULL,
	[CUSFL4] [varchar](1) NOT NULL,
	[CUSFL5] [varchar](1) NOT NULL,
	[CUSFL6] [varchar](1) NOT NULL,
	[CUSFL7] [varchar](1) NOT NULL,
	[CUSFL8] [varchar](8) NOT NULL,
	[CUSIAD] [varchar](40) NOT NULL,
	[CUSWEB] [varchar](40) NOT NULL,
	[CUSSUC] [varchar](1) NOT NULL,
	[CUSOBC] [varchar](1) NOT NULL,
	[CUSPRV] [varchar](2) NOT NULL,
	[CUSDIB] [decimal](4, 0) NOT NULL,
	[CUSUSR] [varchar](10) NOT NULL,
	[CUSRLE] [varchar](2) NOT NULL,
	[CUSACL] [varchar](2) NOT NULL,
	[CUSSHV] [varchar](2) NOT NULL,
	[CUSPNA] [varchar](2) NOT NULL,
	[CUSPPA] [decimal](9, 6) NOT NULL,
	[CUSPAR] [decimal](9, 6) NOT NULL,
	[CUSCSL] [decimal](13, 2) NOT NULL,
	[CUSCCC] [varchar](3) NOT NULL,
	[CUSBRA] [decimal](3, 0) NOT NULL,
	[CUSMPF] [varchar](1) NOT NULL,
	[CUSCRF] [varchar](1) NOT NULL,
	[CUSRAM] [decimal](2, 0) NOT NULL,
	[CUSRAD] [decimal](2, 0) NOT NULL,
	[CUSRAY] [decimal](2, 0) NOT NULL,
	[CUSSCH] [varchar](4) NOT NULL,
	[CUSSST] [varchar](4) NOT NULL,
	[CUSIEM] [decimal](2, 0) NOT NULL,
	[CUSIED] [decimal](2, 0) NOT NULL,
	[CUSIEY] [decimal](2, 0) NOT NULL,
	[CUSREM] [decimal](2, 0) NOT NULL,
	[CUSRED] [decimal](2, 0) NOT NULL,
	[CUSREY] [decimal](2, 0) NOT NULL,
	[CUSREN] [varchar](15) NOT NULL,
	[CUSTTX] [varchar](1) NOT NULL,
	[CUSETX] [decimal](5, 3) NOT NULL,
	[CUSETM] [decimal](2, 0) NOT NULL,
	[CUSETD] [decimal](2, 0) NOT NULL,
	[CUSETY] [decimal](2, 0) NOT NULL,
	[CUSD1M] [decimal](2, 0) NOT NULL,
	[CUSD1D] [decimal](2, 0) NOT NULL,
	[CUSD1Y] [decimal](2, 0) NOT NULL,
	[CUSD2M] [decimal](2, 0) NOT NULL,
	[CUSD2D] [decimal](2, 0) NOT NULL,
	[CUSD2Y] [decimal](2, 0) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Temporal]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Temporal](
	[NumeroPagare] [nvarchar](255) NULL,
	[NOMBRE] [nvarchar](255) NULL,
	[TIPO] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[temporal20050301]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temporal20050301](
	[Code] [float] NULL,
	[CESANTES] [nvarchar](255) NULL,
	[CARGAR] [float] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TemporalArchivo]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TemporalArchivo](
	[CodigoBanco] [varchar](8000) NULL,
	[Moneda] [varchar](8000) NULL,
	[NumeroPagare] [varchar](8000) NULL,
	[CodigoModular] [varchar](8000) NULL,
	[NombreTrabajador] [varchar](8000) NULL,
	[CodigoReferencia] [varchar](8000) NULL,
	[Anio] [varchar](8000) NULL,
	[Mes] [varchar](8000) NULL,
	[Cuota] [varchar](8000) NULL,
	[SituacionLaboral] [varchar](8000) NULL,
	[MontoDescuento] [varchar](8000) NULL,
	[SaldoCredito] [varchar](8000) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TemporalArchivoTexto]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TemporalArchivoTexto](
	[Codigo_proceso] [uniqueidentifier] NOT NULL,
	[UserId] [varchar](100) NOT NULL,
	[orden] [int] NULL,
	[lineainformacion] [varchar](400) NULL,
	[fecha] [datetime] NULL,
	[dateCode] [varchar](14) NULL,
	[Procesa] [bit] NULL,
	[DLNP] [decimal](12, 0) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TipoDocumento]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoDocumento](
	[Codigo] [varchar](8) NULL,
	[Descripcion] [char](40) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TMP_BELEN]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TMP_BELEN](
	[PAGARE] [float] NULL,
	[CLIENTE] [nvarchar](255) NULL,
	[MONTO] [float] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TMP_CARGOS_ERROR20070903]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TMP_CARGOS_ERROR20070903](
	[CLIENTE] [decimal](10, 0) NULL,
	[MONEDA] [varchar](10) NULL,
	[PAGARE] [decimal](15, 0) NULL,
	[DIFERENCIA] [decimal](20, 2) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TMP_CLIENTE_20070501]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TMP_CLIENTE_20070501](
	[Codigo_Cliente] [numeric](9, 0) IDENTITY(1,1) NOT NULL,
	[Nombre_Cliente] [nvarchar](100) NOT NULL,
	[FormatoArchivo] [varchar](10) NULL,
	[TipoFormatoArchivo] [varchar](4) NULL,
	[Codigo_Referencia] [varchar](12) NULL,
	[TipoDocumento] [varchar](2) NULL,
	[NumeroDocumento] [varchar](12) NULL,
	[CorreoElectronico] [varchar](100) NULL,
	[UsuarioCreacion] [varchar](100) NULL,
	[FormatoArchivoImportacion] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TMP_CLIENTECUOTA_20071206]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TMP_CLIENTECUOTA_20071206](
	[DLCC] [decimal](9, 0) NOT NULL,
	[DLAN] [decimal](2, 0) NOT NULL,
	[DLAG] [decimal](3, 0) NOT NULL,
	[DLCO] [decimal](4, 0) NOT NULL,
	[DLMO] [varchar](3) NOT NULL,
	[DLNP] [decimal](12, 0) NOT NULL,
	[DLCM] [varchar](20) NOT NULL,
	[DLNE] [varchar](75) NOT NULL,
	[DLPA] [varchar](25) NULL,
	[DLMA] [varchar](25) NULL,
	[DLMN] [varchar](25) NULL,
	[DLCR] [varchar](20) NOT NULL,
	[DLAP] [decimal](4, 0) NOT NULL,
	[DLMP] [decimal](2, 0) NOT NULL,
	[DLIC] [decimal](14, 2) NOT NULL,
	[DLST] [varchar](2) NOT NULL,
	[DLID] [decimal](14, 2) NULL,
	[DLFP] [decimal](8, 0) NOT NULL,
	[DLER] [varchar](8) NOT NULL,
	[DLESD] [varchar](1) NOT NULL,
	[DLFLI] [varchar](1) NULL,
	[NUMCUOTAS] [int] NULL,
	[DeudaPeriodo] [decimal](15, 2) NULL,
	[Estado] [char](2) NULL,
	[Pago] [bit] NULL,
	[Codigo_proceso] [uniqueidentifier] NULL,
	[bloqueado] [bit] NULL,
	[prorrogado] [bit] NULL,
	[dateCode] [varchar](14) NULL,
	[orden] [int] NULL,
	[EDFLAGP] [char](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TMP_ClienteCuota_AHSP20080926]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TMP_ClienteCuota_AHSP20080926](
	[DLCC] [decimal](9, 0) NOT NULL,
	[DLAN] [decimal](2, 0) NOT NULL,
	[DLAG] [decimal](3, 0) NOT NULL,
	[DLCO] [decimal](4, 0) NOT NULL,
	[DLMO] [varchar](3) NOT NULL,
	[DLNP] [decimal](12, 0) NOT NULL,
	[DLCM] [varchar](20) NOT NULL,
	[DLNE] [varchar](75) NOT NULL,
	[DLCR] [varchar](20) NOT NULL,
	[DLAP] [decimal](4, 0) NOT NULL,
	[DLMP] [char](2) NULL,
	[DLIC] [numeric](18, 0) NULL,
	[DLST] [varchar](2) NOT NULL,
	[DLID] [numeric](18, 0) NULL,
	[DLFP] [varchar](8) NULL,
	[DLER] [varchar](1) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TMP_CLIENTESEXPORT]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TMP_CLIENTESEXPORT](
	[CUSCUN] [decimal](9, 0) NOT NULL,
	[CUSIDN] [varchar](15) NOT NULL,
	[CUSTID] [varchar](4) NOT NULL,
	[CUSNA1] [varchar](45) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tmp_CuotasPorVencerResultado]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tmp_CuotasPorVencerResultado](
	[IDRES] [int] IDENTITY(1,1) NOT NULL,
	[DLNP] [decimal](12, 0) NULL,
	[DLCUN] [decimal](9, 0) NULL,
	[DLCEM] [varchar](15) NULL,
	[DLNE] [varchar](75) NULL,
	[DLOAM] [decimal](15, 2) NULL,
	[DLPRI] [decimal](15, 2) NULL,
	[DLVCA] [varchar](4) NULL,
	[DLVCM] [varchar](2) NULL,
	[DLCNC1] [decimal](3, 0) NULL,
	[DLNCT] [decimal](3, 0) NULL,
	[CPENDIENTES] [decimal](3, 0) NULL,
	[DLITF] [decimal](18, 2) NULL,
	[DLIC] [decimal](14, 2) NULL,
	[DLESD] [varchar](1) NULL,
	[DLCM] [varchar](20) NULL,
	[DLMO] [varchar](3) NULL,
	[FechaCargoCuenta] [datetime] NULL,
	[DLST] [varchar](20) NULL,
	[DLAG] [decimal](3, 0) NULL,
	[DLCTA] [decimal](12, 0) NULL,
	[GP] [varchar](40) NULL,
	[DLSTS] [varchar](1) NULL,
	[FINICRE] [varchar](10) NULL,
	[DLDNI] [varchar](15) NULL,
	[PLDNPR] [varchar](15) NULL,
	[PLDFDE] [varchar](20) NULL,
	[PLCCD] [varchar](1) NULL,
	[BANDES] [varchar](43) NULL,
	[FECGEN] [varchar](10) NULL,
	[CODINS] [varchar](10) NULL,
	[CUODES] [decimal](14, 2) NULL,
	[CODIGO_CLIENTE] [numeric](9, 0) NULL,
	[ANIO_PERIODO] [varchar](4) NULL,
	[MES_PERIODO] [varchar](2) NULL,
	[MODALIDAD] [varchar](20) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TMP_DATABELENLAMBAYEQUE]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TMP_DATABELENLAMBAYEQUE](
	[WCUSEM] [nvarchar](255) NULL,
	[WMONED] [nvarchar](255) NULL,
	[WCTACG] [float] NULL,
	[WDEACC] [float] NULL,
	[WCDGPL] [float] NULL,
	[WCDGST] [nvarchar](255) NULL,
	[WCDCUS] [nvarchar](255) NULL,
	[WDEACU] [float] NULL,
	[WNRDNI] [float] NULL,
	[WCUSNA] [nvarchar](255) NULL,
	[WDEAOA] [float] NULL,
	[WDEAPR] [float] NULL,
	[WNUCPA] [float] NULL,
	[WNUCPG] [float] NULL,
	[WNUCPN] [float] NULL,
	[WFECPV] [float] NULL,
	[WIMPCU] [float] NULL,
	[WIMPDR] [float] NULL,
	[WIMPEF] [float] NULL,
	[WIMPSL] [float] NULL,
	[WFECPG] [float] NULL,
	[WDIREC] [nvarchar](255) NULL,
	[WCIUDA] [nvarchar](255) NULL,
	[WZONPO] [nvarchar](255) NULL,
	[WTLFCA] [float] NULL,
	[WTLFTR] [float] NULL,
	[WTLFOT] [float] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TMP_DATADIRELAMBAYEQUE]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TMP_DATADIRELAMBAYEQUE](
	[WCUSEM] [varchar](45) NOT NULL,
	[WMONED] [varchar](3) NOT NULL,
	[WCTACG] [decimal](16, 0) NOT NULL,
	[WDEACC] [decimal](12, 0) NOT NULL,
	[WCDGPL] [decimal](12, 0) NOT NULL,
	[WCDGST] [varchar](1) NOT NULL,
	[WCDCUS] [varchar](2) NOT NULL,
	[WDEACU] [decimal](9, 0) NOT NULL,
	[WNRDNI] [varchar](15) NOT NULL,
	[WCUSNA] [varchar](45) NOT NULL,
	[WDEAOA] [decimal](15, 2) NOT NULL,
	[WDEAPR] [decimal](15, 2) NOT NULL,
	[WNUCPA] [decimal](3, 0) NOT NULL,
	[WNUCPG] [decimal](3, 0) NOT NULL,
	[WNUCPN] [decimal](3, 0) NOT NULL,
	[WFECPV] [decimal](8, 0) NOT NULL,
	[WIMPCU] [decimal](10, 2) NOT NULL,
	[WIMPDR] [decimal](10, 2) NOT NULL,
	[WIMPEF] [decimal](10, 2) NOT NULL,
	[WIMPSL] [decimal](10, 2) NOT NULL,
	[WFECPG] [decimal](8, 0) NOT NULL,
	[WDIREC] [varchar](107) NOT NULL,
	[WCIUDA] [varchar](30) NOT NULL,
	[WZONPO] [varchar](15) NOT NULL,
	[WTLFCA] [decimal](11, 0) NOT NULL,
	[WTLFTR] [decimal](11, 0) NOT NULL,
	[WTLFOT] [decimal](11, 0) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TMP_DIRE_ICA_ACTIVOS_200705]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TMP_DIRE_ICA_ACTIVOS_200705](
	[Col001] [varchar](255) NULL,
	[Col002] [varchar](255) NULL,
	[Col003] [varchar](255) NULL,
	[Col004] [varchar](255) NULL,
	[Col005] [varchar](255) NULL,
	[Col006] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TMP_DIRE_ICA_CESANTES_200705]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TMP_DIRE_ICA_CESANTES_200705](
	[Col001] [varchar](255) NULL,
	[Col002] [varchar](255) NULL,
	[Col003] [varchar](255) NULL,
	[Col004] [varchar](255) NULL,
	[Col005] [varchar](255) NULL,
	[Col006] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TMP_DIRE_LAMBAYEQUE_20070523]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TMP_DIRE_LAMBAYEQUE_20070523](
	[DNI] [float] NULL,
	[Empleado] [nvarchar](255) NULL,
	[Impor#Registrado] [float] NULL,
	[Impor_Procesado] [float] NULL,
	[Mensaje] [nvarchar](255) NULL,
	[Cta] [float] NULL,
	[De] [float] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TMP_DIRELAMBAYEQUE20070518]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TMP_DIRELAMBAYEQUE20070518](
	[DNI] [float] NULL,
	[Empleado] [nvarchar](255) NULL,
	[Impor_Registrado] [float] NULL,
	[Impor_Procesado] [float] NULL,
	[Mensaje] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TMP_DLCCR]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TMP_DLCCR](
	[DLACC] [float] NULL,
	[DLCCY] [nvarchar](255) NULL,
	[DLVCA] [float] NULL,
	[DLVCM] [float] NULL,
	[DLVCD] [float] NULL,
	[DLNCT] [float] NULL,
	[DLIMC] [float] NULL,
	[DLIPC] [float] NULL,
	[DLITF] [float] NULL,
	[DLSTS] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TMP_DLCND]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TMP_DLCND](
	[AÑCONV] [float] NULL,
	[AGCONV] [float] NULL,
	[COCONV] [float] NULL,
	[DEAACC] [float] NULL,
	[CDGFLG] [nvarchar](255) NULL,
	[CDGEME] [float] NULL,
	[CDGSTS] [nvarchar](255) NULL,
	[CDGCUS] [float] NULL,
	[CDGCRG] [float] NULL,
	[CDGPLA] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TMP_DRECAJAMARCA_20070601]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TMP_DRECAJAMARCA_20070601](
	[DLCC] [decimal](9, 0) NOT NULL,
	[DLAN] [decimal](2, 0) NOT NULL,
	[DLAG] [decimal](3, 0) NOT NULL,
	[DLCO] [decimal](4, 0) NOT NULL,
	[DLMO] [varchar](3) NOT NULL,
	[DLNP] [decimal](12, 0) NOT NULL,
	[DLCM] [varchar](20) NOT NULL,
	[DLNE] [varchar](75) NOT NULL,
	[DLPA] [varchar](25) NULL,
	[DLMA] [varchar](25) NULL,
	[DLMN] [varchar](25) NULL,
	[DLCR] [varchar](20) NOT NULL,
	[DLAP] [decimal](4, 0) NOT NULL,
	[DLMP] [decimal](2, 0) NOT NULL,
	[DLIC] [decimal](14, 2) NOT NULL,
	[DLST] [varchar](1) NOT NULL,
	[DLID] [decimal](14, 2) NULL,
	[DLFP] [decimal](8, 0) NOT NULL,
	[DLER] [varchar](8) NOT NULL,
	[DLESD] [varchar](1) NOT NULL,
	[DLFLI] [varchar](1) NULL,
	[NUMCUOTAS] [int] NULL,
	[DeudaPeriodo] [decimal](15, 2) NULL,
	[Estado] [char](2) NULL,
	[Pago] [bit] NULL,
	[Codigo_proceso] [uniqueidentifier] NULL,
	[bloqueado] [bit] NULL,
	[prorrogado] [bit] NULL,
	[dateCode] [varchar](14) NULL,
	[orden] [int] NULL,
	[EDFLAGP] [char](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TMP_DRIT]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TMP_DRIT](
	[PAGARE] [float] NULL,
	[CLIENTE] [nvarchar](255) NULL,
	[MONTO] [float] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TMP_DRTC]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TMP_DRTC](
	[PAGARE] [float] NULL,
	[CLIENTE] [nvarchar](255) NULL,
	[MONTO] [float] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tmp_ErrorProceso20071204]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tmp_ErrorProceso20071204](
	[PAGARE] [nvarchar](255) NULL,
	[MODULAR] [nvarchar](255) NULL,
	[NOMBRE] [nvarchar](255) NULL,
	[ANIO] [nvarchar](255) NULL,
	[MES] [nvarchar](255) NULL,
	[CUOTA] [nvarchar](255) NULL,
	[DESCUENTO] [nvarchar](255) NULL,
	[DEUDA] [nvarchar](255) NULL,
	[Deuda Actual Proyectada (IBS)] [nvarchar](255) NULL,
	[PAGOIBSPROCESOCOBRANZA] [nvarchar](255) NULL,
	[DIFERENCIA] [float] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TMP_GOBREG]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TMP_GOBREG](
	[PAGARE] [float] NULL,
	[CLIENTE] [nvarchar](255) NULL,
	[MONTO] [float] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TMP_GOBREGLAMB]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TMP_GOBREGLAMB](
	[PAGARE] [float] NULL,
	[CLIENTE] [nvarchar](255) NULL,
	[MONTO] [float] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TMP_HOSPREGDOC]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TMP_HOSPREGDOC](
	[PAGARE] [float] NULL,
	[NOMBRE] [nvarchar](255) NULL,
	[MONTO] [float] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TMP_HOSPREGIONAL]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TMP_HOSPREGIONAL](
	[PAGARE] [float] NULL,
	[CLIENTE] [nvarchar](255) NULL,
	[MONTO] [float] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tmp_junio2007_prorrogados]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tmp_junio2007_prorrogados](
	[DLCC] [decimal](9, 0) NOT NULL,
	[DLAN] [decimal](2, 0) NOT NULL,
	[DLAG] [decimal](3, 0) NOT NULL,
	[DLCO] [decimal](4, 0) NOT NULL,
	[DLMO] [varchar](3) NOT NULL,
	[DLNP] [decimal](12, 0) NOT NULL,
	[DLCM] [varchar](20) NOT NULL,
	[DLNE] [varchar](75) NOT NULL,
	[DLPA] [varchar](25) NULL,
	[DLMA] [varchar](25) NULL,
	[DLMN] [varchar](25) NULL,
	[DLCR] [varchar](20) NOT NULL,
	[DLAP] [decimal](4, 0) NOT NULL,
	[DLMP] [decimal](2, 0) NOT NULL,
	[DLIC] [decimal](14, 2) NOT NULL,
	[DLST] [varchar](1) NOT NULL,
	[DLID] [decimal](14, 2) NULL,
	[DLFP] [decimal](8, 0) NOT NULL,
	[DLER] [varchar](8) NOT NULL,
	[DLESD] [varchar](1) NOT NULL,
	[DLFLI] [varchar](1) NULL,
	[NUMCUOTAS] [int] NULL,
	[DeudaPeriodo] [decimal](15, 2) NULL,
	[Estado] [char](2) NULL,
	[Pago] [bit] NULL,
	[Codigo_proceso] [uniqueidentifier] NULL,
	[bloqueado] [bit] NULL,
	[prorrogado] [bit] NULL,
	[dateCode] [varchar](14) NULL,
	[orden] [int] NULL,
	[EDFLAGP] [char](1) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TMP_utes05200705]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TMP_utes05200705](
	[PAGARE] [float] NULL,
	[CLIENTE] [nvarchar](255) NULL,
	[MONTO] [float] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TMP_UTES08]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TMP_UTES08](
	[PAGARE] [float] NULL,
	[CLIENTE] [nvarchar](255) NULL,
	[MONTO] [float] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 10-Jan-23 12:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuarios](
	[UserId] [varchar](100) NOT NULL,
	[CorreoElectronico] [varchar](100) NULL,
 CONSTRAINT [Usuarios_PK] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 10) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[AlertaCliente] ADD  DEFAULT ((0)) FOR [iAdjunto]
GO
ALTER TABLE [dbo].[Alertas] ADD  DEFAULT ((1)) FOR [iEstadoAlerta]
GO
ALTER TABLE [dbo].[ArchivoConvenios] ADD  DEFAULT ((1)) FOR [iEstado]
GO
ALTER TABLE [dbo].[Cliente] ADD  CONSTRAINT [DF_Cliente_TipoFormatoArchivo]  DEFAULT ('both') FOR [TipoFormatoArchivo]
GO
ALTER TABLE [dbo].[Cliente] ADD  CONSTRAINT [DF_Cliente_FormatoArchivoImportacion]  DEFAULT ('default') FOR [FormatoArchivoImportacion]
GO
ALTER TABLE [dbo].[ClienteCuota] ADD  CONSTRAINT [DF_ClienteCuota_DLESD]  DEFAULT ((0)) FOR [DLESD]
GO
ALTER TABLE [dbo].[ClienteCuota] ADD  CONSTRAINT [DF_ClienteCuota_NUMCUOTAS]  DEFAULT ((0)) FOR [NUMCUOTAS]
GO
ALTER TABLE [dbo].[ClienteCuota] ADD  CONSTRAINT [DF_ClienteCuota_Pago]  DEFAULT ((1)) FOR [Pago]
GO
ALTER TABLE [dbo].[ClienteCuota] ADD  CONSTRAINT [DF_ClienteCuota_bloqueado]  DEFAULT ((0)) FOR [bloqueado]
GO
ALTER TABLE [dbo].[ClienteCuota] ADD  CONSTRAINT [DF_ClienteCuota_prorrogado]  DEFAULT ((0)) FOR [prorrogado]
GO
ALTER TABLE [dbo].[ClienteCuota] ADD  CONSTRAINT [DF_ClienteCuota_orden]  DEFAULT ((-1)) FOR [orden]
GO
ALTER TABLE [dbo].[ClienteCuota] ADD  CONSTRAINT [DF_ClienteCuota_EDFLAGP]  DEFAULT ('') FOR [EDFLAGP]
GO
ALTER TABLE [dbo].[CoordinadorCliente] ADD  DEFAULT ((1)) FOR [iEstado]
GO
ALTER TABLE [dbo].[CuotasProrroga] ADD  CONSTRAINT [DF_CuotasProrroga_EDFLAGP]  DEFAULT ('') FOR [EDFLAGP]
GO
ALTER TABLE [dbo].[em_Proceso] ADD  DEFAULT ((0)) FOR [ImpTotal]
GO
ALTER TABLE [dbo].[em_Proceso] ADD  DEFAULT ((0)) FOR [ImpProcesados]
GO
ALTER TABLE [dbo].[em_Proceso] ADD  DEFAULT ((0)) FOR [ImpErrores]
GO
ALTER TABLE [dbo].[em_Proceso] ADD  DEFAULT ((0)) FOR [EnvTotal]
GO
ALTER TABLE [dbo].[em_Proceso] ADD  DEFAULT ((0)) FOR [EnvProcesados]
GO
ALTER TABLE [dbo].[em_Proceso] ADD  DEFAULT ((0)) FOR [EnvErrores]
GO
ALTER TABLE [dbo].[ErrorArchivoDescuentos] ADD  CONSTRAINT [DF_ErrorArchivoDescuentos_codigo]  DEFAULT (newid()) FOR [codigo]
GO
ALTER TABLE [dbo].[Flag] ADD  CONSTRAINT [DF_Flag_codigo]  DEFAULT (newid()) FOR [codigo]
GO
ALTER TABLE [dbo].[Generica] ADD  CONSTRAINT [DF_Generica_Descripcion]  DEFAULT ('') FOR [Descripcion]
GO
ALTER TABLE [dbo].[Log] ADD  CONSTRAINT [DF_Log_id]  DEFAULT (newid()) FOR [id]
GO
ALTER TABLE [dbo].[LOG_ENVIO_CORREOS] ADD  DEFAULT ((1)) FOR [iEstado]
GO
ALTER TABLE [dbo].[LoteBloqueo] ADD  CONSTRAINT [DF_LoteBloqueo_Fin]  DEFAULT (0) FOR [Fin]
GO
ALTER TABLE [dbo].[LoteBloqueo] ADD  CONSTRAINT [DF_LoteBloqueo_Fecha]  DEFAULT (getdate()) FOR [Fecha]
GO
ALTER TABLE [dbo].[LoteProrroga] ADD  CONSTRAINT [DF_LoteProrroga_Fin]  DEFAULT (0) FOR [Fin]
GO
ALTER TABLE [dbo].[LoteProrroga] ADD  CONSTRAINT [DF_LoteProrroga_Fecha]  DEFAULT (getdate()) FOR [Fecha]
GO
ALTER TABLE [dbo].[Proceso] ADD  CONSTRAINT [DF_Proceso_TmpStatusGen]  DEFAULT ('P2') FOR [TmpStatusGen]
GO
ALTER TABLE [dbo].[PROCESOS_AUTOMATICOS] ADD  DEFAULT ((0)) FOR [iTotalRegistros]
GO
ALTER TABLE [dbo].[PROCESOS_AUTOMATICOS] ADD  DEFAULT ((0)) FOR [iProcesados]
GO
ALTER TABLE [dbo].[PROCESOS_AUTOMATICOS] ADD  DEFAULT ((0)) FOR [iErroneos]
GO
ALTER TABLE [dbo].[PROCESOS_AUTOMATICOS] ADD  DEFAULT ((1)) FOR [iEstado]
GO
ALTER TABLE [dbo].[ResponsableOficina] ADD  DEFAULT ((1)) FOR [iEstado]
GO
ALTER TABLE [dbo].[SystemParameters] ADD  DEFAULT ((1)) FOR [iEstado]
GO
ALTER TABLE [dbo].[TemporalArchivoTexto] ADD  CONSTRAINT [DF_TemporalArchivoTexto_fecha]  DEFAULT (getdate()) FOR [fecha]
GO
ALTER TABLE [dbo].[TemporalArchivoTexto] ADD  CONSTRAINT [DF_TemporalArchivoTexto_Procesa]  DEFAULT (0) FOR [Procesa]
GO
ALTER TABLE [dbo].[Acceso]  WITH CHECK ADD  CONSTRAINT [FK_Acceso_PaginaRestringida] FOREIGN KEY([idPaginaRestringida])
REFERENCES [dbo].[PaginaRestringida] ([id])
GO
ALTER TABLE [dbo].[Acceso] CHECK CONSTRAINT [FK_Acceso_PaginaRestringida]
GO
ALTER TABLE [dbo].[Acceso]  WITH NOCHECK ADD  CONSTRAINT [FK_Acceso_Usuarios] FOREIGN KEY([UserId])
REFERENCES [dbo].[Usuarios] ([UserId])
GO
ALTER TABLE [dbo].[Acceso] NOCHECK CONSTRAINT [FK_Acceso_Usuarios]
GO
ALTER TABLE [dbo].[AccesoSeguridad]  WITH CHECK ADD FOREIGN KEY([iCodPerfil])
REFERENCES [dbo].[PerfilSeguridad] ([iCodPerfil])
GO
ALTER TABLE [dbo].[ClienteCuota]  WITH NOCHECK ADD  CONSTRAINT [FK_ClienteCuota_Proceso] FOREIGN KEY([Codigo_proceso])
REFERENCES [dbo].[Proceso] ([Codigo_proceso])
GO
ALTER TABLE [dbo].[ClienteCuota] CHECK CONSTRAINT [FK_ClienteCuota_Proceso]
GO
ALTER TABLE [dbo].[ClienteFirma]  WITH CHECK ADD  CONSTRAINT [FK_ClienteFirma_Cliente] FOREIGN KEY([Codigo_Cliente])
REFERENCES [dbo].[Cliente] ([Codigo_Cliente])
GO
ALTER TABLE [dbo].[ClienteFirma] CHECK CONSTRAINT [FK_ClienteFirma_Cliente]
GO
ALTER TABLE [dbo].[ClienteFirma]  WITH CHECK ADD  CONSTRAINT [FK_ClienteFirma_FirmaEjecutivo] FOREIGN KEY([EjecutivoId])
REFERENCES [dbo].[FirmaEjecutivo] ([EjecutivoId])
GO
ALTER TABLE [dbo].[ClienteFirma] CHECK CONSTRAINT [FK_ClienteFirma_FirmaEjecutivo]
GO
ALTER TABLE [dbo].[ClienteFirma]  WITH NOCHECK ADD  CONSTRAINT [FK_ClienteFirma_Usuarios] FOREIGN KEY([UserId])
REFERENCES [dbo].[Usuarios] ([UserId])
GO
ALTER TABLE [dbo].[ClienteFirma] NOCHECK CONSTRAINT [FK_ClienteFirma_Usuarios]
GO
ALTER TABLE [dbo].[em_ListadoCuotas]  WITH NOCHECK ADD  CONSTRAINT [fk_em_ListadoCuotas] FOREIGN KEY([id_proceso])
REFERENCES [dbo].[em_Proceso] ([id_proceso])
GO
ALTER TABLE [dbo].[em_ListadoCuotas] CHECK CONSTRAINT [fk_em_ListadoCuotas]
GO
ALTER TABLE [dbo].[ErrorArchivoDescuentos]  WITH NOCHECK ADD  CONSTRAINT [FK_ErrorArchivoDescuentos_Proceso] FOREIGN KEY([Codigo_proceso])
REFERENCES [dbo].[Proceso] ([Codigo_proceso])
GO
ALTER TABLE [dbo].[ErrorArchivoDescuentos] CHECK CONSTRAINT [FK_ErrorArchivoDescuentos_Proceso]
GO
ALTER TABLE [dbo].[Proceso]  WITH NOCHECK ADD  CONSTRAINT [Cliente_Proceso_FK1] FOREIGN KEY([Codigo_Cliente])
REFERENCES [dbo].[Cliente] ([Codigo_Cliente])
GO
ALTER TABLE [dbo].[Proceso] CHECK CONSTRAINT [Cliente_Proceso_FK1]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Almacena un codigo asociado para el formato' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FormatoArchivoCliente', @level2type=N'COLUMN',@level2name=N'ValorAsociado'
GO
