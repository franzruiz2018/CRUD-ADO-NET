/****** Creacion de la tabla Alumno ******/

CREATE TABLE [dbo].[Alumno1](
	[IdAlumno] [int] IDENTITY(1,1) NOT NULL,
	[NombreAlumno] [varchar](100) NULL,
	[DniAlumno] [int] NULL,
	[Registro] [datetime] NULL CONSTRAINT [DF_Alumno_Registro]  DEFAULT (getdate()),
 CONSTRAINT [PK_Alumno] PRIMARY KEY CLUSTERED 
(
	[IdAlumno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

go
/****** Creacion de los procedimientos almacenados ******/

--Listar Alumnos
-------------------
  create procedure sp_listar_alumno
  as
  begin
  select * from Alumno
  end

  exec sp_listar_alumno
  select * from Alumno
  
  go

--Registrar Alumnos
-------------------
  create procedure sp_registrar_alumno
  @NombreAlumno varchar(100),
  @DniAlumno int
  as
  begin
  insert into Alumno (NombreAlumno,DniAlumno) values (@NombreAlumno,@DniAlumno)
  end

  exec sp_registrar_alumno 'Juan Dias',12345678

  select * from Alumno where DniAlumno=12345678

  go
--Actualizar Alumnos
-------------------
  create procedure sp_actualizar_alumno
  @IdAlumno int,
   @NombreAlumno varchar(100),
  @DniAlumno int
  as
  begin
  update Alumno set NombreAlumno=@NombreAlumno , DniAlumno=@DniAlumno
  where IdAlumno=@IdAlumno
  end

  exec sp_actualizar_alumno 2668,'Juan Dias Solorsano' , 12345678

  select * from Alumno where DniAlumno=12345678

  go

--Borrar Alumnos
-------------------
  create procedure sp_borrar_alumno
  @IdAlumno int
  as
  begin
  delete Alumno where IdAlumno=@IdAlumno
  end

  exec sp_borrar_alumno 2668


/****** Creacion de los datos ejemplos ******/

INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1, N'MARIA INES ABADIE FOSSATTI', 995234, CAST(N'2018-04-21 13:17:43.767' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2, N'RAQUEL ELIZABET ABAL NICOLARI', 1249609, CAST(N'2018-04-21 13:17:43.820' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (3, N'MARÍA ROSARIO ABALDE MARTINEZ', 1385554, CAST(N'2018-04-21 13:17:43.883' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (4, N'ALBERTO OSCAR ABALOS ROCHON', 2543328, CAST(N'2018-04-21 13:17:43.923' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (5, N'ARIEL ABARNO SILVA', 3326849, CAST(N'2018-04-21 13:17:43.967' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (6, N'WINSTON FRANKLIN ABASCAL BELOQUI', 3588497, CAST(N'2018-04-21 13:17:44.020' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (7, N'PABLO DANIEL ABDALA SCHWARZ', 1987304, CAST(N'2018-04-21 13:17:44.060' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (8, N'MERCEDES MARIA ABDALA SOSA', 1455322, CAST(N'2018-04-21 13:17:44.107' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (9, N'JORGE MARIA ABIN DE MARIA', 1247369, CAST(N'2018-04-21 13:17:44.153' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (10, N'ALCIDES ABREU HERNANDEZ', 3593956, CAST(N'2018-04-21 13:17:44.200' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (11, N'MIRTA GRACIELA ABREU NUÑEZ', 3449648, CAST(N'2018-04-21 13:17:44.243' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (12, N'SERGIO ABREU BONILLA', 1033368, CAST(N'2018-04-21 13:17:44.290' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (13, N'DORITA ABUCHALJA SEADE', 1178833, CAST(N'2018-04-21 13:17:44.333' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (14, N'HUGO JOSE ACHUGAR FERRARI', 655000, CAST(N'2018-04-21 13:17:44.503' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (15, N'JOSE BARTOLOME ACOSTA MADERA', 3877670, CAST(N'2018-04-21 13:17:44.550' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (16, N'NELSON EDUARDO ACOSTA MARTINEZ', 1679960, CAST(N'2018-04-21 13:17:44.593' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (17, N'JUAN CARLOS ACOSTA PEREZ', 3205255, CAST(N'2018-04-21 13:17:44.640' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (18, N'MARTHA VANDA ACOSTA PEREIRA', 1793175, CAST(N'2018-04-21 13:17:44.687' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (19, N'MABEL ACOSTA SOSA', 1250238, CAST(N'2018-04-21 13:17:44.730' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (20, N'EFRAIN ANDRES ACUÑA CABRERA', 3694615, CAST(N'2018-04-21 13:17:44.780' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (21, N'VICTOR ESTEBAN ACUÑA GUTIERREZ', 1887660, CAST(N'2018-04-21 13:17:44.827' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (22, N'GERARDO ADDIEGO PROSPERO', 1704998, CAST(N'2018-04-21 13:17:44.873' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (23, N'ERNESTO AGAZZI SARASOLA', 944279, CAST(N'2018-04-21 13:17:44.917' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (24, N'STELLA SERRANA AGUERRE PEREIRO', 4118008, CAST(N'2018-04-21 13:17:44.960' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (25, N'TABARE AGUERRE LOMBARDO', 1388182, CAST(N'2018-04-21 13:17:45.003' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (26, N'SILVIA AGUIAR ', 961566, CAST(N'2018-04-21 13:17:45.047' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (27, N'CLAUDIO MARTIN AGUILAR PAIS', 3581737, CAST(N'2018-04-21 13:17:45.093' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (28, N'VICTOR HUGO AGUILAR AGUILAR', 3711927, CAST(N'2018-04-21 13:17:45.140' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (29, N'JOSE EDUARDO AGUIÑAGA CORBO', 1206092, CAST(N'2018-04-21 13:17:45.183' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (30, N'JOSE MARIA AGUIRRE ', 3589412, CAST(N'2018-04-21 13:17:45.227' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (31, N'MARÍA ROSA AGUIRRE SEPILOV', 1842343, CAST(N'2018-04-21 13:17:45.273' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (32, N'CARLOS WALDEMAR AGUIRRE DANIELE', 1867314, CAST(N'2018-04-21 13:17:45.317' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (33, N'ESTEBAN RAUL AGUSTONI RIJO', 1941813, CAST(N'2018-04-21 13:17:45.360' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (34, N'ROBERTO AIRALDI GOMEZ', 3420734, CAST(N'2018-04-21 13:17:45.400' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (35, N'EDGARDO RAMON AIZCORBE BARCIA', 1057290, CAST(N'2018-04-21 13:17:45.450' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (36, N'DENISE HAIFA AKIKI BERHQUET', 1648800, CAST(N'2018-04-21 13:17:45.493' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (37, N'MIGUEL ANGEL ALANIZ ECHEVERRY', 1785630, CAST(N'2018-04-21 13:17:45.537' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (38, N'CARLOS ALBISU ', 3420710, CAST(N'2018-04-21 13:17:45.583' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (39, N'MANUEL NARCISO ALBISU BRITOS', 3508520, CAST(N'2018-04-21 13:17:45.627' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (40, N'RUBEN DARIO ALBOA ', 3218656, CAST(N'2018-04-21 13:17:45.677' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (41, N'MARIO BERNABE ALBORNOZ DE MELLO', 2637003, CAST(N'2018-04-21 13:17:45.720' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (42, N'YAMANDU ALCANTARA SANCHEZ', 1887748, CAST(N'2018-04-21 13:17:45.763' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (43, N'NILSON ANGEL ALCARRAZ BARRIO', 1844698, CAST(N'2018-04-21 13:17:45.807' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (44, N'ASUCENA ALCINA PEÑA', 3502446, CAST(N'2018-04-21 13:17:45.850' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (45, N'LUIS ALDABE DINI', 1546970, CAST(N'2018-04-21 13:17:45.897' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (46, N'RICARDO ALDABE DINI', 1671407, CAST(N'2018-04-21 13:17:45.940' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (47, N'DANIEL ALDECOSEA PEDROZZA', 1433626, CAST(N'2018-04-21 13:17:45.987' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (48, N'MIGUEL ALEGRETTI CAMMARANO', 4308037, CAST(N'2018-04-21 13:17:46.030' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (49, N'JOSE ANTONIO ALEM DEACES', 1160780, CAST(N'2018-04-21 13:17:46.080' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (50, N'HUMBERTO RAMÀN ALFARO MENDOZA', 1562739, CAST(N'2018-04-21 13:17:46.120' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (51, N'JUAN CARLOS ALFARO CHIAPPA', 3069642, CAST(N'2018-04-21 13:17:46.167' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (52, N'MARIA GABRIELA ALGORTA RUSIÑOL', 1209007, CAST(N'2018-04-21 13:17:46.210' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (53, N'FELIPE JOSE ALGORTA BRIT', 4210009, CAST(N'2018-04-21 13:17:46.253' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (54, N'VERONICA ALLES VEDAIN', 1913552, CAST(N'2018-04-21 13:17:46.297' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (55, N'MARÍA LUISA ALMADA BLENGIO', 1512103, CAST(N'2018-04-21 13:17:46.340' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (56, N'NESTOR DANIEL ALMADA MONTANS', 3291049, CAST(N'2018-04-21 13:17:46.383' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (57, N'LUIS LEONARDO ALMAGRO LEMES', 2956258, CAST(N'2018-04-21 13:17:46.427' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (58, N'MARIA GRACIELA ALMANZA DE LOS SANTOS', 2634046, CAST(N'2018-04-21 13:17:46.473' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (59, N'SILVANA JACQULINE ALMEDA MOREIRA', 4306400, CAST(N'2018-04-21 13:17:46.517' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (60, N'GERARDO ALMEIDA BERDIÑAS', 1494515, CAST(N'2018-04-21 13:17:46.560' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (61, N'GABRIELA ALMIRATI SAIBENE', 1936797, CAST(N'2018-04-21 13:17:46.610' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (62, N'ALEJANDRO ANDRES ALMIRON BELEN', 2523588, CAST(N'2018-04-21 13:17:46.653' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (63, N'JOSE LUIS ALMIRON FREDES', 3679864, CAST(N'2018-04-21 13:17:46.700' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (64, N'LEONARDO GUSTAVO ALONSO CHIAPPARA', 1489144, CAST(N'2018-04-21 13:17:46.743' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (65, N'VERONICA MARIA ALONSO MONTAÑO', 2608509, CAST(N'2018-04-21 13:17:46.787' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (66, N'GONZALO ALONSO MAY', 2795091, CAST(N'2018-04-21 13:17:46.830' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (67, N'NOEMI LYDIA ALONSO FIRPI', 1045549, CAST(N'2018-04-21 13:17:46.873' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (68, N'MARIA DEL CARMEN ALONSO RODRIGUEZ', 1428880, CAST(N'2018-04-21 13:17:46.917' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (69, N'MARIA JIMENA ALONSO HAUW', 2020923, CAST(N'2018-04-21 13:17:46.960' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (70, N'MARY CRISTINA ALONSO FLUMINI', 1177094, CAST(N'2018-04-21 13:17:47.003' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (71, N'ROSA M ALPUY CASAS', 3822792, CAST(N'2018-04-21 13:17:47.047' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (72, N'RAMIRO ALVAREZ DE LA FUENTE', 4064840, CAST(N'2018-04-21 13:17:47.090' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (73, N'LUIS ALVAREZ FERNANDEZ', 1065893, CAST(N'2018-04-21 13:17:47.137' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (74, N'JORGE ANTONIO ALVAREZ RODRIGUEZ', 1184649, CAST(N'2018-04-21 13:17:47.180' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (75, N'PABLO EMILIANO ALVAREZ LOPEZ', 3619193, CAST(N'2018-04-21 13:17:47.223' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (76, N'JUAN MARTIN ALVAREZ MAUVEZIN', 2683926, CAST(N'2018-04-21 13:17:47.267' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (77, N'ANALIA ALVAREZ CORRAL', 1693139, CAST(N'2018-04-21 13:17:47.310' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (78, N'ALVARO BOLIVAR ALVAREZ FERNANDEZ', 2869954, CAST(N'2018-04-21 13:17:47.353' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (79, N'ALFREDO ALVAREZ BOGLIOLO', 3891262, CAST(N'2018-04-21 13:17:47.397' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (80, N'ALEJANDRO ALVAREZ IZETTA', 1849418, CAST(N'2018-04-21 13:17:47.440' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (81, N'FERNANDO TOMAS ALVAREZ ALONZO', 3794634, CAST(N'2018-04-21 13:17:47.487' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (82, N'HUGO ALVAREZ SALDIAS', 1729194, CAST(N'2018-04-21 13:17:47.527' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (83, N'ALICIA TERESITA ALVAREZ MARTINEZ', 1879671, CAST(N'2018-04-21 13:17:47.573' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (84, N'GERARDO JAVIER ALVAREZ ESCURSELL', 1791569, CAST(N'2018-04-21 13:17:47.617' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (85, N'HUBERTO NILSON ALVAREZ SAMUDIO', 3056144, CAST(N'2018-04-21 13:17:47.663' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (86, N'ANTONIO ALVAREZ ', 2882513, CAST(N'2018-04-21 13:17:47.707' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (87, N'MIGUEL ANGEL ALVES ORTIZ', 732576, CAST(N'2018-04-21 13:17:47.750' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (88, N'MARTHA ELIZABETH ALVES DE SIMAS GRIMON', 1672719, CAST(N'2018-04-21 13:17:47.797' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (89, N'VICTOR RICARDO ALVEZ IZQUIERDO', 1517320, CAST(N'2018-04-21 13:17:47.840' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (90, N'RUBEN ARI ALVEZ VIERA', 2015057, CAST(N'2018-04-21 13:17:47.887' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (91, N'ROQUE GASTON ALVEZ VIERA', 1682884, CAST(N'2018-04-21 13:17:47.927' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (92, N'AMERICO ALVEZ ', 1580476, CAST(N'2018-04-21 13:17:47.970' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (93, N'ANA CAROLINA ALVEZ HOURCADE', 4112691, CAST(N'2018-04-21 13:17:48.013' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (94, N'EVA MYRIAN ALVEZ VILA', 2528667, CAST(N'2018-04-21 13:17:48.060' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (95, N'ALVARO MARTIN ALZA SASTRE', 4251065, CAST(N'2018-04-21 13:17:48.100' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (96, N'MARISA DANIELA ALZA FIORELLI', 2918188, CAST(N'2018-04-21 13:17:48.150' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (97, N'JUAN PABLO ALZUGARAY SARALEGUI', 4460925, CAST(N'2018-04-21 13:17:48.193' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (98, N'FERNANDO AMADO FERNANDEZ', 4157354, CAST(N'2018-04-21 13:17:48.237' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (99, N'SYLVIA AMADO APARICIO', 1543754, CAST(N'2018-04-21 13:17:48.280' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (100, N'MARCELO AMADO CHALELA', 1298960, CAST(N'2018-04-21 13:17:48.323' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (101, N'HUGO ARIEL AMARAL ROCCA', 3347677, CAST(N'2018-04-21 13:17:48.367' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (102, N'GERARDO ANDRES AMARILLA DE NICOLA', 1980232, CAST(N'2018-04-21 13:17:48.410' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (103, N'JUAN JUSTO AMARO CEDRES', 3560400, CAST(N'2018-04-21 13:17:48.453' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (104, N'RUBEN JOSE AMARO MACHADO', 1995560, CAST(N'2018-04-21 13:17:48.497' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (105, N'RUBEN WILLIAMS AMATO LUSARARIAN', 1417798, CAST(N'2018-04-21 13:17:48.543' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (106, N'ELDER DIEGO AMENDOLA MAZZULA', 2002885, CAST(N'2018-04-21 13:17:48.593' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (107, N'FERNANDO AMESTOY ROSSO', 1638511, CAST(N'2018-04-21 13:17:48.643' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (108, N'LUIS AMIL LOPEZ', 1318344, CAST(N'2018-04-21 13:17:48.690' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (109, N'IRLE MAIDER AMIR AMY', 3131756, CAST(N'2018-04-21 13:17:48.733' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (110, N'FRANCISCO JAVIER AMORENA FERNANDEZ', 1552187, CAST(N'2018-04-21 13:17:48.777' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (111, N'JOSE GERARDO AMORIN BATLLE', 1167699, CAST(N'2018-04-21 13:17:48.823' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (112, N'JOSE ANTONIO AMY TEJERA', 2945603, CAST(N'2018-04-21 13:17:48.867' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (113, N'LUIS HECTOR ANASTASIA CORREA', 2902840, CAST(N'2018-04-21 13:17:48.913' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (114, N'NIRIA ANASTASIA SUAREZ', 3529236, CAST(N'2018-04-21 13:17:48.953' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (115, N'HECTOR DANIEL ANCHETA FRANCA', 3691680, CAST(N'2018-04-21 13:17:49.000' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (116, N'JAVIER ZENON ANDRADE DUHALDE', 2521816, CAST(N'2018-04-21 13:17:49.040' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (117, N'LUIS ALBERTO ANDRADE DEFELIPO', 1481093, CAST(N'2018-04-21 13:17:49.087' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (118, N'RAFAEL ANDRADE BENOIT', 2699756, CAST(N'2018-04-21 13:17:49.130' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (119, N'ALBERTO FABIAN ANDRADE VALDEZ', 1381076, CAST(N'2018-04-21 13:17:49.173' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (120, N'MARIA ISABEL ANDREONI DA MARIA', 1200729, CAST(N'2018-04-21 13:17:49.220' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (121, N'SEBASTIAN ANDUJAR ALVAREZ DE RON', 3902063, CAST(N'2018-04-21 13:17:49.263' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (122, N'ANA MONICA ANGELINI IGUINI', 4239952, CAST(N'2018-04-21 13:17:49.307' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (123, N'NORA ALICIA ANNUNZIATTO MARTINO', 1175001, CAST(N'2018-04-21 13:17:49.350' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (124, N'WALDEMAR HEBERT ANNUNZIATTO MARTINO', 1278052, CAST(N'2018-04-21 13:17:49.397' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (125, N'MARIA MERCEDES ANTIA BEHERENS', 1651970, CAST(N'2018-04-21 13:17:49.440' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (126, N'ENRIQUE ANDRES ANTIA BEHRENS', 927471, CAST(N'2018-04-21 13:17:49.483' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (127, N'FERNANDO ANTIA BEHRENS', 1215775, CAST(N'2018-04-21 13:17:49.527' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (128, N'ALEJANDRO ANTONELLI CORBI', 1382553, CAST(N'2018-04-21 13:17:49.570' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (129, N'OLIVERA ANTONIO ALBINO', 3798607, CAST(N'2018-04-21 13:17:49.617' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (130, N'FREDIS ANTUNEZ MARTINEZ', 2560122, CAST(N'2018-04-21 13:17:49.667' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (131, N'MARIO ANZA LEON', 2574858, CAST(N'2018-04-21 13:17:49.710' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (132, N'PABLO ANZALONE CANTONI', 1260340, CAST(N'2018-04-21 13:17:49.753' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (133, N'DANIEL APATIA SANTINI', 2693084, CAST(N'2018-04-21 13:17:49.797' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (134, N'PEDRO ROQUE APEZTEGUIA SETELICH', 1227407, CAST(N'2018-04-21 13:17:49.840' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (135, N'GABRIEL APOLO GOYOAGA', 1694927, CAST(N'2018-04-21 13:17:49.887' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (136, N'RAMON FRANCISCO APPRATTO LORENZO', 733744, CAST(N'2018-04-21 13:17:49.930' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (137, N'LAURA AQUINO DOMINGUEZ', 3049570, CAST(N'2018-04-21 13:17:49.977' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (138, N'MIRIAM AMELIA ARADA MIER', 3627055, CAST(N'2018-04-21 13:17:50.020' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (139, N'ROQUE DANIEL ARAMBULA LEAL', 1838770, CAST(N'2018-04-21 13:17:50.063' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (140, N'IGNACIO ARAMBURU ', 3152549, CAST(N'2018-04-21 13:17:50.110' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (141, N'JOSE LUIS ARAMBURU DE LA ROSA', 3474511, CAST(N'2018-04-21 13:17:50.157' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (142, N'DANIEL HUGO ARANCIO ROMANO', 1502936, CAST(N'2018-04-21 13:17:50.203' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (143, N'MARY BEATRIZ ARAUJO DUARTE', 2593271, CAST(N'2018-04-21 13:17:50.247' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (144, N'LIDIA ARAUJO SERRON', 2775788, CAST(N'2018-04-21 13:17:50.290' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (145, N'HUGO ROMAN ARAUJO MENA', 1808592, CAST(N'2018-04-21 13:17:50.333' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (146, N'GABRIELA --- ARAUJO NICOLINI', 1651345, CAST(N'2018-04-21 13:17:50.380' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (147, N'ALICIA ARAUJO REFRESQUINI', 1796775, CAST(N'2018-04-21 13:17:50.423' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (148, N'HUBERT ARBILDI LOPEZ', 1526118, CAST(N'2018-04-21 13:17:50.467' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (149, N'GUALBERTO ARBIZA ', 3355132, CAST(N'2018-04-21 13:17:50.510' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (150, N'EDUARDO ARBULO ', 1114968, CAST(N'2018-04-21 13:17:50.553' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (151, N'MATEO DANIEL ARBULO FERREIRA', 4158703, CAST(N'2018-04-21 13:17:50.610' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (152, N'DIVAR DANIEL ARCIERI RODRIGUEZ', 2571339, CAST(N'2018-04-21 13:17:50.653' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (153, N'JOSE SEBASTIAN ARELLANO AYALA', 3675869, CAST(N'2018-04-21 13:17:50.700' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (154, N'ADRIANA RAQUEL ARENAS BARREIRO', 1214319, CAST(N'2018-04-21 13:17:50.743' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (155, N'MIRIAM GUIOMAR AREOSA CAZAJOUS', 1190993, CAST(N'2018-04-21 13:17:50.787' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (156, N'CARLOS VALERIO AREZO POSADA', 3226620, CAST(N'2018-04-21 13:17:50.830' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (157, N'ENRIQUE AREZO NANDE', 2890624, CAST(N'2018-04-21 13:17:50.873' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (158, N'ISMAEL ARGUELLO RODRIGUEZ', 3083201, CAST(N'2018-04-21 13:17:50.920' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (159, N'MARIA ELIDA ARGUELLO WETHERALL', 2907635, CAST(N'2018-04-21 13:17:50.960' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (160, N'MANUEL ERNESTO ARIAS PICHON', 1008529, CAST(N'2018-04-21 13:17:51.003' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (161, N'RIVERA ARIAS MORALES', 1512665, CAST(N'2018-04-21 13:17:51.050' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (162, N'RICARDO ARIGON BACHINI', 1140927, CAST(N'2018-04-21 13:17:51.093' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (163, N'RODRIGO MIGUEL ARIM IHLENFELD', 1751699, CAST(N'2018-04-21 13:17:51.140' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (164, N'JUAN CARLOS ARISMENDES MARTINEZ', 4010125, CAST(N'2018-04-21 13:17:51.187' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (165, N'CARLOS DOMINGO ARISMENDI CESAR', 1460395, CAST(N'2018-04-21 13:17:51.227' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (166, N'JOSE ANDRES AROCENA ARGUL', 3056835, CAST(N'2018-04-21 13:17:51.290' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (167, N'RODRIGO AROCENA LINN', 1478116, CAST(N'2018-04-21 13:17:51.337' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (168, N'OSCAR ARRAMBIDE MONCE', 2711772, CAST(N'2018-04-21 13:17:51.387' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (169, N'ROQUE EDISON ARREGUI MARSANO', 2936828, CAST(N'2018-04-21 13:17:51.440' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (170, N'CLAUDIA ARRIAGA VILLAMIL', 1952177, CAST(N'2018-04-21 13:17:51.490' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (171, N'ELIZABETH ARRIETA LUCCHETTI', 1709720, CAST(N'2018-04-21 13:17:51.540' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (172, N'SERGIO RAUL ARRIGONI BERAZA', 3198795, CAST(N'2018-04-21 13:17:51.590' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (173, N'JOSE PABLO ARROYAL RODRIGUEZ', 4271593, CAST(N'2018-04-21 13:17:51.647' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (174, N'SILVIA ARROYO FERREIRO', 1283384, CAST(N'2018-04-21 13:17:51.700' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (175, N'SERGIO ARTAZU D`APOLITO', 3039078, CAST(N'2018-04-21 13:17:51.747' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (176, N'MARIA TERESA ARTECONA GULLA', 1900756, CAST(N'2018-04-21 13:17:51.800' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (177, N'JULIO CESAR ARTIGAS LEMA', 1799159, CAST(N'2018-04-21 13:17:51.847' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (178, N'ENRIQUE ARTOLA NARANJA', 4053790, CAST(N'2018-04-21 13:17:51.897' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (179, N'ADRIANA LAURA ARTURO LOUREIRO', 1343426, CAST(N'2018-04-21 13:17:51.947' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (180, N'SERGIO MARIO ASHFIELD PRATS', 1745474, CAST(N'2018-04-21 13:17:52.000' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (181, N'MIGUEL MEDARDO ASQUETA SOÑORA', 3667695, CAST(N'2018-04-21 13:17:52.047' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (182, N'ALFREDO ANGEL ASTI CARLI', 1147469, CAST(N'2018-04-21 13:17:52.097' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (183, N'DIEGO ASTIAZARAN PEREZ', 4601090, CAST(N'2018-04-21 13:17:52.147' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (184, N'DARIO ASTOR PORRINI', 3518167, CAST(N'2018-04-21 13:17:52.197' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (185, N'DANILO ASTORI ', 809114, CAST(N'2018-04-21 13:17:52.243' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (186, N'JUAN ATILIO TAPIA', 2003170, CAST(N'2018-04-21 13:17:52.293' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (187, N'JOSE MARIA AUNCHAIN ESPONDA', 2703935, CAST(N'2018-04-21 13:17:52.347' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (188, N'CARLOS FRANCISCO AUNCHAYNA POLLA', 3024649, CAST(N'2018-04-21 13:17:52.397' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (189, N'LUIS ALBERTO AVELLANAL SUAREZ', 4098958, CAST(N'2018-04-21 13:17:52.450' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (190, N'OLDEMAR JACINTO AVERO DIVERIO', 1455725, CAST(N'2018-04-21 13:17:52.493' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (191, N'ANDREA AVIAGA ', 3456159, CAST(N'2018-04-21 13:17:52.547' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (192, N'DARDO AVILA RECUERO', 3587713, CAST(N'2018-04-21 13:17:52.600' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (193, N'ANA PATRICIA AYALA SANCHIS', 3484354, CAST(N'2018-04-21 13:17:52.650' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (194, N'BEATRIZ MARIA AZAMBUJA PATRONE', 1883622, CAST(N'2018-04-21 13:17:52.703' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (195, N'TERESITA AZAMBUYA AGUERRE', 1265872, CAST(N'2018-04-21 13:17:52.753' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (196, N'HERNANN ERIC AZARETTO MAÑANA', 1712939, CAST(N'2018-04-21 13:17:52.807' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (197, N'PABLO EDUARDO AZCUE AIZPUN', 3011045, CAST(N'2018-04-21 13:17:52.850' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (198, N'KARINA AZURIZ CANNELLA', 3613452, CAST(N'2018-04-21 13:17:52.897' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (199, N'JOSÉ ALBERTO BACCARO BLANC', 2735653, CAST(N'2018-04-21 13:17:52.940' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (200, N'CARLOS RENZO BACCELLI ROSSARI', 1059058, CAST(N'2018-04-21 13:17:52.983' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (201, N'VICTOR BACHMANN ', 1225736, CAST(N'2018-04-21 13:17:53.030' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (202, N'RUBEN ANIBAL BACIGALUPE AUNES', 2875904, CAST(N'2018-04-21 13:17:53.070' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (203, N'GABRIEL ALEJANDRO BADANO BURONI', 1752109, CAST(N'2018-04-21 13:17:53.117' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (204, N'NINO BAEZ FERRARO', 3540133, CAST(N'2018-04-21 13:17:53.160' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (205, N'DORA BAGDASSARIAN KETENYIAN', 883779, CAST(N'2018-04-21 13:17:53.203' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (206, N'HEBERT BAGNOLI D''IMPERIO', 1211452, CAST(N'2018-04-21 13:17:53.247' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (207, N'LUIS MARIA BAJAC MASSONE', 1115302, CAST(N'2018-04-21 13:17:53.290' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (208, N'GONZALO BALARINI TEJERA', 1445501, CAST(N'2018-04-21 13:17:53.333' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (209, N'JUAN DANIEL BALBIS GALLO', 3534799, CAST(N'2018-04-21 13:17:53.377' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (210, N'JOSE ALBERTO BALCALDI TESAURO', 1391656, CAST(N'2018-04-21 13:17:53.420' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (211, N'ADRIANA BALCARCEL NICOLETTI', 2000044, CAST(N'2018-04-21 13:17:53.460' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (212, N'DANIEL BERNABE BALDASSARI BARBOZA', 1480917, CAST(N'2018-04-21 13:17:53.507' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (213, N'CARLOS BALDASSARI ARISMENDI', 3455738, CAST(N'2018-04-21 13:17:53.550' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (214, N'CARLOS HUMBERTO BALDASSINI BALATTI', 937802, CAST(N'2018-04-21 13:17:53.593' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (215, N'IVONNE BALDOMIR FELIPEZ', 975776, CAST(N'2018-04-21 13:17:53.637' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (216, N'GONZALO RAMON BALLESTRINO SEVERO', 1866545, CAST(N'2018-04-21 13:17:53.683' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (217, N'WASHINGTON ULISES BALLIVA GIMENEZ', 1243231, CAST(N'2018-04-21 13:17:53.723' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (218, N'ALBERTO BALOSTRO CAMPOS', 2557876, CAST(N'2018-04-21 13:17:53.770' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (219, N'GONZALO BALSEIRO GIGLIO', 3580651, CAST(N'2018-04-21 13:17:53.813' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (220, N'EDUARDO IGNACIO BANDEIRA CASTELLS', 968534, CAST(N'2018-04-21 13:17:53.857' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (221, N'MARIO ISIDRO BANDERA PERG', 3686444, CAST(N'2018-04-21 13:17:53.903' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (222, N'JULIO CESAR BANGO ALVAREZ', 3326366, CAST(N'2018-04-21 13:17:53.943' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (223, N'HECTOR CARLOS BAPTISTA ETCHATZ', 3606702, CAST(N'2018-04-21 13:17:53.987' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (224, N'GUSTAVO ADOLFO BAPTISTA DOMATO', 1524010, CAST(N'2018-04-21 13:17:54.030' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (225, N'CARLOS BARAIBAR PONCE DE LEON', 845681, CAST(N'2018-04-21 13:17:54.073' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (226, N'VERONICA BARANZANO CIBILS', 1475134, CAST(N'2018-04-21 13:17:54.117' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (227, N'EDUARDO ALBERTO BARBACHAN SUAREZ', 3319978, CAST(N'2018-04-21 13:17:54.163' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (228, N'MARIO NELSON BARBATO ALMANDOS', 1579090, CAST(N'2018-04-21 13:17:54.210' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (229, N'GONZALO MAURICIO BARBOZA SILVA', 3297979, CAST(N'2018-04-21 13:17:54.250' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (230, N'GRACIELA TERESA BARCELONA CAMPELO', 1149395, CAST(N'2018-04-21 13:17:54.293' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (231, N'GUSTAVO ADRIAN BARES SILVA', 3120531, CAST(N'2018-04-21 13:17:54.337' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (232, N'MARIO  GUIDO BARITE ROQUETA', 1356405, CAST(N'2018-04-21 13:17:54.380' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (233, N'WILSON RAMON BARITE PEREZ', 3514482, CAST(N'2018-04-21 13:17:54.420' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (234, N'PABLO HUGO BARLETTA AILLAUME', 1508689, CAST(N'2018-04-21 13:17:54.463' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (235, N'CARLOS BARONE ZABALLA', 1620717, CAST(N'2018-04-21 13:17:54.507' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (236, N'WLADIMIR BARQUET FASSIO', 3606131, CAST(N'2018-04-21 13:17:54.550' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (237, N'VICTOR BARRAGAN CARABALLO', 1623920, CAST(N'2018-04-21 13:17:54.597' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (238, N'SILVESTRE --- BARREDA RIVERO', 2946477, CAST(N'2018-04-21 13:17:54.640' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (239, N'FABRIELA BARREIRO ', 1744948, CAST(N'2018-04-21 13:17:54.687' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (240, N'GERMAN BARREIRO MACCIO', 1392121, CAST(N'2018-04-21 13:17:54.727' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (241, N'ISMAEL RAUL BARREIRO CARSOGLIO', 1273086, CAST(N'2018-04-21 13:17:54.770' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (242, N'RAQUEL AMALIA BARREIRO CARSOGLIO', 1142688, CAST(N'2018-04-21 13:17:54.813' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (243, N'HUMBERTO BARRELLA ROSA', 1193109, CAST(N'2018-04-21 13:17:54.857' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (244, N'VICTOR MARIA BARRENECHEA DE LA FUENTE', 3069649, CAST(N'2018-04-21 13:17:54.903' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (245, N'OSCAR GUSTAVO BARRERA PEREYRA', 3514191, CAST(N'2018-04-21 13:17:54.947' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (246, N'JUAN CARLOS BARRETO BENTANCOR', 3443161, CAST(N'2018-04-21 13:17:54.987' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (247, N'SIOMARA BARRETO DE LEON', 2938458, CAST(N'2018-04-21 13:17:55.030' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (248, N'MARIA SOLEDAD BARRIOLA DANREE', 1042866, CAST(N'2018-04-21 13:17:55.073' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (249, N'ANA MARIA BARRIOLA ELDUAYEN', 3198550, CAST(N'2018-04-21 13:17:55.117' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (250, N'PABLO BARRIOS LASSO', 2550971, CAST(N'2018-04-21 13:17:55.163' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (251, N'HECTOR CICERON BARRIOS SANCHEZ', 806373, CAST(N'2018-04-21 13:17:55.203' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (252, N'JULIANA BARRIOS VIANA', 2796062, CAST(N'2018-04-21 13:17:55.250' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (253, N'ARTIGAS ALEXIS BARRIOS FERNANDEZ', 799391, CAST(N'2018-04-21 13:17:55.293' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (254, N'DANIEL HONORIO BARRIOS RECUERO', 3889085, CAST(N'2018-04-21 13:17:55.337' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (255, N'OSCAR DIEGO BARROS GENERALLI', 2614760, CAST(N'2018-04-21 13:17:55.380' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (256, N'RAFAEL ARTURO BARTZABAL GOYTIÑO', 3703483, CAST(N'2018-04-21 13:17:55.423' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (257, N'JORGE OTTO BASSO GARRIDO', 1254459, CAST(N'2018-04-21 13:17:55.467' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (258, N'HAYDEE EMILIA BASTERRECH RIOS', 1241497, CAST(N'2018-04-21 13:17:55.510' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (259, N'HECTOR BASTON MAIO', 1389114, CAST(N'2018-04-21 13:17:55.553' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (260, N'FAVIO DANIEL BATISTA PEREGALLI', 4378845, CAST(N'2018-04-21 13:17:55.600' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (261, N'JULIO JOSE BATTISTONI SPINELLI', 1929117, CAST(N'2018-04-21 13:17:55.647' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (262, N'EDUARDO BAUBETA SILVERA', 3577919, CAST(N'2018-04-21 13:17:55.690' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (263, N'ISABELINO WILSON BAUER DE SOUZA', 3167314, CAST(N'2018-04-21 13:17:55.733' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (264, N'ROBERTO BENJAMIN BAVOSI LUCHINI', 1219928, CAST(N'2018-04-21 13:17:55.777' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (265, N'JOSE ARTURO BAYARDI LOZANO', 1349688, CAST(N'2018-04-21 13:17:55.817' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (266, N'EDITH ELENA BAYGORRIA MOURIN', 899020, CAST(N'2018-04-21 13:17:55.860' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (267, N'ROBERTO BAZ COGO', 1252158, CAST(N'2018-04-21 13:17:55.903' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (268, N'ANA MARIA BAZ DIAZ', 1329896, CAST(N'2018-04-21 13:17:55.947' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (269, N'MARIA CRISTINA BECEIRO MENDARO', 963000, CAST(N'2018-04-21 13:17:55.990' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (270, N'VICTORIA BEGA BONILLA', 1457500, CAST(N'2018-04-21 13:17:56.033' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (271, N'RONI LUCAS BEJEREZ PEREIRA DAS NEVES', 3164269, CAST(N'2018-04-21 13:17:56.077' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (272, N'GUSTAVO ROBERTO BELARRA MUNIZ', 3138882, CAST(N'2018-04-21 13:17:56.120' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (273, N'JULIA SUSANA BELLA GRASSI', 1658898, CAST(N'2018-04-21 13:17:56.167' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (274, N'DIAMELA BELLO CANZANI', 1748578, CAST(N'2018-04-21 13:17:56.210' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (275, N'SILVANA BELLO SUAREZ', 1138603, CAST(N'2018-04-21 13:17:56.257' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (276, N'MANUEL JOAQUIN BELLO BELEA', 1172273, CAST(N'2018-04-21 13:17:56.300' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (277, N'ANA MARIA BELLO ANDRIOLO', 1338193, CAST(N'2018-04-21 13:17:56.343' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (278, N'GRACIELA TERESITA BELLO ASTRALDI', 902124, CAST(N'2018-04-21 13:17:56.387' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (279, N'ERNESTO GABRIEL BELTRAME LEMOLE', 1417361, CAST(N'2018-04-21 13:17:56.430' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (280, N'FRANCISCO SNATIAGO BELTRAME ECHEVERRIA', 1258871, CAST(N'2018-04-21 13:17:56.473' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (281, N'FLAVIO GUSTAVO BELTRAN CAULA', 1644606, CAST(N'2018-04-21 13:17:56.517' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (282, N'GARY ASTUL BENAVIDES NOBRE', 1810889, CAST(N'2018-04-21 13:17:56.560' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (283, N'MARIA LILIAN BENDAHAN SILVERA', 1360709, CAST(N'2018-04-21 13:17:56.603' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (284, N'ENZO BENECH BOUNOUS', 2960362, CAST(N'2018-04-21 13:17:56.653' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (285, N'ESTELA BENITEZ CAMPARI', 1085826, CAST(N'2018-04-21 13:17:56.697' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (286, N'GLORIA DEL CARMEN BENITEZ GARCIA', 1277716, CAST(N'2018-04-21 13:17:56.740' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (287, N'ANTONIO BENITEZ CHEVESTE', 3441447, CAST(N'2018-04-21 13:17:56.783' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (288, N'JUAN JOSÉ BENITEZ CAORSI', 3700552, CAST(N'2018-04-21 13:17:56.830' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (289, N'ROBERTO CARLOS BENNETT GORENA', 981955, CAST(N'2018-04-21 13:17:56.873' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (290, N'ANA MARIA BENTABERRI ALOUY', 3140642, CAST(N'2018-04-21 13:17:56.920' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (291, N'JESUS BENTANCOR DODERA', 3319570, CAST(N'2018-04-21 13:17:56.967' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (292, N'ALVARO BENTANCUR CORTABARIA', 1683157, CAST(N'2018-04-21 13:17:57.007' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (293, N'WILSON JESUS BENTANCUR PAIS', 3122301, CAST(N'2018-04-21 13:17:57.050' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (294, N'ANIBAL JOSE ENRIQUE BENTOS GUIMARAES', 3480987, CAST(N'2018-04-21 13:17:57.093' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (295, N'BERTIL RANDOLF BENTOS SCAGNEGATTI', 2865942, CAST(N'2018-04-21 13:17:57.140' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (296, N'MARTHA CATALINA BEQUIO DUPIN', 3517558, CAST(N'2018-04-21 13:17:57.180' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (297, N'MARIA DEL CARMEN BERAMENDI USERA', 1169577, CAST(N'2018-04-21 13:17:57.227' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (298, N'WALTER ENRIQUE BERGARA SANTILLANO', 3314694, CAST(N'2018-04-21 13:17:57.270' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (299, N'MARIO ESTEBAN BERGARA DUQUE', 1775027, CAST(N'2018-04-21 13:17:57.310' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (300, N'CARLOS BERGERET CARRAU', 1384022, CAST(N'2018-04-21 13:17:57.357' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (301, N'HECTOR FRANCISCO BERGONZONI ALVAREZ', 810294, CAST(N'2018-04-21 13:17:57.397' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (302, N'JAVIER BERMUDEZ ABOAL', 1600508, CAST(N'2018-04-21 13:17:57.440' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (303, N'LILIANA BEATRIZ BERNA ', 3155487, CAST(N'2018-04-21 13:17:57.483' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (304, N'JUAN PABLO BERNENGO CASTRO', 1523488, CAST(N'2018-04-21 13:17:57.527' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (305, N'GUSTAVO DANIEL BERNINI SEGUESSA', 1430710, CAST(N'2018-04-21 13:17:57.573' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (306, N'JIMMY WILSON BERNY MORAES', 3331506, CAST(N'2018-04-21 13:17:57.617' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (307, N'RICARDO CARLOS BEROIS QUINTEROS', 3486396, CAST(N'2018-04-21 13:17:57.667' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (308, N'MARIA DEL CARMEN BEROIS QUINTEROS', 3965765, CAST(N'2018-04-21 13:17:57.707' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (309, N'MA. DEL ROSARIO BERRO SOTO', 1895821, CAST(N'2018-04-21 13:17:57.750' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (310, N'JUAN ANGEL BERRUTI MACAGNO', 1107741, CAST(N'2018-04-21 13:17:57.793' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (311, N'AZUCENA ESTEFANIA BERRUTTI REBOREDO', 546458, CAST(N'2018-04-21 13:17:57.837' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (312, N'ANA MARIA BERTA CORVO', 1184161, CAST(N'2018-04-21 13:17:57.877' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (313, N'ELIZABETH MARIA BERTASSI FLORES', 2829059, CAST(N'2018-04-21 13:17:57.923' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (314, N'ANDRES BERTERRECHE ALVAREZ', 1680905, CAST(N'2018-04-21 13:17:57.967' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (315, N'IGNACIO BERTI MOYANO', 1908931, CAST(N'2018-04-21 13:17:58.010' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (316, N'HEBER ISIDRO BERTO SOSA', 3129755, CAST(N'2018-04-21 13:17:58.053' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (317, N'ALEJANDRO MIGUEL BERTON SOLE', 2931993, CAST(N'2018-04-21 13:17:58.097' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (318, N'SERGIO LEONEL BERTON BONJOUR', 3179767, CAST(N'2018-04-21 13:17:58.143' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (319, N'MAURICIO BERTON LEUNDA', 2604621, CAST(N'2018-04-21 13:17:58.187' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (320, N'EDUARDO BERTON ', 2001397, CAST(N'2018-04-21 13:17:58.230' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (321, N'INOCENCIO VICTOR BERTONI MENDARO', 3182274, CAST(N'2018-04-21 13:17:58.273' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (322, N'ALVARO BERTONI ', 3330728, CAST(N'2018-04-21 13:17:58.313' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (323, N'MÓNICA ANABEL BESIO BARRETO', 1632431, CAST(N'2018-04-21 13:17:58.357' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (324, N'PEDRO BESOZZI CERCHI', 2965554, CAST(N'2018-04-21 13:17:58.400' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (325, N'JULIO GUILLERMO BESOZZI AROCENA', 3216181, CAST(N'2018-04-21 13:17:58.443' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (326, N'ALBA MARIA BETOLAZA CAFFERATA', 928475, CAST(N'2018-04-21 13:17:58.487' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (327, N'ALVARO JUAN FRANCISC BEYHAUT BONILLA', 2659998, CAST(N'2018-04-21 13:17:58.530' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (328, N'DANIEL MARIO BIANCHI SALOMON', 3508126, CAST(N'2018-04-21 13:17:58.573' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (329, N'ELEONORA BIANCHI CASERTA', 1709809, CAST(N'2018-04-21 13:17:58.617' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (330, N'LEONARDO JORGE BIANCHI FERNANDEZ', 1353242, CAST(N'2018-04-21 13:17:58.663' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (331, N'JORGE BIANCHI BARELLA', 1169442, CAST(N'2018-04-21 13:17:58.707' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (332, N'ROBERTO RAMON BIANCHI ROBERTI', 1011063, CAST(N'2018-04-21 13:17:58.750' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (333, N'MARIA CECILIA BIANCHINI JAUREGUI', 2821125, CAST(N'2018-04-21 13:17:58.790' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (334, N'JESÚS BICCA MENDOZA', 3193810, CAST(N'2018-04-21 13:17:58.837' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (335, N'ALEJANDRO BIDEGAIN ', 1591023, CAST(N'2018-04-21 13:17:58.880' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (336, N'MARÍA CRISTINA BIDEGAIN LUTZ', 3287610, CAST(N'2018-04-21 13:17:58.923' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (337, N'PABLO ENIQUE BIDONDO IBIÑETE', 2793095, CAST(N'2018-04-21 13:17:58.963' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (338, N'PEDRO FELIPE BIELEMBERG1 GOLAN', 1265914, CAST(N'2018-04-21 13:17:59.007' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (339, N'MARIA CRISTINA BIELLI ARREDONDAS', 1252929, CAST(N'2018-04-21 13:17:59.050' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (340, N'SENOVIO BILLAR LARROSA', 2549661, CAST(N'2018-04-21 13:17:59.090' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (341, N'MARCELO BISTOLFI ZUNINI', 3244259, CAST(N'2018-04-21 13:17:59.137' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (342, N'ROBERTO CARLOS BIZOZA CABRAL', 4178315, CAST(N'2018-04-21 13:17:59.180' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (343, N'SILVIA BERNARDITA BLANC SOSA', 3195233, CAST(N'2018-04-21 13:17:59.223' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (344, N'CECILIA BEATRIZ BLANCO FRESCO', 1387920, CAST(N'2018-04-21 13:17:59.263' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (345, N'KARIM DINORAH BLANCO RAMOS', 1717256, CAST(N'2018-04-21 13:17:59.307' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (346, N'EULOGIO BLANCO IBARRA', 3536221, CAST(N'2018-04-21 13:17:59.350' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (347, N'ANA MARIA BLANCO RICCETO', 1406041, CAST(N'2018-04-21 13:17:59.393' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (348, N'RODRIGO BLAS SIMONCELLI', 3844921, CAST(N'2018-04-21 13:17:59.437' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (349, N'JUAN GONZALO BLASINA VIERA', 1299369, CAST(N'2018-04-21 13:17:59.483' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (350, N'JOSE BOBBA OJEDA', 1698661, CAST(N'2018-04-21 13:17:59.530' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (351, N'GABRIEL BOCCARDO LA RUINA', 1937220, CAST(N'2018-04-21 13:17:59.570' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (352, N'DOMINGO BOCCHIARDO CAORSI', 3483896, CAST(N'2018-04-21 13:17:59.617' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (353, N'SONIA STELLA BOCCHINO CASTRO', 1030919, CAST(N'2018-04-21 13:17:59.663' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (354, N'RAUL HERALDO BODEANT GRAÑA', 3405878, CAST(N'2018-04-21 13:17:59.710' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (355, N'ALBERTO GUSTAVO BOIX VILARO', 737017, CAST(N'2018-04-21 13:17:59.750' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (356, N'JOSE FRANCISCO BONAVOTA CACCIANTE', 946078, CAST(N'2018-04-21 13:17:59.797' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (357, N'LUIS PABLO BONET CABRERA', 3367003, CAST(N'2018-04-21 13:17:59.840' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (358, N'SERGIO DARDO BONILLA MARABOTTO', 471542, CAST(N'2018-04-21 13:17:59.883' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (359, N'HÉCTOR EDUARDO BONILLA IRIGOYEN', 3203666, CAST(N'2018-04-21 13:17:59.927' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (360, N'ALBA ESMERALDA BONINO PEIRANO', 2848856, CAST(N'2018-04-21 13:17:59.967' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (361, N'JULIO CESAR BONINO BONINO', 4038611, CAST(N'2018-04-21 13:18:00.017' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (362, N'ALEXIS ARISTIDES BONNAHON POLLERO', 3796986, CAST(N'2018-04-21 13:18:00.060' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (363, N'MARIA CLAUDIA BONNECARRERE MARTINEZ', 3389416, CAST(N'2018-04-21 13:18:00.103' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (364, N'MARCEL DAVID BONNET MONNET', 1823659, CAST(N'2018-04-21 13:18:00.150' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (365, N'EDISON EDUARDO BONOMI VARELA', 1118221, CAST(N'2018-04-21 13:18:00.193' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (366, N'JAVIER ISIDRO BOOK SILVA', 3127047, CAST(N'2018-04-21 13:18:00.240' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (367, N'PURA CONCEPCION BOOK SILVA', 3672653, CAST(N'2018-04-21 13:18:00.280' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (368, N'SANDRA BORAGNO DELFINO', 1825168, CAST(N'2018-04-21 13:18:00.323' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (369, N'FREDY JOSE BORBA SILVA', 1557695, CAST(N'2018-04-21 13:18:00.363' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (370, N'JUAN PEDRO BORDABERRY HERRAN', 1584569, CAST(N'2018-04-21 13:18:00.407' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (371, N'GUILLERMO BORDOLI NEDOR', 3180959, CAST(N'2018-04-21 13:18:00.450' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (372, N'MARIA DEL ROSARIO BORGES ESQUEFF', 2513362, CAST(N'2018-04-21 13:18:00.493' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (373, N'MARÍA PATRICIA BORGES MARINI', 2840053, CAST(N'2018-04-21 13:18:00.533' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (374, N'EDUARDO NICASIO BORGES DUARTE', 2679627, CAST(N'2018-04-21 13:18:00.580' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (375, N'MARIO SANTIAGO BORGNO BUSCHIAZZO', 1152716, CAST(N'2018-04-21 13:18:00.627' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (376, N'FERNANDO BORIO NONNENMACHER', 3346464, CAST(N'2018-04-21 13:18:00.673' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (377, N'DANIEL JOSE BORRELLI UBERTI', 1730171, CAST(N'2018-04-21 13:18:00.720' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (378, N'ROBERTO BORRELLI MARCHI', 1364229, CAST(N'2018-04-21 13:18:00.763' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (379, N'GUSTAVO BORSARI BRENNA', 1247673, CAST(N'2018-04-21 13:18:00.807' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (380, N'TERESA BORTOLI ESTELLANO', 1325505, CAST(N'2018-04-21 13:18:00.850' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (381, N'MÓNICA MARIELLA BORTOLI PORRO', 1709304, CAST(N'2018-04-21 13:18:00.893' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (382, N'HUGO RAUL BOSCA GOMEZ', 2626950, CAST(N'2018-04-21 13:18:00.937' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (383, N'NELSON BOSCH SOCA', 1149968, CAST(N'2018-04-21 13:18:00.980' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (384, N'LUIS SERGIO BOTANA ARANCET', 2881868, CAST(N'2018-04-21 13:18:01.023' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (385, N'GLADYS BOUZON NOVELLI', 1602584, CAST(N'2018-04-21 13:18:01.067' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (386, N'ADRIANA MARÍA BOZZOLASCO ROMERO', 2601503, CAST(N'2018-04-21 13:18:01.113' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (387, N'MIGUEL ANGEL BRAGA PEREZ', 1044447, CAST(N'2018-04-21 13:18:01.157' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (388, N'ALBERTO BRAUSE BERRETA', 832192, CAST(N'2018-04-21 13:18:01.200' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (389, N'ALBERTO RAUL BRECCIA GUZZO', 987274, CAST(N'2018-04-21 13:18:01.240' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (390, N'MIGUEL BRECHNER FREY', 1270500, CAST(N'2018-04-21 13:18:01.287' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (391, N'EDUARDO BRENTA BADANO', 1264587, CAST(N'2018-04-21 13:18:01.327' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (392, N'ADRIANA NOEL BRESCIA RODRIGUEZ', 3619074, CAST(N'2018-04-21 13:18:01.370' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (393, N'CESAR ALFREDO BRIOZZO CLIVIO', 1553645, CAST(N'2018-04-21 13:18:01.413' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (394, N'ABILIO HUGO BRIZ LUCAS', 1732335, CAST(N'2018-04-21 13:18:01.457' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (395, N'JORGE EMILIO BROGGINI MENDEZ', 1277537, CAST(N'2018-04-21 13:18:01.500' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (396, N'ANDREA BRUGMAN POZZI', 2801108, CAST(N'2018-04-21 13:18:01.540' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (397, N'FERNANDO BRUM ESTAPE', 1343421, CAST(N'2018-04-21 13:18:01.590' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (398, N'GONZALO BRUM ', 1883643, CAST(N'2018-04-21 13:18:01.633' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (399, N'RAFAEL ENRIQUE BRUM CASTRO', 1743793, CAST(N'2018-04-21 13:18:01.680' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (400, N'SEBASTIµN BRUN ETCHEVERRY', 3675988, CAST(N'2018-04-21 13:18:01.723' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (401, N'HUMBERTO SALVADOR BRUN NASTA', 2813241, CAST(N'2018-04-21 13:18:01.767' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (402, N'JORGE RICARDO BRUNI MACHIN', 1268935, CAST(N'2018-04-21 13:18:01.810' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (403, N'JUAN JOSE BRUNO OLVEIRA', 2680719, CAST(N'2018-04-21 13:18:01.850' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (404, N'RAUL CARMELO BRUNO TROGLIO', 2531138, CAST(N'2018-04-21 13:18:01.893' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (405, N'ALBERTO GUSTAVO BRUSA GONZALEZ', 1088822, CAST(N'2018-04-21 13:18:01.937' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (406, N'LILIANA MA.DEL HUERT BRUSALES NOBLE', 3142689, CAST(N'2018-04-21 13:18:01.980' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (407, N'DANIEL ISIDRO BRUZZONE MARTINEZ', 1284151, CAST(N'2018-04-21 13:18:02.023' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (408, N'MARTIN BUENO ', 3099273, CAST(N'2018-04-21 13:18:02.063' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (409, N'CARLOS BUENO PEREYRA', 1256617, CAST(N'2018-04-21 13:18:02.107' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (410, N'PEDRO EMILIO BUONOMO DE LEON', 1562359, CAST(N'2018-04-21 13:18:02.153' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (411, N'IRENE BEATRIZ BUQUET GONZALEZ', 1152036, CAST(N'2018-04-21 13:18:02.197' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (412, N'WALTER HUGO BURELLA ASCONEGUY', 2003502, CAST(N'2018-04-21 13:18:02.237' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (413, N'LAURA BURGOA GONZALEZ', 1491973, CAST(N'2018-04-21 13:18:02.280' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (414, N'MANUEL BURGOS LEZAMA', 1121521, CAST(N'2018-04-21 13:18:02.323' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (415, N'JUAN CARLOS BURGOS HERNANDEZ', 2019701, CAST(N'2018-04-21 13:18:02.370' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (416, N'JORGE LUIS BURGOS ARIAS', 3446481, CAST(N'2018-04-21 13:18:02.410' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (417, N'JORGE BURIANI PARDO', 1617582, CAST(N'2018-04-21 13:18:02.453' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (418, N'JOHN BURNS CERVETTI', 1117534, CAST(N'2018-04-21 13:18:02.493' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (419, N'JOSE MARIA BURONE MENDEZ', 1450296, CAST(N'2018-04-21 13:18:02.537' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (420, N'FRANCISCO C. BUSTILLO BONASSO', 1704937, CAST(N'2018-04-21 13:18:02.583' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (421, N'FERNANDO BUTTAZZONI REPETTO', 1694706, CAST(N'2018-04-21 13:18:02.623' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (422, N'SILVIA BUZO DEL PUERTO', 1291743, CAST(N'2018-04-21 13:18:02.673' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (423, N'IRUPE CARMEN BUZZETTI FRAGA', 1209568, CAST(N'2018-04-21 13:18:02.717' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (424, N'FRANCISCO EDUARDO CAAMAÑO CERNADAS', 1611718, CAST(N'2018-04-21 13:18:02.760' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (425, N'MARIA ANDREA CAAMAÑO VERNAY', 2813518, CAST(N'2018-04-21 13:18:02.803' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (426, N'ANITA MARIA CABALLERO LARUMBE', 3466335, CAST(N'2018-04-21 13:18:02.850' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (427, N'ALCIDES CABALLERO ', 1506814, CAST(N'2018-04-21 13:18:02.890' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (428, N'LUIS FERNANDO CABEZUDO RAMIREZ', 2552175, CAST(N'2018-04-21 13:18:02.933' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (429, N'MARIA GREGORIA CABRAL BORBA', 3006687, CAST(N'2018-04-21 13:18:02.977' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (430, N'WILITON CABRAL RODRIGUEZ', 3595447, CAST(N'2018-04-21 13:18:03.020' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (431, N'JULIO ROBERTO CABRAL BARRETO', 3759772, CAST(N'2018-04-21 13:18:03.063' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (432, N'MARCELO DANIEL CABRAL LABORDE', 4237968, CAST(N'2018-04-21 13:18:03.107' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (433, N'ADOLFO AURELIANO CABRAL GARCIA', 2533527, CAST(N'2018-04-21 13:18:03.150' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (434, N'ARIBEL ENRIQUE CABRAL OLIVERA', 1116507, CAST(N'2018-04-21 13:18:03.193' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (435, N'SERGIO GUSTAVO CABRERA HERRERA', 2938714, CAST(N'2018-04-21 13:18:03.237' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (436, N'SUSANA CABRERA RE', 3349445, CAST(N'2018-04-21 13:18:03.280' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (437, N'ALICIA CABRERA PUENTE', 1555341, CAST(N'2018-04-21 13:18:03.323' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (438, N'LUIS EDUARDO CABRERA COLETTO', 1854086, CAST(N'2018-04-21 13:18:03.370' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (439, N'JUAN ANTONIO CABRERA ORGA', 3381077, CAST(N'2018-04-21 13:18:03.410' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (440, N'ALICIA CABRERA PUENTE', 1555341, CAST(N'2018-04-21 13:18:03.457' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (441, N'NELSON MARIO CABRERA SOSA', 3295180, CAST(N'2018-04-21 13:18:03.497' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (442, N'SILVIA RAQUEL CABRERA LUZARDO', 3348066, CAST(N'2018-04-21 13:18:03.543' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (443, N'MARINI SOFIA CABRERA FAROLINI', 3723895, CAST(N'2018-04-21 13:18:03.587' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (444, N'GERARDO E. CABRERA ROCHA', 3822099, CAST(N'2018-04-21 13:18:03.633' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (445, N'JORGE GUALBERTO CABRERA LESTEGAS', 1383654, CAST(N'2018-04-21 13:18:03.680' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (446, N'GUSTAVO LUIS CABRERA PEREYRA', 2017610, CAST(N'2018-04-21 13:18:03.723' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (447, N'TACUABE CABRERA ZIEGLER', 1201038, CAST(N'2018-04-21 13:18:03.770' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (448, N'MARÍA CRISTINA CABRERA COSTA', 3113014, CAST(N'2018-04-21 13:18:03.810' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (449, N'ANA ALICIA CABRERA UHALDE', 2780624, CAST(N'2018-04-21 13:18:03.857' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (450, N'MYRIAM GRACIELA CACERES TONCHEFF', 3370495, CAST(N'2018-04-21 13:18:03.897' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (451, N'FERNANDO CACERES ', 1637721, CAST(N'2018-04-21 13:18:03.943' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (452, N'RICHARD OROSMAN CACERES CARRO', 4173250, CAST(N'2018-04-21 13:18:03.983' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (453, N'MAURICIO DANILO CACERES CARRO', 3527510, CAST(N'2018-04-21 13:18:04.027' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (454, N'JORGE ATILIO CAFFERA JURI', 1946346, CAST(N'2018-04-21 13:18:04.073' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (455, N'GERARDDO CAFFERA MORANDI', 1273543, CAST(N'2018-04-21 13:18:04.113' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (456, N'DANIEL CAGGIANI ', 3785591, CAST(N'2018-04-21 13:18:04.160' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (457, N'MATILDE ISABEL CAIRELLO SOSA', 1737233, CAST(N'2018-04-21 13:18:04.203' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (458, N'CECILIA CAIRO ', 1843252, CAST(N'2018-04-21 13:18:04.247' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (459, N'OLGA GRACIELA CAITANO ACOSTA', 3181933, CAST(N'2018-04-21 13:18:04.290' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (460, N'CARLA MARIELA CAJIGA BOTELLA', 1918219, CAST(N'2018-04-21 13:18:04.333' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (461, N'ANGEL MANUEL CAL SHABAN', 2827969, CAST(N'2018-04-21 13:18:04.377' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (462, N'MARIO ALBERTO CALABUIG FERNANDEZ', 4422195, CAST(N'2018-04-21 13:18:04.423' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (463, N'FERNANDO CALLOIA RAFFO', 1147776, CAST(N'2018-04-21 13:18:04.467' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (464, N'MARICEL CALTIERI ELOSEGUI', 4069721, CAST(N'2018-04-21 13:18:04.507' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (465, N'ROBERTO CALVO BALSAS', 1444198, CAST(N'2018-04-21 13:18:04.553' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (466, N'RICARDO CALVO PENA', 1641175, CAST(N'2018-04-21 13:18:04.597' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (467, N'ANA MARIA CALZADA SANTA CRUZ', 3838029, CAST(N'2018-04-21 13:18:04.643' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (468, N'LUIS ALBERTO CAMACHO SILVEIRA', 1452491, CAST(N'2018-04-21 13:18:04.687' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (469, N'ALBERTO MANUEL CAMACHO RODRIGUEZ', 2018073, CAST(N'2018-04-21 13:18:04.730' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (470, N'ZULMA SUSANA CAMARAN CAWEN', 1954314, CAST(N'2018-04-21 13:18:04.773' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (471, N'MARIA DE LOS ANGELES CAMIÑO MORENO', 1446135, CAST(N'2018-04-21 13:18:04.817' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (472, N'RUBEN DARIO CAMIROTTI TEJERA', 3955682, CAST(N'2018-04-21 13:18:04.860' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (473, N'JORGE CAMORS GARIBALDI', 1170295, CAST(N'2018-04-21 13:18:04.903' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (474, N'NESTOR CAMPAL GENNARI', 1119227, CAST(N'2018-04-21 13:18:04.947' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (475, N'GIANNA MARIA CAMPANELLA SAAD', 3471629, CAST(N'2018-04-21 13:18:04.987' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (476, N'JORGE CAMPANELLA CETRANGOLO', 1890599, CAST(N'2018-04-21 13:18:05.033' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (477, N'JULIO CESAR CAMPO CHIARLA', 1748069, CAST(N'2018-04-21 13:18:05.077' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (478, N'CARLOS DEBELQUI CAMPOS SILVA', 1974485, CAST(N'2018-04-21 13:18:05.120' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (479, N'CARLOS DANIEL CAMY ANTOGNAZZA', 3664136, CAST(N'2018-04-21 13:18:05.163' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (480, N'HECTOR CANCELA BOSI', 1539915, CAST(N'2018-04-21 13:18:05.207' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (481, N'ARIEL CANCELA VILA', 3206006, CAST(N'2018-04-21 13:18:05.253' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (482, N'JUAN ANDRES CANESSA FRANCO', 1700225, CAST(N'2018-04-21 13:18:05.293' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (483, N'FANNY MARIA CANESSA SORIN', 1170834, CAST(N'2018-04-21 13:18:05.337' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (484, N'RAFAEL MAURICIO CANETTI WASSER', 1247810, CAST(N'2018-04-21 13:18:05.380' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (485, N'ENRIQUE GILBERTO CANON PEDRAGOSA', 1430705, CAST(N'2018-04-21 13:18:05.423' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (486, N' HAROLDO ANTONIO CANONIERO MARR', 2577157, CAST(N'2018-04-21 13:18:05.467' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (487, N'MARTA CANOVA ARRARTE', 4102906, CAST(N'2018-04-21 13:18:05.510' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (488, N'JUAN PEDRO CANTERA SENCION', 2531195, CAST(N'2018-04-21 13:18:05.553' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (489, N'EDGAR FITZGERALD CANTERO PIALI', 3938239, CAST(N'2018-04-21 13:18:05.600' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (490, N'MARIA CRISTINA CANTERO ALBRIEUX', 1376185, CAST(N'2018-04-21 13:18:05.647' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (491, N'LILIANA BEATRIZ CAPECE SILVEIRA', 2005272, CAST(N'2018-04-21 13:18:05.690' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (492, N'FERNANDO CARLOS CAPOTE LOPEZ', 3749098, CAST(N'2018-04-21 13:18:05.730' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (493, N'CARMELO RAMON CAPOZZOLI CAMBOM', 945159, CAST(N'2018-04-21 13:18:05.773' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (494, N'MARIELA RAQUEL CAPPETTA TECHERA', 2935657, CAST(N'2018-04-21 13:18:05.817' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (495, N'TERESITA CAPURRO SILVA', 3093684, CAST(N'2018-04-21 13:18:05.860' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (496, N'RAUL GUILERMO CARABALLO ACOSTA', 4060469, CAST(N'2018-04-21 13:18:05.903' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (497, N'MARIA BETTINA CARABALLO CUNHA', 3522325, CAST(N'2018-04-21 13:18:05.950' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (498, N'RODOLFO ANDRES CARAM MARTINEZ', 3650538, CAST(N'2018-04-21 13:18:05.990' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (499, N'CARLOS MANUEL CARAM ', 3032834, CAST(N'2018-04-21 13:18:06.033' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (500, N'GRISEL CARAM ACOSTA', 3273791, CAST(N'2018-04-21 13:18:06.073' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (501, N'ANTONIO CARAMBULA SAGASTI', 1675092, CAST(N'2018-04-21 13:18:06.117' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (502, N'GONZALO CARAMBULA VOLPI', 1123563, CAST(N'2018-04-21 13:18:06.160' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (503, N'MARCOS GUSTAVO CARAMBULA VOLPI', 1577935, CAST(N'2018-04-21 13:18:06.207' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (504, N'ALBERTO LAUREANO CARAMES SILVEIRA', 1274166, CAST(N'2018-04-21 13:18:06.250' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (505, N'NATALIA CARBAJAL MACIAS', 2929660, CAST(N'2018-04-21 13:18:06.293' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (506, N'LUCÍA MARÍA CARBALLA CHANGO', 1444297, CAST(N'2018-04-21 13:18:06.337' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (507, N'FELIPE CARBALLO DA COSTA', 3988499, CAST(N'2018-04-21 13:18:06.380' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (508, N'ROBIN ENRIQUE CARBALLO VELLOZO', 2936926, CAST(N'2018-04-21 13:18:06.423' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (509, N'ADRIANA CARDANI GODIÑO', 1865766, CAST(N'2018-04-21 13:18:06.467' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (510, N'FERNANDO RAUL CARDINAL PIEGAS', 3653231, CAST(N'2018-04-21 13:18:06.510' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (511, N'JOSE CARLOS CARDOSO SILVA', 2549443, CAST(N'2018-04-21 13:18:06.553' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (512, N'GERMAN CARDOSO FERREIRA', 2820123, CAST(N'2018-04-21 13:18:06.600' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (513, N'SILVIO RICARDO CARDOSO PIOLI', 2524274, CAST(N'2018-04-21 13:18:06.647' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (514, N'CARLOS CARDOZO MARTINEZ', 3923816, CAST(N'2018-04-21 13:18:06.690' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (515, N'GRANDENEL CARDOZO SOLIS', 3232292, CAST(N'2018-04-21 13:18:06.733' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (516, N'MARIA DILIA CARDOZO ABERO', 4102278, CAST(N'2018-04-21 13:18:06.777' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (517, N'JULIO CESAR CARDOZO FERREIRA', 2644877, CAST(N'2018-04-21 13:18:06.820' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (518, N'BEATRIZ CARNELLI VIDAUR', 1298205, CAST(N'2018-04-21 13:18:06.863' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (519, N'FERNANDO CARPENTIERI MAZZA', 1734322, CAST(N'2018-04-21 13:18:06.910' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (520, N'LUIS ALBERTO CARRASCO CASTRO', 1523924, CAST(N'2018-04-21 13:18:06.950' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (521, N'MARCELO HEBERT CARRASCO OLIVERA', 1669192, CAST(N'2018-04-21 13:18:06.993' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (522, N'JUAN JOSE CARRASCO SALVIDE', 1491129, CAST(N'2018-04-21 13:18:07.037' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (523, N'SULANGEL CARRASCO PEREYRA', 1800465, CAST(N'2018-04-21 13:18:07.080' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (524, N'JAVIER CARRAU BONOMI', 1168648, CAST(N'2018-04-21 13:18:07.127' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (525, N'FERNANDO CARRAU CORRAL', 1693688, CAST(N'2018-04-21 13:18:07.170' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (526, N'CHARLES DANIEL CARRERA LEAL', 4264535, CAST(N'2018-04-21 13:18:07.213' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (527, N'JULIO CARRERA FERNANDEZ', 1460272, CAST(N'2018-04-21 13:18:07.257' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (528, N'ERNESTO CARRERAS PEÑA', 1314535, CAST(N'2018-04-21 13:18:07.300' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (529, N'LUIS MARIA CARRESSE TOLEDO', 3018355, CAST(N'2018-04-21 13:18:07.343' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (530, N'RUBEN NELSON CARRIL DIBBERN', 1394251, CAST(N'2018-04-21 13:18:07.387' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (531, N'IVONNE CARRION RAMOS', 2795941, CAST(N'2018-04-21 13:18:07.430' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (532, N'AGUSTIN JOSE CARRIQUIRY MENDIOLA', 1515390, CAST(N'2018-04-21 13:18:07.477' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (533, N'ANDRES CARRIQUIRY PENINO', 1352117, CAST(N'2018-04-21 13:18:07.523' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (534, N'GABRIELA NOEMI CASAL LUCHELLI', 1960560, CAST(N'2018-04-21 13:18:07.567' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (535, N'MARTHA YOLANDA CASAMAYU GOMEZ', 1175880, CAST(N'2018-04-21 13:18:07.613' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (536, N'GONZALO MIGUEL CASARAVILLA PONSETI', 1861754, CAST(N'2018-04-21 13:18:07.660' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (537, N'VICTOR ALEJANDRO CASARETTO DAMINO', 2812048, CAST(N'2018-04-21 13:18:07.703' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (538, N'FEDERICO RAMIRO CASARETTO GERFAUO', 3355010, CAST(N'2018-04-21 13:18:07.747' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (539, N'ALBERTO ENRIQUE CASAS MENDITEGUY', 3684749, CAST(N'2018-04-21 13:18:07.790' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (540, N'ALICIA CASAS RODRIGUEZ', 1302493, CAST(N'2018-04-21 13:18:07.837' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (541, N'FEDERICO CASAS PEREIRA', 2636831, CAST(N'2018-04-21 13:18:07.880' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (542, N'LUZ MARINA CASAS ', 4017410, CAST(N'2018-04-21 13:18:07.923' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (543, N'MARIA ELSA CASAS ', 49299, CAST(N'2018-04-21 13:18:07.967' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (544, N'JESUS ARIEL CASCO ROJAS', 3382972, CAST(N'2018-04-21 13:18:08.010' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (545, N'JULIO CESAR ROQUERO ORTIZ', 2974448, CAST(N'2018-04-21 13:18:08.053' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (546, N'MARIA NILSA PEREZ  HERNANDEZ', 2563750, CAST(N'2018-04-21 13:18:08.097' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (547, N'MARIA DEL ROSARIO PEREZ QUINTELA', 1377336, CAST(N'2018-04-21 13:18:08.140' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (548, N'JOSE ENRIQUE DOMINGUEZ  BRANDO', 1234639, CAST(N'2018-04-21 13:18:08.187' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (549, N'ANDREA MARA CABRERA LUCAS', 1503128, CAST(N'2018-04-21 13:18:08.230' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (550, N'MARIA DEL ROSARIO VARELA SANTANGELO', 1250309, CAST(N'2018-04-21 13:18:08.273' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (551, N'MARIA NOEL SANGUINETTI VEZZOSO', 3083576, CAST(N'2018-04-21 13:18:08.317' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (552, N'EDUARDO COSTAS VAZQUEZ', 1419922, CAST(N'2018-04-21 13:18:08.360' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (553, N'JOSE LUIS CASSANELLO CHIPARELLI', 1136846, CAST(N'2018-04-21 13:18:08.403' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (554, N'ARMANDO IRINEO CASTAINGDEBAT COLOMBO', 2598294, CAST(N'2018-04-21 13:18:08.447' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (555, N'ALBERTO CASTELAR RODRIGUEZ', 1248853, CAST(N'2018-04-21 13:18:08.490' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (556, N'DANIEL EDGARDO CASTELLA LORENZO', 1242097, CAST(N'2018-04-21 13:18:08.533' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (557, N'GABRIEL ALFONSO CASTELLA LORENZO', 1074211, CAST(N'2018-04-21 13:18:08.580' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (558, N'JAQUELINE CASTELLI ALMEIDA', 1722641, CAST(N'2018-04-21 13:18:08.623' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (559, N'AMAVIRA HAYDEE CASTGLIONI BARRIOS', 1251183, CAST(N'2018-04-21 13:18:08.670' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (560, N'CLAUDIO GABRIEL CASTIGLIONI NICOLELLA', 1822684, CAST(N'2018-04-21 13:18:08.713' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (561, N'VERONICA CASTILLO BUGAIOV', 3016605, CAST(N'2018-04-21 13:18:08.757' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (562, N'JOSE  LUIS CASTILLO CABRERA', 3154261, CAST(N'2018-04-21 13:18:08.800' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (563, N'ESBAR GONZALO CASTILLO RAMIREZ', 4388017, CAST(N'2018-04-21 13:18:08.840' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (564, N'FLAVIO SOLIS CASTRO SAYAS', 2006540, CAST(N'2018-04-21 13:18:08.887' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (565, N'NORA MARIA CASTRO NAVAJAS', 1009374, CAST(N'2018-04-21 13:18:08.930' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (566, N'HUMBERTO CASTRO VELAZQUEZ', 3095588, CAST(N'2018-04-21 13:18:08.973' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (567, N'RAUL BOLIVAR CASTRO SILVA', 2903472, CAST(N'2018-04-21 13:18:09.017' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (568, N'LUIS MARIA CASTRO RAMIREZ', 3163813, CAST(N'2018-04-21 13:18:09.060' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (569, N'MARGARITA CASTRO GIUGGIOLINI', 1997143, CAST(N'2018-04-21 13:18:09.103' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (570, N'VICTOR  HUGO CASTRO ', 2530608, CAST(N'2018-04-21 13:18:09.147' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (571, N'JOSE CARLOS CASTRO MENY', 1049997, CAST(N'2018-04-21 13:18:09.193' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (572, N'MONICA CASTRO ROMANO', 1460748, CAST(N'2018-04-21 13:18:09.233' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (573, N'JORGE CASTRO VEGA', 1801270, CAST(N'2018-04-21 13:18:09.277' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (574, N'ALICIA CASTRO RIVERA', 1113499, CAST(N'2018-04-21 13:18:09.320' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (575, N'PABLO CASTRO PARDIÑAS', 1881094, CAST(N'2018-04-21 13:18:09.367' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (576, N'MARIO EDUARDO CASTRO LABORDA', 1637807, CAST(N'2018-04-21 13:18:09.410' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (577, N'ALEJANDRO CASTROMAN HACKEMBRUCH', 3073758, CAST(N'2018-04-21 13:18:09.453' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (578, N'MARIA ALEJANDRA CASULLO BARTOLOTE', 3329921, CAST(N'2018-04-21 13:18:09.497' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (579, N'EDISON HUMBERTO CASULO BERNASCONI', 2001129, CAST(N'2018-04-21 13:18:09.540' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (580, N'ANIBAL CATALDO RODRIGUEZ', 2623435, CAST(N'2018-04-21 13:18:09.587' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (581, N'JORGE ANTONIO CATENACCIO ALONSO', 1038969, CAST(N'2018-04-21 13:18:09.633' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (582, N'MARIA ELIZABETH CATEURA DEAMBROGIO', 1157924, CAST(N'2018-04-21 13:18:09.680' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (583, N'GERMAN FEDERICO CAVALLERO DALIA', 3741559, CAST(N'2018-04-21 13:18:09.720' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (584, N'EDUARDO NELSON CAVALLI ASOLE', 1365477, CAST(N'2018-04-21 13:18:09.763' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (585, N'MARIA NOEL CAYAFA TAPIE', 3073036, CAST(N'2018-04-21 13:18:09.807' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (586, N'LAURA CAYON CRUZ', 1704247, CAST(N'2018-04-21 13:18:09.850' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (587, N'DANIEL CAZET MONTES', 1321706, CAST(N'2018-04-21 13:18:09.893' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (588, N'BEATRIZ AIDA CAZZANIGA GUGGERI', 2592496, CAST(N'2018-04-21 13:18:09.937' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (589, N'ESTRELLITA CELIA CEA VOARINO', 975361, CAST(N'2018-04-21 13:18:09.977' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (590, N'ADRIANA CECCONE ', 1430457, CAST(N'2018-04-21 13:18:10.020' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (591, N'MARIA CRISTINA CEDRES SILVERA', 3418494, CAST(N'2018-04-21 13:18:10.063' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (592, N'ANGEL CEDRES SANTOS', 3587281, CAST(N'2018-04-21 13:18:10.107' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (593, N'ALBA BEATRIZ CENTURION ARBALLO', 3812709, CAST(N'2018-04-21 13:18:10.153' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (594, N'NARIA LOURDES CERCHI GIL', 3610769, CAST(N'2018-04-21 13:18:10.197' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (595, N'GRACIELA IVONNE CERIANI BRUSCO', 1093093, CAST(N'2018-04-21 13:18:10.240' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (596, N'ELENA CERNUSCHI PAEZ', 1656164, CAST(N'2018-04-21 13:18:10.287' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (597, N'RAMIRO CERRUTI GIMENEZ', 3119205, CAST(N'2018-04-21 13:18:10.330' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (598, N'RODRIGO LORENZO CERRUTTI GIMENEZ', 3476979, CAST(N'2018-04-21 13:18:10.377' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (599, N'GUSTAVO CERSOSIMO MICHELINI', 3351917, CAST(N'2018-04-21 13:18:10.420' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (600, N'ANA MARIA CERUTTI ALBARELLO', 1316835, CAST(N'2018-04-21 13:18:10.463' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (601, N'YANET LILIAN CERVI ABELEIRA', 1252262, CAST(N'2018-04-21 13:18:10.503' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (602, N'ERNESTO CESAR ESTRADA', 3588473, CAST(N'2018-04-21 13:18:10.550' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (603, N'JUANPABLO CESIO CESCONI', 2572578, CAST(N'2018-04-21 13:18:10.600' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (604, N'JOSÉ MARÍA CESTAU DOPESO', 976688, CAST(N'2018-04-21 13:18:10.647' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (605, N'MANUEL ALBERTO CHABALGOITY RODRIGUEZ', 3468286, CAST(N'2018-04-21 13:18:10.690' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (606, N'IRIOMAR CHAGAS MIRANDA', 3915015, CAST(N'2018-04-21 13:18:10.733' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (607, N'RENE CHAGAS SANTELLANO', 1830403, CAST(N'2018-04-21 13:18:10.777' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (608, N'PABLO CHALAR RODRIGUEZ', 4161343, CAST(N'2018-04-21 13:18:10.820' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (609, N'JULIO CESAR CHALAR VECCHIO', 954511, CAST(N'2018-04-21 13:18:10.863' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (610, N'MARIA ROSA CHAMACHOURDJIAN TABAKIAN', 1265372, CAST(N'2018-04-21 13:18:10.907' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (611, N'LUIS DANTE CHARLES VINCIGUERRA', 1753257, CAST(N'2018-04-21 13:18:10.953' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (612, N'SILVANA MABEL CHARLONE MARTINEZ', 1592837, CAST(N'2018-04-21 13:18:10.997' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (613, N'OSVALDO RAFAEL CHAVASCO OSVALDO', 3597809, CAST(N'2018-04-21 13:18:11.040' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (614, N'JOSE ENRIQUE CHAVAT AZENI', 1974402, CAST(N'2018-04-21 13:18:11.083' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (615, N'LIDIA MARGOT CHAVES PEDREIRA', 3705439, CAST(N'2018-04-21 13:18:11.127' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (616, N'AGUSTINA ESTELA CHAVES MIRABALLES', 1988487, CAST(N'2018-04-21 13:18:11.177' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (617, N'JORGE OMAR CHEDIAK GONZALEZ', 1123527, CAST(N'2018-04-21 13:18:11.220' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (618, N'ZOILO JAVIER CHEVESTE ', 2530603, CAST(N'2018-04-21 13:18:11.267' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (619, N'JACQUELINE RITA CHICO SALGADO', 1363786, CAST(N'2018-04-21 13:18:11.310' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (620, N'RICARDO ALEXIS CHIECCHI ROSTAN', 3547592, CAST(N'2018-04-21 13:18:11.353' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (621, N'ANTONIO CHIESA BRUNO', 3216278, CAST(N'2018-04-21 13:18:11.397' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (622, N'SERGIO CHIESA DUHALDE', 3651058, CAST(N'2018-04-21 13:18:11.440' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (623, N'RUBENS CHIRIBAO BIANCHINOTTI', 3259249, CAST(N'2018-04-21 13:18:11.487' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (624, N'JUAN A. CHIRUCHI FUENTES', 3739540, CAST(N'2018-04-21 13:18:11.527' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (625, N'JORGE EDUARDO CHRISTY DAVIES', 1695126, CAST(N'2018-04-21 13:18:11.573' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (626, N'LUIS AGUSTIN CIGANDA ROMERO', 4084445, CAST(N'2018-04-21 13:18:11.617' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (627, N'CESARE GABRIEL CINGIA ALCALDE', 1273203, CAST(N'2018-04-21 13:18:11.663' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (628, N'LUIS MILTON CISNEROS BENITEZ', 2723316, CAST(N'2018-04-21 13:18:11.710' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (629, N'ADRIANA MARIA CITTADINO PRETI', 1125864, CAST(N'2018-04-21 13:18:11.770' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (630, N'JUAN JOSE CLADERA COHN', 1318542, CAST(N'2018-04-21 13:18:11.813' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (631, N'JOSE CLASTORNIK TAUBE', 3018623, CAST(N'2018-04-21 13:18:11.853' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (632, N'HECTOR ANIBAL COCARO PIPPOLO', 2821683, CAST(N'2018-04-21 13:18:11.900' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (633, N'HUGO COELHO SANDIN', 1481379, CAST(N'2018-04-21 13:18:11.943' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (634, N'HEBER ANTONIO COELLO PEREZ', 3749451, CAST(N'2018-04-21 13:18:11.987' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (635, N'ADRIANA COELLO COLOMBO', 1462389, CAST(N'2018-04-21 13:18:12.030' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (636, N'HEBER ANTONIO COELLO PEREZ', 3749451, CAST(N'2018-04-21 13:18:12.073' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (637, N'WALTER ALEX COFONE LARROSA', 998415, CAST(N'2018-04-21 13:18:12.117' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (638, N'OSVALDO COITIÑO SANTOS', 1492977, CAST(N'2018-04-21 13:18:12.160' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (639, N'JORGE COLACCE MOLINARI', 1167582, CAST(N'2018-04-21 13:18:12.207' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (640, N'EDGAR DIONISIO COLLAZO SANCHEZ', 3458418, CAST(N'2018-04-21 13:18:12.247' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (641, N'MARCIA LEONORA COLLAZO IBAÑEZ', 1883764, CAST(N'2018-04-21 13:18:12.290' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (642, N'JOSE ENRIQUE COLMAN ', 2610655, CAST(N'2018-04-21 13:18:12.337' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (643, N'CARLOS VICENTE COLOM SCALONE', 1127503, CAST(N'2018-04-21 13:18:12.380' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (644, N'ALBERTO RUBEN CONDE MORIONDO', 1686109, CAST(N'2018-04-21 13:18:12.423' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (645, N'CARLOS ROBERTO CONDE CARRERAS', 1277969, CAST(N'2018-04-21 13:18:12.467' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (646, N'OLGA ELENA CONDENANZA HAEDO', 1116804, CAST(N'2018-04-21 13:18:12.510' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (647, N'KARL FREDERICK CONSOLANDICH CIRISOLA', 1440755, CAST(N'2018-04-21 13:18:12.553' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (648, N'JUAN CARLOS CONTARIN VILLA', 1189525, CAST(N'2018-04-21 13:18:12.600' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (649, N'PABLO GIOVANI CONTI MATTIO', 3041336, CAST(N'2018-04-21 13:18:12.647' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (650, N'ALBERTO LUIS CONTI NAPPA', 667106, CAST(N'2018-04-21 13:18:12.690' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (651, N'GUZMAN CONTRERAS RODRIGUEZ', 1116782, CAST(N'2018-04-21 13:18:12.737' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (652, N'OSCAR MARIO COPPOLA ARGENTO', 1218902, CAST(N'2018-04-21 13:18:12.780' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (653, N'DORELEY LILIÁN CORBO PEREYRA', 3330724, CAST(N'2018-04-21 13:18:12.823' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (654, N'DANIEL JACINTO CORBO LONGUEIRA', 1333511, CAST(N'2018-04-21 13:18:12.867' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (655, N'LUZ MARINA CORBO SOPEÑA', 2615139, CAST(N'2018-04-21 13:18:12.910' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (656, N'NERY MAURO CORBO LOPEZ', 1696990, CAST(N'2018-04-21 13:18:12.957' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (657, N'WASHINGTON CORDATTI BALBI', 3260250, CAST(N'2018-04-21 13:18:13.000' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (658, N'MARIO EDUARDO CORDOBA VITA', 3504458, CAST(N'2018-04-21 13:18:13.047' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (659, N'PAOLA CORDONE GIASSANTI', 3342630, CAST(N'2018-04-21 13:18:13.097' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (660, N'ALBA MARIA CORRAL FERREIRA', 1759990, CAST(N'2018-04-21 13:18:13.147' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (661, N'NANCI AMANDA CORRALES GARCIA', 1982456, CAST(N'2018-04-21 13:18:13.193' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (662, N'UDISON CORREA DUTRA', 3142451, CAST(N'2018-04-21 13:18:13.237' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (663, N'DARWIN CARLOS CORREA COSTA', 3397152, CAST(N'2018-04-21 13:18:13.280' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (664, N'HUMBERTO CORREA SARAVIA', 3521851, CAST(N'2018-04-21 13:18:13.323' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (665, N'ADRIANA CORREA DUTRA', 4209209, CAST(N'2018-04-21 13:18:13.370' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (666, N'GABRIEL CORREA LUNA ORGAZ', 1458070, CAST(N'2018-04-21 13:18:13.413' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (667, N'ALEJANDRO CORREA LUNA CAMP', 1114839, CAST(N'2018-04-21 13:18:13.457' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (668, N'NAIR ARLET CORTALEZZI ALVAREZ', 2572009, CAST(N'2018-04-21 13:18:13.503' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (669, N'PABLO CORTES BARRERA', 3631093, CAST(N'2018-04-21 13:18:13.547' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (670, N'ANTONIO CORUJO ', 3541306, CAST(N'2018-04-21 13:18:13.593' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (671, N'MARÍA DEL CARMEN CORUJO MILAN', 1487454, CAST(N'2018-04-21 13:18:13.643' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (672, N'WILLIAM CORUJO GUARDIA', 1645948, CAST(N'2018-04-21 13:18:13.690' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (673, N'JOSE COSENTINO FERNANDEZ', 3619508, CAST(N'2018-04-21 13:18:13.733' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (674, N'MARIA AUXILIADORA COSSE BAUBETA', 1808762, CAST(N'2018-04-21 13:18:13.777' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (675, N'ANA CAROLINA COSSE GARRIDO', 1727134, CAST(N'2018-04-21 13:18:13.820' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (676, N'EDUARDO MARIO COSTA BARBATO', 2776105, CAST(N'2018-04-21 13:18:13.860' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (677, N'NILDA ESTHER COSTA FARIAS', 3482631, CAST(N'2018-04-21 13:18:13.907' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (678, N'IGNACIO COSTA DODERA', 3964443, CAST(N'2018-04-21 13:18:13.950' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (679, N'TABRE ROMAN COSTA ZAPARRART', 2867870, CAST(N'2018-04-21 13:18:13.993' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (680, N'RENEE COSTA MACHADO', 3380826, CAST(N'2018-04-21 13:18:14.037' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (681, N'ADRIANA COSTA FERREIRO', 1508390, CAST(N'2018-04-21 13:18:14.080' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (682, N'JOSE MAXIMINO COSTA VALVERDE', 1556234, CAST(N'2018-04-21 13:18:14.127' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (683, N'LUIS ROBERTO COSTA FERREIRO', 1508454, CAST(N'2018-04-21 13:18:14.170' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (684, N'MARIO MIGUEL COSTA GRECCO', 3132021, CAST(N'2018-04-21 13:18:14.213' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (685, N'NESTOR RAUL FARIÑA CIARDELLA', 1583619, CAST(N'2018-04-21 13:18:14.257' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (686, N'ALBERTO COURIEL CURIEL', 1264130, CAST(N'2018-04-21 13:18:14.303' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (687, N'HECTOR GABRIEL COURTOISIE BEYHAUT', 1449223, CAST(N'2018-04-21 13:18:14.343' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (688, N'FREDY EMILIO COUSILLAS PREZA', 1586061, CAST(N'2018-04-21 13:18:14.390' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (689, N'FELIX JAVIER COUSILLAS IGLESISAS', 1621079, CAST(N'2018-04-21 13:18:14.433' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (690, N'LIBER RAMON COUSTARD GONZALEZ', 3069793, CAST(N'2018-04-21 13:18:14.477' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (691, N'MARÍA VICTORIA COUTO VILAR', 1241635, CAST(N'2018-04-21 13:18:14.523' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (692, N'JOSE MARIA COYA ALBOA', 2975344, CAST(N'2018-04-21 13:18:14.567' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (693, N'FRANCISCO CRECSI NUÑEZ', 3595527, CAST(N'2018-04-21 13:18:14.617' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (694, N'MARIA CRISTINA CRESPO HARO', 1332476, CAST(N'2018-04-21 13:18:14.660' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (695, N'JUAN CRISTINA CHERALDI', 1426206, CAST(N'2018-04-21 13:18:14.707' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (696, N'IVONNE MARIE CROCCO PAZOS', 1593221, CAST(N'2018-04-21 13:18:14.750' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (697, N'VENTURA OFELIA CROCE NUNES', 1573912, CAST(N'2018-04-21 13:18:14.793' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (698, N'BEATRÍZ CRUDELI BRAVO', 1864869, CAST(N'2018-04-21 13:18:14.840' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (699, N'GUSTAVO ADOLFO CRUZ PEREYRA', 3478627, CAST(N'2018-04-21 13:18:14.883' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (700, N'DANUBIO CRUZ MELO', 1984738, CAST(N'2018-04-21 13:18:14.937' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (701, N'MARIA DE LOS ANGELES CRUZ RIVERO', 2612305, CAST(N'2018-04-21 13:18:14.983' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (702, N'LUIS CUADRADO ISASA', 3476642, CAST(N'2018-04-21 13:18:15.027' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (703, N'FERNANDO ARTEMIO CUELLO TOLEDO', 2738558, CAST(N'2018-04-21 13:18:15.067' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (704, N'ADAN CUELLO ROSA', 1539346, CAST(N'2018-04-21 13:18:15.113' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (705, N'BEATRIZ CUENCA FERNANDEZ', 3019912, CAST(N'2018-04-21 13:18:15.157' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (706, N'WALTER CUEVAS SANCHEZ', 3529302, CAST(N'2018-04-21 13:18:15.200' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (707, N'GABRIELA CULTELLI DELFINO', 1645864, CAST(N'2018-04-21 13:18:15.247' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (708, N'JUAN CURBELO DEL BOSCO', 1966072, CAST(N'2018-04-21 13:18:15.290' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (709, N'WASHINGTON ARIEL CURBELO MARTINEZ', 1800265, CAST(N'2018-04-21 13:18:15.333' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (710, N'CARINA CURCI FERRANDO', 1560627, CAST(N'2018-04-21 13:18:15.377' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (711, N'SERGIO CARLOS CURTO OCHOA', 1220888, CAST(N'2018-04-21 13:18:15.420' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (712, N'OSCAR CURUTCHET ', 1962194, CAST(N'2018-04-21 13:18:15.467' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (713, N'MAURICIO CUSANO LUPACHINA', 1388861, CAST(N'2018-04-21 13:18:15.510' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (714, N'SERGIO NEY D`OLIVEIRA FRIONI', 1375222, CAST(N'2018-04-21 13:18:15.553' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (715, N'HOMERO HECTOR DA COSTA PORTO ANDRADE', 2715757, CAST(N'2018-04-21 13:18:15.600' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (716, N'ANTONIO DA ROSA NIVES BROCHI', 2677893, CAST(N'2018-04-21 13:18:15.647' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (717, N'LAURA DA ROSA SUM', 2749682, CAST(N'2018-04-21 13:18:15.690' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (718, N'EBER DA ROSA VAZQUEZ', 1998291, CAST(N'2018-04-21 13:18:15.733' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (719, N'JOSE PABLO DA SILVA ALMENAR', 3832808, CAST(N'2018-04-21 13:18:15.777' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (720, N'STELLA MARY DA SILVA TESSADRI', 3174186, CAST(N'2018-04-21 13:18:15.820' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (721, N'CRISTINA MARIA DA SILVA LASSALLE', 2622851, CAST(N'2018-04-21 13:18:15.863' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (722, N'RAMON ISMAEL DA SILVA ALMENAR', 2926793, CAST(N'2018-04-21 13:18:15.907' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (723, N'SANTOS RAMON DA SILVA NUÑEZ', 3575701, CAST(N'2018-04-21 13:18:15.950' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (724, N'ANA MARIA BATOVSKY SALIWONCHIK', 3376403, CAST(N'2018-04-21 13:18:15.993' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (725, N'SHIRLEY YANET PEREIRA  COLOMBO', 2731840, CAST(N'2018-04-21 13:18:16.040' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (726, N'JUAN CARLOS DARDANO LAYES', 3075672, CAST(N'2018-04-21 13:18:16.080' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (727, N'PABLO DANIEL DALERA OJEDA', 4103720, CAST(N'2018-04-21 13:18:16.130' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (728, N'MARTIN ISMAEL DALGALARRONDO AÑON', 2564255, CAST(N'2018-04-21 13:18:16.170' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (729, N'ATILIO LUIS NEY DALL´ORSO ODINO', 1461536, CAST(N'2018-04-21 13:18:16.213' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (730, N'SUSANA DALMAS GARCEN', 1136419, CAST(N'2018-04-21 13:18:16.257' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (731, N'BRUNO RODOLFO D''AMADO RILLA', 1553824, CAST(N'2018-04-21 13:18:16.300' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (732, N'ANABELLA ELIZABETH DAMASCO SOLARI', 1588629, CAST(N'2018-04-21 13:18:16.343' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (733, N'JOSE LUIS DAMONTE PELLAROLO', 757387, CAST(N'2018-04-21 13:18:16.387' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (734, N'MARELLA ROSSANA D''ANDREA CASTRO', 3242734, CAST(N'2018-04-21 13:18:16.427' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (735, N'FERNANDO DANIEL GARCIA', 3275345, CAST(N'2018-04-21 13:18:16.470' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (736, N'FABIANA ESTELA DANTA RODRIGUEZ', 2538196, CAST(N'2018-04-21 13:18:16.513' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (737, N'JACQUELINE DARDANO ROSSINI', 2570379, CAST(N'2018-04-21 13:18:16.557' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (738, N'GUILLERMO DATI FERNANDEZ', 3979740, CAST(N'2018-04-21 13:18:16.603' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (739, N'MARCELO DAUBER MARTA', 1760920, CAST(N'2018-04-21 13:18:16.650' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (740, N'SILVIA OLGA DAURIA PRANDO', 1188186, CAST(N'2018-04-21 13:18:16.697' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (741, N'HUGO EMILIO DAVILA ', 3242917, CAST(N'2018-04-21 13:18:16.737' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (742, N'SHIRLEY BEATRIZ DE ARMAS CAMACHO', 2531302, CAST(N'2018-04-21 13:18:16.783' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (743, N'ADRIANA MIRIAM DE AZIZ FOLIADOSO', 1879777, CAST(N'2018-04-21 13:18:16.827' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (744, N'ALEJANDRA DE BELLIS BONILLA', 1974151, CAST(N'2018-04-21 13:18:16.870' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (745, N'MAURICIO DE BENEDETTI SCAPULA', 3017348, CAST(N'2018-04-21 13:18:16.913' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (746, N'MAURO DE CAMILLI RAFFO', 1502554, CAST(N'2018-04-21 13:18:16.957' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (747, N'SYLVIA JUDITH DE CAMILLI HERMIDA', 1313598, CAST(N'2018-04-21 13:18:17.000' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (748, N'SUSANA TERESA DE FEO NAGGI', 1859163, CAST(N'2018-04-21 13:18:17.043' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (749, N'ANDRES PEDRO DE GROSSI LISTUR', 1253501, CAST(N'2018-04-21 13:18:17.087' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (750, N'MARIELA DE GUIDA SILVESTRI', 1198451, CAST(N'2018-04-21 13:18:17.130' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (751, N'LAURA DE LA IGLESIA MEDINA', 1906456, CAST(N'2018-04-21 13:18:17.177' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (752, N'RAUL OMAR DE LA IGLESIA MEDINA', 1276539, CAST(N'2018-04-21 13:18:17.220' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (753, N'ALBERTO ANDRES DE LA IGLESIA MEDINA', 1687418, CAST(N'2018-04-21 13:18:17.263' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (754, N'FERNANDO DE LA PEÑA GUTIERREZ', 3305161, CAST(N'2018-04-21 13:18:17.307' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (755, N'JOSE DE LA ROSA MACEDO', 1887604, CAST(N'2018-04-21 13:18:17.353' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (756, N'DANIEL DE LEON SANTOS', 1701273, CAST(N'2018-04-21 13:18:17.397' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (757, N'ROSARIO DE LEON MANZOR', 2873140, CAST(N'2018-04-21 13:18:17.440' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (758, N'WALTER ULISES DE LEON OJEDA', 4242097, CAST(N'2018-04-21 13:18:17.487' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (759, N'LEONARDO ENRIQUE DE LEON FRASCOLLA', 1793288, CAST(N'2018-04-21 13:18:17.530' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (760, N'WILMER DINER DE LEON LOPEZ', 3609705, CAST(N'2018-04-21 13:18:17.573' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (761, N'JUAN CARLOS DE LEON SARACHO', 1255841, CAST(N'2018-04-21 13:18:17.620' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (762, N'DANIEL DE LEON HUELMOS', 2824879, CAST(N'2018-04-21 13:18:17.670' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (763, N'HECTOR DE LEON FERNANDEZ', 1715801, CAST(N'2018-04-21 13:18:17.713' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (764, N'CARLOS ENRIQUE DE LEON TRAVIESO', 1837147, CAST(N'2018-04-21 13:18:17.753' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (765, N'LILA DE LIMA BELOQUI', 3502663, CAST(N'2018-04-21 13:18:17.800' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (766, N'JUAN JOSE DE LOS SANTOS MAISONAVE', 2654504, CAST(N'2018-04-21 13:18:17.840' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (767, N'DARCY DE LOS SANTOS SEVERGNINI', 3250902, CAST(N'2018-04-21 13:18:17.890' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (768, N'JULIO DE LOS SANTOS APESTEGUY', 3591134, CAST(N'2018-04-21 13:18:17.933' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (769, N'FELICIO DE LOS SANTOS MOREIRA', 1696966, CAST(N'2018-04-21 13:18:17.977' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (770, N'ROBERTO DE LOS SANTOS SUAREZ', 1257717, CAST(N'2018-04-21 13:18:18.020' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (771, N'OSCAR JOE DE LOS SANTOS PIRIZ', 2635338, CAST(N'2018-04-21 13:18:18.063' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (772, N'MARÍA ADRIANA DE LOS SANTOS ARIGONI', 3527393, CAST(N'2018-04-21 13:18:18.110' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (773, N'HORACIO DANIEL DE LOS SANTOS TOMAS', 4012889, CAST(N'2018-04-21 13:18:18.157' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (774, N'JOSE ALFREDO DE MATTOS DE MELLO', 1429671, CAST(N'2018-04-21 13:18:18.200' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (775, N'CARLOS DE MELLO TABOADA', 1150982, CAST(N'2018-04-21 13:18:18.243' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (776, N'EDILBERTO DE OLIVEIRA RODRIGUEZ', 3365099, CAST(N'2018-04-21 13:18:18.290' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (777, N'MARCELO ADAN DE POLSI CERRUTI', 1454577, CAST(N'2018-04-21 13:18:18.337' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (778, N'ANA MARGARITA DE SALTERAIN GUTIERREZ', 1832025, CAST(N'2018-04-21 13:18:18.377' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (779, N'HECTOR BARRET DE SANTA ANA ALVAREZ', 1285903, CAST(N'2018-04-21 13:18:18.420' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (780, N'PATRICIA DE SANTIS COSTA', 1890181, CAST(N'2018-04-21 13:18:18.467' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (781, N'BLANCA MARIELA DE SOUZA LOZANO', 3248186, CAST(N'2018-04-21 13:18:18.510' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (782, N'GONZALO DE TORO GONZALEZ', 1134345, CAST(N'2018-04-21 13:18:18.553' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (783, N'MARIA DEL PINO DE VEGA NAPOLI', 1042263, CAST(N'2018-04-21 13:18:18.600' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (784, N'VIVIEN DENISE DEAMESTOY MUSETTI', 1574006, CAST(N'2018-04-21 13:18:18.647' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (785, N'HUGO ALFREDO DEBONE IBERO', 1600969, CAST(N'2018-04-21 13:18:18.690' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (786, N'ENRIQUE LUIS DECOUD SERRA', 1793944, CAST(N'2018-04-21 13:18:18.733' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (787, N'GABRIEL EDUARDO DEL RIO NOBLE', 1797479, CAST(N'2018-04-21 13:18:18.777' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (788, N'AGUSTIN DELEO MAS', 1190268, CAST(N'2018-04-21 13:18:18.820' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (789, N'ALVARO LUIS DELGADO CERETTA', 1651032, CAST(N'2018-04-21 13:18:18.863' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (790, N'GUSTAVO RODOLFO DELGADO MLYNEK', 1678546, CAST(N'2018-04-21 13:18:18.910' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (791, N'JORGE DELGADO FERNANDEZ', 1311032, CAST(N'2018-04-21 13:18:18.953' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (792, N'DANIEL HUGO DELGADO SICCO', 1311604, CAST(N'2018-04-21 13:18:18.997' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (793, N'PABLO ALEJANDRO DELGROSSO ABRINIS', 3911023, CAST(N'2018-04-21 13:18:19.040' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (794, N'UMBERTO DELLA MEA PALUMBO', 1375415, CAST(N'2018-04-21 13:18:19.087' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (795, N'AMANDA ROSA DELLA VENTURA VALERIO', 3801502, CAST(N'2018-04-21 13:18:19.130' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (796, N'NILA MARIELA DELOR PEDROZO', 3250338, CAST(N'2018-04-21 13:18:19.177' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (797, N'MARIELLA DEMARCO BEROIS', 2530287, CAST(N'2018-04-21 13:18:19.220' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (798, N'ALLEN DENBY MONTALDO', 1197809, CAST(N'2018-04-21 13:18:19.260' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (799, N'MARTIN DERSARKISIAN APELIAN', 1634428, CAST(N'2018-04-21 13:18:19.303' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (800, N'BEATRIZ DETOMASI MAGGIOLO', 1138986, CAST(N'2018-04-21 13:18:19.347' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (801, N'MARCELO GABRIEL DI BELLO FRAGA', 1683546, CAST(N'2018-04-21 13:18:19.393' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (802, N'ADRIANA DI GIOVANNI NICOLA', 1435792, CAST(N'2018-04-21 13:18:19.433' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (803, N'RUBEN DI GIOVANNI ', 3184442, CAST(N'2018-04-21 13:18:19.480' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (804, N'JOSE ENRIQUE DI MARCO SUAREZ', 1880349, CAST(N'2018-04-21 13:18:19.523' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (805, N'JUAN MIGUEL DI RUOCCO ALANIZ', 1321868, CAST(N'2018-04-21 13:18:19.567' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (806, N'JUN CARLOS DIANO OXLEY', 3813110, CAST(N'2018-04-21 13:18:19.613' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (807, N'JUAN JOSE DIAZ DIAZ', 1331370, CAST(N'2018-04-21 13:18:19.660' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (808, N'FABRICIO GONZALO DIAZ CANAVESSI', 3539416, CAST(N'2018-04-21 13:18:19.703' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (809, N'ALICIA DIAZ DE ROSSI', 1479072, CAST(N'2018-04-21 13:18:19.743' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (810, N'ORLANDO DIAZ LOPEZ', 2989442, CAST(N'2018-04-21 13:18:19.790' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (811, N'FRANCIA LIBRE DIAZ OLIVERA', 1038501, CAST(N'2018-04-21 13:18:19.830' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (812, N'JOSE GABRIEL DIAZ LANDONI', 3082914, CAST(N'2018-04-21 13:18:19.877' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (813, N'ALBERTO DIAZ ACOSTA', 1301645, CAST(N'2018-04-21 13:18:19.920' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (814, N'MARIO NELGAR DIAZ BIZERA', 1755963, CAST(N'2018-04-21 13:18:19.963' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (815, N'RAUL HECTOR DIAZ GORDILLO', 1522616, CAST(N'2018-04-21 13:18:20.007' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (816, N'JORGE GISLENO DIAZ ALMEIDA', 3488583, CAST(N'2018-04-21 13:18:20.050' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (817, N'MARIA DELCARMEN DIAZ SIERRA', 1591712, CAST(N'2018-04-21 13:18:20.093' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (818, N'ALBERTO DIAZ ACOSTA', 1301645, CAST(N'2018-04-21 13:18:20.140' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (819, N'JOSE ARIEL DIAZ PEREZ', 3766144, CAST(N'2018-04-21 13:18:20.183' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (820, N'MARTIN DIBARBOURE ROSSINI', 1553071, CAST(N'2018-04-21 13:18:20.227' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (821, N'PEDRO PABLO DIGHIERO ABENTE', 1665892, CAST(N'2018-04-21 13:18:20.270' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (822, N'IRMA LUCY DINELLO PENINO', 1082513, CAST(N'2018-04-21 13:18:20.313' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (823, N'CLAUDIA REBECA DIPERNA ACOSTA', 1907763, CAST(N'2018-04-21 13:18:20.360' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (824, N'RAFAEL ANGEL DIRINGUER SANTORO', 3195733, CAST(N'2018-04-21 13:18:20.403' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (825, N'ALVARO DIZ LLANES', 2610364, CAST(N'2018-04-21 13:18:20.443' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (826, N'SANDRA ROSELLA DODERA IRIGOYEN', 3085860, CAST(N'2018-04-21 13:18:20.490' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (827, N'LAURA ISABEL DOGLIO CASULLO', 3931116, CAST(N'2018-04-21 13:18:20.530' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (828, N'GUSTAVO A. D''OLIVEIRA MAILHE', 709695, CAST(N'2018-04-21 13:18:20.577' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (829, N'GUILLERMO JOSE DOMENECH MARTINEZ', 1121454, CAST(N'2018-04-21 13:18:20.623' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (830, N'DORA DOMENECH BACCINO', 1060377, CAST(N'2018-04-21 13:18:20.670' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (831, N'MARIA ELVIRA DOMINGUEZ ALONSO', 1226419, CAST(N'2018-04-21 13:18:20.713' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (832, N'GUSTAVO DOMINGUEZ RUIZ', 2824429, CAST(N'2018-04-21 13:18:20.757' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (833, N'MARIA CRISTINA DOMINGUEZ MARTINEZ', 1799224, CAST(N'2018-04-21 13:18:20.803' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (834, N'JULIA ELIZABETH DOMINGUEZ BERGER', 3421951, CAST(N'2018-04-21 13:18:20.847' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (835, N'SHIRLEY MABEL DOMINGUEZ CAÑABATE', 2932537, CAST(N'2018-04-21 13:18:20.890' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (836, N'JUAN JOSE DOMINGUEZ DIAZ', 3518160, CAST(N'2018-04-21 13:18:20.933' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (837, N'DANIEL OSCAR DOMINIONI GHIGGIA', 1350197, CAST(N'2018-04-21 13:18:20.977' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (838, N'FRANCISCO JAVIER DONNAGELO CLEFFI', 2717363, CAST(N'2018-04-21 13:18:21.023' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (839, N'LEANDRO JOSE DOS SANTOS RODRIGUEAZ', 3043723, CAST(N'2018-04-21 13:18:21.063' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (840, N'ROBERTO ANIBAL DOS SANTOS RODRIGUEZ', 1992118, CAST(N'2018-04-21 13:18:21.110' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (841, N'NELSON DOS SANTOS ', 3096789, CAST(N'2018-04-21 13:18:21.153' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (842, N'COSME DAVID DOTI GENTA', 3524558, CAST(N'2018-04-21 13:18:21.200' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (843, N'MARIA CRISTINA DOTTA BARDIER', 1185124, CAST(N'2018-04-21 13:18:21.240' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (844, N'LUCIA DOTTI ', 1789923, CAST(N'2018-04-21 13:18:21.290' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (845, N'ILEANA MARIA DOYENART LAMBANTOV', 3728197, CAST(N'2018-04-21 13:18:21.347' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (846, N'ALEJANDRO DRAPER PRADEIRO', 3126420, CAST(N'2018-04-21 13:18:21.390' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (847, N'ALVARO RICARDO DUARTE PEREZ', 1793377, CAST(N'2018-04-21 13:18:21.437' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (848, N'CARLOS PABLO DUARTE COUTO', 3140843, CAST(N'2018-04-21 13:18:21.477' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (849, N'FREDDY FABIAN DUARTE OBISPO', 3063277, CAST(N'2018-04-21 13:18:21.523' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (850, N'CANDIDO DUARTE FREITAS', 3482881, CAST(N'2018-04-21 13:18:21.567' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (851, N'MARLENE DUARTE CABRERA', 3975193, CAST(N'2018-04-21 13:18:21.613' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (852, N'SERGIO NICOLAS DUARTE FERNANDEZ', 5353069, CAST(N'2018-04-21 13:18:21.660' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (853, N'WALTER LUIS DUARTE ACOSTA', 1449609, CAST(N'2018-04-21 13:18:21.710' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (854, N'JUAN CARLOS DUARTE SENA', 1231040, CAST(N'2018-04-21 13:18:21.750' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (855, N'JORGE WILLIAM DUBROCCA ', 1600152, CAST(N'2018-04-21 13:18:21.797' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (856, N'MARIA ALEJANDRA DUFRECHOU CASAL', 1571306, CAST(N'2018-04-21 13:18:21.840' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (857, N'NORALI DUHALDE ROCCI', 1397521, CAST(N'2018-04-21 13:18:21.883' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (858, N'ENRIQUE ADOLFO DUPONT GALIONE', 1220790, CAST(N'2018-04-21 13:18:21.930' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (859, N'EDUARDO CESAR DUPONT GALIONE', 1220796, CAST(N'2018-04-21 13:18:21.973' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (860, N'FERNANDO ARIEL DURAN SANCHEZ', 1987141, CAST(N'2018-04-21 13:18:22.017' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (861, N'MARCIANO DURAN ', 2511894, CAST(N'2018-04-21 13:18:22.060' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (862, N'CARLOS DURAN CLAUSTRE', 3573016, CAST(N'2018-04-21 13:18:22.103' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (863, N'GRACIELA MARIA DURAN ARSUAGA', 1170508, CAST(N'2018-04-21 13:18:22.150' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (864, N'ANABELL DURAÑONA GRAVIER', 1228376, CAST(N'2018-04-21 13:18:22.193' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (865, N'ALANA SILVIA ECCHER MACHADO', 1920672, CAST(N'2018-04-21 13:18:22.240' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (866, N'GRACIELA ECHEGOYEN ', 3427673, CAST(N'2018-04-21 13:18:22.280' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (867, N'GRACIELA SOFIA ECHENIQUE CAETANO', 3783678, CAST(N'2018-04-21 13:18:22.323' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (868, N'JUAN ARTURO ECHEVARRIA IGNATENCIO', 1738805, CAST(N'2018-04-21 13:18:22.370' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (869, N'ADRIANA MARIA ELENA ECHEVARRIA OLMOS', 3024975, CAST(N'2018-04-21 13:18:22.413' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (870, N'LEOPOLDO JAVIER ECHEVERRIA BESSONART', 3546826, CAST(N'2018-04-21 13:18:22.453' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (871, N'DIEGO EWARD ECHEVERRIA CASANOVA', 4458231, CAST(N'2018-04-21 13:18:22.500' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (872, N'ALBA INÉS ECHEVERRY CUENCA', 907197, CAST(N'2018-04-21 13:18:22.543' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (873, N'JOSE ECHEVESTE COSTA', 1215170, CAST(N'2018-04-21 13:18:22.590' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (874, N'ADRIANA EDELMAN ROJLIN', 1378542, CAST(N'2018-04-21 13:18:22.637' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (875, N'ISABEL EGUREN BONILLA', 3482065, CAST(N'2018-04-21 13:18:22.680' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (876, N'PABLO ARTURO EGUREN CASAL', 1321080, CAST(N'2018-04-21 13:18:22.727' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (877, N'FEDERICO EGUREN GONZALEZ', 4022813, CAST(N'2018-04-21 13:18:22.770' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (878, N'RICARDO MARIO EHRLICH SZALMIAN', 977792, CAST(N'2018-04-21 13:18:22.810' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (879, N'LUIS EDUARDO EIREA DENGRA', 933761, CAST(N'2018-04-21 13:18:22.853' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (880, N'LILIÁN SOLANGE ELHORRIBURU ARIGON', 1480589, CAST(N'2018-04-21 13:18:22.897' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (881, N'EDUARDO ELINGER MELLO', 3652817, CAST(N'2018-04-21 13:18:22.940' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (882, N'JOSE ELIZALDE CESAR', 2720327, CAST(N'2018-04-21 13:18:22.980' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (883, N'EDUARDO ELOSEGUI PEREIRA', 2802931, CAST(N'2018-04-21 13:18:23.027' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (884, N'MARIA SILVIA EMALDI FICCIO', 1869148, CAST(N'2018-04-21 13:18:23.070' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (885, N'ELIANA EMBID ANTUNEZ', 1638766, CAST(N'2018-04-21 13:18:23.113' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (886, N'MARÍA ELENA EMMENENGGER GIAMBIASSI', 1364401, CAST(N'2018-04-21 13:18:23.157' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (887, N'ELSA MABEL ENCISO PEREZ', 1796942, CAST(N'2018-04-21 13:18:23.203' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (888, N'CARLOS FERNANDO ENCISO CHRISTIANSEN', 1732437, CAST(N'2018-04-21 13:18:23.243' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (889, N'EDUARDO ENDERIZ MARTINEZ', 1705770, CAST(N'2018-04-21 13:18:23.290' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (890, N'HENRY ENGLER GOLOVCHENKO', 3529864, CAST(N'2018-04-21 13:18:23.333' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (891, N'MARIA JACQUELINE ENRIQUE TOLEDO', 1851809, CAST(N'2018-04-21 13:18:23.380' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (892, N'KARLA ANDREA ENSEÑAT VITALE', 2723170, CAST(N'2018-04-21 13:18:23.420' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (893, N'MARCELO ERLICH ALEXANDROWIC', 1255974, CAST(N'2018-04-21 13:18:23.463' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (894, N'VICTOR HUGO ERMINDA CASULO', 1368704, CAST(N'2018-04-21 13:18:23.510' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (895, N'TABARE ERRAMUSPE RAFFO', 1458129, CAST(N'2018-04-21 13:18:23.550' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (896, N'JUANITA ERRICO MAIO', 1212809, CAST(N'2018-04-21 13:18:23.597' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (897, N'MARIA LOURDES ERRO AZCARTE', 1383643, CAST(N'2018-04-21 13:18:23.643' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (898, N'DANIEL GUSTAVO ERSERGUER TESTA', 2001576, CAST(N'2018-04-21 13:18:23.690' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (899, N'SEBASTIAN ERVITI ESTRADE', 3261949, CAST(N'2018-04-21 13:18:23.730' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (900, N'MAGDALENA ESPILLAR PULLERI', 3322130, CAST(N'2018-04-21 13:18:23.773' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (901, N'GRACIELA BEATRIZ ESPINA IBARGUREN', 3768075, CAST(N'2018-04-21 13:18:23.820' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (902, N'NELLY ESPINO RODRIGUEZ', 3530341, CAST(N'2018-04-21 13:18:23.860' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (903, N'MARIELA ESPINO LUCIA', 1797907, CAST(N'2018-04-21 13:18:23.907' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (904, N'GUSTAVO ADRIAN ESPINOSA MARMOL', 2841867, CAST(N'2018-04-21 13:18:23.950' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (905, N'LUIS DANIEL ESPINOSA TEIBO', 2940265, CAST(N'2018-04-21 13:18:23.993' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (906, N'DANIEL ESPOSITO VILLAGRAN', 1282587, CAST(N'2018-04-21 13:18:24.040' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (907, N'CARLOS MARIA ESQUIBEL COLOTTA', 1706611, CAST(N'2018-04-21 13:18:24.083' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (908, N'IRMA ESQUIVEL MALDONADO', 1809750, CAST(N'2018-04-21 13:18:24.127' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (909, N'ATILIO ESQUIVEL GAONA', 1123431, CAST(N'2018-04-21 13:18:24.173' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (910, N'PEDRO OMAR ESTEVES PEREIRA DE SOUZA', 3248127, CAST(N'2018-04-21 13:18:24.217' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (911, N'DANIEL ESTEVES GONZALEZ', 3534085, CAST(N'2018-04-21 13:18:24.260' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (912, N'ALFREDO ESTEVEZ RODRIGUEZ', 825033, CAST(N'2018-04-21 13:18:24.307' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (913, N'MAUREN BEATRIZ ESTEVEZ ROSAS', 1676656, CAST(N'2018-04-21 13:18:24.347' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (914, N'RAUL EDUARDO ESTRADE GARCIA', 2772382, CAST(N'2018-04-21 13:18:24.393' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (915, N'RAUL JOSE ESTRAMIL BURIANO', 2810496, CAST(N'2018-04-21 13:18:24.440' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (916, N'JOSE LUIS ETCHAMENDI PIEGAS', 3794414, CAST(N'2018-04-21 13:18:24.487' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (917, N'ZULLY EMILIA ETCHEVERRY DELFINO', 1551917, CAST(N'2018-04-21 13:18:24.530' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (918, N'LUIS ALBERTO ETCHEVERRY ', 2753873, CAST(N'2018-04-21 13:18:24.577' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (919, N'SANDRA CLAUDIA ETCHEVERRY MEDINA', 1961915, CAST(N'2018-04-21 13:18:24.623' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (920, N'EDGARDO MATEO ETTLIN GUAZZO', 1744902, CAST(N'2018-04-21 13:18:24.670' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (921, N'GRACIELA MARIA EUSTACHIO COLOMBO', 1837241, CAST(N'2018-04-21 13:18:24.713' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (922, N'JUAN EUSTATHIOU HEREDIA', 1664329, CAST(N'2018-04-21 13:18:24.760' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (923, N'RAFAEL ANIBAL EVIA CANALE', 1377182, CAST(N'2018-04-21 13:18:24.803' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (924, N'ALVARO EZCURRA ZUGASTI', 1270800, CAST(N'2018-04-21 13:18:24.847' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (925, N'WILSON EZQUERRA MARTINOTTI', 2527015, CAST(N'2018-04-21 13:18:24.893' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (926, N'WILSON APARICIO EZQUERRA ALONSO', 3538723, CAST(N'2018-04-21 13:18:24.937' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (927, N'JUAN FREDY FABRE SANCHEZ', 3327847, CAST(N'2018-04-21 13:18:24.980' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (928, N'NESTOR  LUIS FABRE ARMAND  PILON', 1931221, CAST(N'2018-04-21 13:18:25.027' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (929, N'CARLOS ENRIQUE FACET ACOSTA', 1984669, CAST(N'2018-04-21 13:18:25.067' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (930, N'JORGE JULIO FACHOLA ZENANDE', 1353339, CAST(N'2018-04-21 13:18:25.110' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (931, N'GUSTAVO FAGALDE PERERA', 3788277, CAST(N'2018-04-21 13:18:25.157' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (932, N'SONIA FAGIANI VALDEZ', 1300732, CAST(N'2018-04-21 13:18:25.203' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (933, N'HERIBERTO FAGUNDEZ CABRERA', 1887561, CAST(N'2018-04-21 13:18:25.247' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (934, N'JOSE LUIS FAGUNDEZ BRAZEIRO', 1813181, CAST(N'2018-04-21 13:18:25.290' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (935, N'JUAN FRANCISCO FAIG GARICOITS', 1888068, CAST(N'2018-04-21 13:18:25.333' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (936, N'MA. DE LOS ANGELES FAJARDO RIEIRO', 2982627, CAST(N'2018-04-21 13:18:25.377' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (937, N'MARIA CRISTINA FALCOMER GUILLAMA', 1643032, CAST(N'2018-04-21 13:18:25.423' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (938, N'JOSE LUIS FALERO BERTOLA', 3617327, CAST(N'2018-04-21 13:18:25.467' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (939, N'EDUARDO FAREZ LIMA', 2952008, CAST(N'2018-04-21 13:18:25.513' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (940, N'MARIA CONSTANZA FARFALLA SALVO', 1819868, CAST(N'2018-04-21 13:18:25.553' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (941, N'VICTOR FARIAS ', 1665017, CAST(N'2018-04-21 13:18:25.600' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (942, N'MIGUEL FARIAS ', 3709149, CAST(N'2018-04-21 13:18:25.647' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (943, N'RODOLFO FARIELLO VALMAGGIA', 1111395, CAST(N'2018-04-21 13:18:25.693' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (944, N'ALEJANDRO FERNADEZ SANCHEZ', 3557704, CAST(N'2018-04-21 13:18:25.740' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (945, N'MARIA ELENA FERNADEZ ETULAIN', 1229187, CAST(N'2018-04-21 13:18:25.780' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (946, N'MA.DEL ROSARIO FERNANDEZ RUBILAR', 1765264, CAST(N'2018-04-21 13:18:25.827' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (947, N'SANDRO CHARLES FERNANDEZ INDA', 2670308, CAST(N'2018-04-21 13:18:25.870' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (948, N'OSVALDO RODOLFO FERNANDEZ MORIN', 1429465, CAST(N'2018-04-21 13:18:25.913' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (949, N'JULIO CESAR FERNANDEZ DA SILVA', 3286815, CAST(N'2018-04-21 13:18:25.957' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (950, N'HORACIO GUSTAVO FERNANDEZ DI MAGGIO', 1110192, CAST(N'2018-04-21 13:18:26.000' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (951, N'IRIS NADINA FERNANDEZ PUIG', 2892311, CAST(N'2018-04-21 13:18:26.047' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (952, N'EDUARDO RUBEN FERNANDEZ RODRIGUEZ', 2995389, CAST(N'2018-04-21 13:18:26.090' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (953, N'JAVIER FERNANDEZ BARBOZA', 3299165, CAST(N'2018-04-21 13:18:26.133' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (954, N'GLADYS FERNANDEZ ', 3300404, CAST(N'2018-04-21 13:18:26.180' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (955, N'CLAUDIA FABIANA FERNANDEZ MARRERO', 3595376, CAST(N'2018-04-21 13:18:26.223' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (956, N'LUIS OMAR FERNANDEZ RODRIGUEZ', 3483283, CAST(N'2018-04-21 13:18:26.270' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (957, N'MARIA DEL ROSARIO FERNANDEZ SCHIAVO', 1650902, CAST(N'2018-04-21 13:18:26.313' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (958, N'MARIA CRISTINA FERNANDEZ ALBA', 1129471, CAST(N'2018-04-21 13:18:26.357' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (959, N'GABRIELA FERNANDEZ DI MAGGIO', 1826937, CAST(N'2018-04-21 13:18:26.400' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (960, N'SERRANA FERNANDEZ ARAUJO', 3577711, CAST(N'2018-04-21 13:18:26.447' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (961, N'EDUARDO FERNANDEZ DOVAT', 1636601, CAST(N'2018-04-21 13:18:26.490' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (962, N'JAVIER HERNAN FERNANDEZ PAREDES', 1704011, CAST(N'2018-04-21 13:18:26.537' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (963, N'JUAN CARLOS FERNANDEZ LECCHINI', 2008208, CAST(N'2018-04-21 13:18:26.577' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (964, N'LINA SILVIA FERNANDEZ LEMBO', 1179499, CAST(N'2018-04-21 13:18:26.627' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (965, N'NELSON MILTON FERNANDEZ FRANCESCH', 1173146, CAST(N'2018-04-21 13:18:26.670' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (966, N'ESTELA NORA FERNANDEZ GARDA', 1507991, CAST(N'2018-04-21 13:18:26.713' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (967, N'MIGUEL ANGEL FERNANDEZ GALEANO', 1295490, CAST(N'2018-04-21 13:18:26.757' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (968, N'JUAN FERNANDEZ GONZALEZ', 1231047, CAST(N'2018-04-21 13:18:26.803' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (969, N'JOSE HUGO FERNANDEZ DONANGELO', 1239575, CAST(N'2018-04-21 13:18:26.847' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (970, N'ELEUTERIO FERNANDEZ HUIDOBRO', 931937, CAST(N'2018-04-21 13:18:26.890' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (971, N'MARIA DE LOS ANGELES FERNANDEZ CHAVEZ ALONSO', 3523636, CAST(N'2018-04-21 13:18:26.933' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (972, N'ADOLFO FERNANDEZ DE LA VEGA MENDEZ', 1746587, CAST(N'2018-04-21 13:18:26.980' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (973, N'JORGE LUIS FERRANDO GUTIERREZ', 1443677, CAST(N'2018-04-21 13:18:27.023' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (974, N'PABLO NICOLAS FERRARI SILVERA', 1981305, CAST(N'2018-04-21 13:18:27.067' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (975, N'WALTER ARIEL FERRARI IBARRA', 952465, CAST(N'2018-04-21 13:18:27.110' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (976, N'ALDO FERRARI ', 1494395, CAST(N'2018-04-21 13:18:27.153' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (977, N'GRACIELA AZUCENA FERRARI ANTÓN', 2559575, CAST(N'2018-04-21 13:18:27.200' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (978, N'JORGE FERRARI ', 1411315, CAST(N'2018-04-21 13:18:27.243' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (979, N'LUIS ALBERTO FERRARI TOMASINI', 3060303, CAST(N'2018-04-21 13:18:27.287' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (980, N'ANA MARIA FERRARIS BARRIOS', 1648184, CAST(N'2018-04-21 13:18:27.330' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (981, N'YAMANDU FERRAZ ZABALA', 2607403, CAST(N'2018-04-21 13:18:27.373' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (982, N'ARIEL EDISON FERRE RIGALI', 853004, CAST(N'2018-04-21 13:18:27.420' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (983, N'HUGO GABRIEL FERREIRA QUIROS', 3597277, CAST(N'2018-04-21 13:18:27.460' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (984, N'NELSON FERREIRA DE MATTOS', 4092737, CAST(N'2018-04-21 13:18:27.507' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (985, N'JORGE FERREIRA OLIVEIRA', 3465347, CAST(N'2018-04-21 13:18:27.550' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (986, N'ALVARO GUSTAVO FERREIRA CHAVEZ', 3545884, CAST(N'2018-04-21 13:18:27.600' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (987, N'NIBIO FERREIRA SUAREZ', 3562350, CAST(N'2018-04-21 13:18:27.647' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (988, N'WALTER FERREIRA ', 3699993, CAST(N'2018-04-21 13:18:27.690' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (989, N'NELSON ALFONSO FERREIRA IZQUIERDO', 1719255, CAST(N'2018-04-21 13:18:27.733' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (990, N'JOSE FERREIRA CRUZ', 2535665, CAST(N'2018-04-21 13:18:27.777' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (991, N'WALDER FERREIRA LIMA', 1568759, CAST(N'2018-04-21 13:18:27.820' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (992, N'HUGO HEBER FERREIRA MARTINEZ', 1663689, CAST(N'2018-04-21 13:18:27.863' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (993, N'PATRICIA FERREIRA BRUM', 3095274, CAST(N'2018-04-21 13:18:27.907' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (994, N'OSCAR GERARDO FERREÑO PARODI', 1387654, CAST(N'2018-04-21 13:18:27.950' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (995, N'MARIA EUGENIA FERRER SUGO', 3152091, CAST(N'2018-04-21 13:18:27.997' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (996, N'JULIA MARGOT FERRERO DE LEON', 3711448, CAST(N'2018-04-21 13:18:28.040' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (997, N'SEBASTIAN FERRERO TEDESCO', 2893310, CAST(N'2018-04-21 13:18:28.083' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (998, N'MONICA FERRERO ALVAREZ', 3112782, CAST(N'2018-04-21 13:18:28.130' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (999, N'EDUARDO FERRES PACHECO', 1134670, CAST(N'2018-04-21 13:18:28.177' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1000, N'ORESTES FIANDRA CUCULIE', 383010, CAST(N'2018-04-21 13:18:28.220' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1001, N'GERMAN FIERRO GRONROS', 3300465, CAST(N'2018-04-21 13:18:28.263' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1002, N'EMMA FIERRO COSTA', 1247815, CAST(N'2018-04-21 13:18:28.310' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1003, N'GUSTAVO ANGEL FIGUEREDO SUAREZ', 937440, CAST(N'2018-04-21 13:18:28.353' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1004, N'JORGE ENRIQUE FILIBERTO CUNEO', 1415565, CAST(N'2018-04-21 13:18:28.397' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1005, N'ANGEL JOSE FIORELLI QUEIJO', 3063621, CAST(N'2018-04-21 13:18:28.443' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1006, N'BEATRIZ ANITA FIORENTINO FERREIRO', 1032453, CAST(N'2018-04-21 13:18:28.490' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1007, N'VICTOR ALEJANDRO FIORONI BASSO', 1883679, CAST(N'2018-04-21 13:18:28.530' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1008, N'JORGE WASHINGTON FIRPO DÁCOSTA', 4151272, CAST(N'2018-04-21 13:18:28.573' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1009, N'FRANCISCO FLEITAS ', 1839347, CAST(N'2018-04-21 13:18:28.623' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1010, N'SANDRA FLEITAS VILLARREAL', 1813666, CAST(N'2018-04-21 13:18:28.670' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1011, N'JOSE ENRIQUE FLORENCIO VARELA', 1574085, CAST(N'2018-04-21 13:18:28.717' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1012, N'SUSANA RAQUEL FLORES DELGADO', 2734040, CAST(N'2018-04-21 13:18:28.760' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1013, N'MARIA CECILIA FLORES IBORRA', 3191687, CAST(N'2018-04-21 13:18:28.803' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1014, N'HECTOR ALBERTO FLORIT SERVETTI', 1255637, CAST(N'2018-04-21 13:18:28.850' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1015, N'MARIELA SILVA FODDE RIOS', 1164250, CAST(N'2018-04-21 13:18:28.893' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1016, N'GERARDO FOGLIACCO QUIRICI', 1743763, CAST(N'2018-04-21 13:18:28.940' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1017, N'GUSTAVO ALEJANDRO FOLLE UNGO', 1324561, CAST(N'2018-04-21 13:18:28.980' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1018, N'FELIX MARIO FONT SINGLET', 1176187, CAST(N'2018-04-21 13:18:29.023' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1019, N'FERNANDO DANIEL FONTAN MARTINEZ', 2011423, CAST(N'2018-04-21 13:18:29.067' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1020, N'RAUL NOCOLAS FONTES SOSA', 4432662, CAST(N'2018-04-21 13:18:29.113' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1021, N'RAMON ANGEL FONTICIELLA DE ABREU', 3250534, CAST(N'2018-04-21 13:18:29.160' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1022, N'NANCY STELLA FONTORA CARDOZO', 3321312, CAST(N'2018-04-21 13:18:29.203' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1023, N'STELLA MARIS FORCADE LOPEZ', 1741694, CAST(N'2018-04-21 13:18:29.247' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1024, N'RAFAEL FORMOSO BARRENECHE', 3819434, CAST(N'2018-04-21 13:18:29.290' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1025, N'MARIA JOSEFINA FORNARO BORDOLLI', 1276703, CAST(N'2018-04-21 13:18:29.333' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1026, N'MARIA GABRIELA FOSSATI AVILES', 1745120, CAST(N'2018-04-21 13:18:29.377' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1027, N'ROBERTO FRANCISCO FRACHIA BRAIDA', 1350893, CAST(N'2018-04-21 13:18:29.420' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1028, N'JUAN MARTIN FRACHIA ACUÑA', 3626281, CAST(N'2018-04-21 13:18:29.463' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1029, N'LUIS ALFREDO FRAGA AFFONSO', 3470150, CAST(N'2018-04-21 13:18:29.510' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1030, N'ALVARO JOSE FRANCA NEBOT', 1414826, CAST(N'2018-04-21 13:18:29.553' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1031, N'EDUARDO JORGE FRANCO VALENTE', 1452511, CAST(N'2018-04-21 13:18:29.600' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1032, N'MARIA DEL CARMEN FRANCO BURGUES', 3575433, CAST(N'2018-04-21 13:18:29.643' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1033, N'JUAN FRANCO MURTAGH', 1152208, CAST(N'2018-04-21 13:18:29.690' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1034, N'MIGUEL ANGEL FRANCO DULINSKAS', 1365736, CAST(N'2018-04-21 13:18:29.737' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1035, N'LEONEL FRANZONI ETCHEVERRY', 1018645, CAST(N'2018-04-21 13:18:29.777' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1036, N'LUIS ALFREDO FRATTI SILVEIRA', 3333425, CAST(N'2018-04-21 13:18:29.823' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1037, N'FRANCO FREDUCCI DA ROSA', 3578182, CAST(N'2018-04-21 13:18:29.867' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1038, N'CARLOS FREIRA PRADO', 1955362, CAST(N'2018-04-21 13:18:29.910' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1039, N'CESAR AUGUSTO FREIRE GONZALEZ', 3336638, CAST(N'2018-04-21 13:18:29.957' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1040, N'HEBER FREITAS TURNES', 3482965, CAST(N'2018-04-21 13:18:29.997' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1041, N'MARIELA RITA FRESIA BOSCHELE', 1306658, CAST(N'2018-04-21 13:18:30.043' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1042, N'GABRIEL FRUGONI VEGA', 2656944, CAST(N'2018-04-21 13:18:30.087' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1043, N'FLAVIO FUCCARO TELLECHEA', 3567727, CAST(N'2018-04-21 13:18:30.130' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1044, N'LUIS NICOLAS FUCCARO MURIEDA', 3766043, CAST(N'2018-04-21 13:18:30.173' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1045, N'JAIME FUENTES PEREYRA', 2500871, CAST(N'2018-04-21 13:18:30.220' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1046, N'DANIEL FUENTES DOMINGUEZ', 1666007, CAST(N'2018-04-21 13:18:30.260' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1047, N'SERGIO FEDERICO FUICA SEJAS', 1144560, CAST(N'2018-04-21 13:18:30.303' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1048, N'MARIA GABRIELA FULCO FERNANDEZ', 1365956, CAST(N'2018-04-21 13:18:30.350' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1049, N'MARIANELA FUNTES CASTRO', 1715248, CAST(N'2018-04-21 13:18:30.390' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1050, N'MARIO ENRIQUE FURTADO SANTURIO', 3501565, CAST(N'2018-04-21 13:18:30.433' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1051, N'ANNA LUCRECIA FUSCO CERULLO', 1895581, CAST(N'2018-04-21 13:18:30.480' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1052, N'BETRAIZ CRISTINA FYNN FERNANDEZ', 1147636, CAST(N'2018-04-21 13:18:30.523' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1053, N'JUAN ANTONIO GABITO ZOBOLI', 1440707, CAST(N'2018-04-21 13:18:30.567' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1054, N'JUAN ERNESTO GADEA BANEGA', 3519522, CAST(N'2018-04-21 13:18:30.613' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1055, N'GERARDO DANIEL GADEA DUARTE', 1570944, CAST(N'2018-04-21 13:18:30.660' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1056, N'DANIEL RODNEY GADOLA BENAVIDEZ', 1552950, CAST(N'2018-04-21 13:18:30.703' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1057, N'MARIA MARGARITA GAGLIANO MENENDEZ', 1357971, CAST(N'2018-04-21 13:18:30.750' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1058, N'MIGUEL ANGEL GALAN DEL SIGNORE', 1241403, CAST(N'2018-04-21 13:18:30.793' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1059, N'MARCELO DANIEL GALARZA SOSA', 3981408, CAST(N'2018-04-21 13:18:30.840' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1060, N'GABRIEL GALLAND TROISE', 3481473, CAST(N'2018-04-21 13:18:30.880' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1061, N'EDUARDO GALLARETTA MANNOCCI', 2954863, CAST(N'2018-04-21 13:18:30.927' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1062, N'HEBER ARTEMIS GALLI MARISTAN', 1577839, CAST(N'2018-04-21 13:18:30.970' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1063, N'FRANCISCO GUSTAVO GALLINAL NIETO', 1484944, CAST(N'2018-04-21 13:18:31.013' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1064, N'MATILDE VERONICA GALLINAL ALGORTA', 1122423, CAST(N'2018-04-21 13:18:31.057' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1065, N'FERNANDO EMILIANO GAMARRA BORCHE', 3228750, CAST(N'2018-04-21 13:18:31.103' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1066, N'JORGE LUIS GAMARRA SEBASTIAN', 1360374, CAST(N'2018-04-21 13:18:31.153' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1067, N'RODOLFO HUGO GAMBINI ITALIANO', 1025466, CAST(N'2018-04-21 13:18:31.197' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1068, N'ADOLFO CARLOS GAMOU FASANELLO', 1296520, CAST(N'2018-04-21 13:18:31.240' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1069, N'MA.DEL CARMEN GANDARA MOSQUERA', 1452200, CAST(N'2018-04-21 13:18:31.287' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1070, N'JORGE GANDINI ', 1506206, CAST(N'2018-04-21 13:18:31.330' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1071, N'HUGO GANDOGLIA TEDESCO', 1316028, CAST(N'2018-04-21 13:18:31.373' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1072, N'ALVARO GANDOLFO ARMUA', 3290988, CAST(N'2018-04-21 13:18:31.420' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1073, N'HECTOR GARBARINO FREIRE', 1324784, CAST(N'2018-04-21 13:18:31.463' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1074, N'JOSE CLAUDIO GARCHITORENA FERREIRA', 1951046, CAST(N'2018-04-21 13:18:31.507' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1075, N'MA. DEL ROSARIO POMP GARCIA PELUFO', 1306912, CAST(N'2018-04-21 13:18:31.553' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1076, N'FERNANDO GARCIA MENENDEZ', 1634728, CAST(N'2018-04-21 13:18:31.597' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1077, N'CARLOS MARIO GARCIA IVANCHENKO', 1941572, CAST(N'2018-04-21 13:18:31.643' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1078, N'FERNANDO GARCIA PRECHAC', 1109411, CAST(N'2018-04-21 13:18:31.687' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1079, N'JAVIER FERNANDO GARCIA DUCHINI', 1332932, CAST(N'2018-04-21 13:18:31.733' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1080, N'MARIO LUIS GARCIA GONZALEZ', 2536235, CAST(N'2018-04-21 13:18:31.777' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1081, N'ALBERTO ADHEMAR GARCIA RIVERO', 2590502, CAST(N'2018-04-21 13:18:31.823' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1082, N'RUBEN HECTOR GARCIA BIANCHIMANO', 1408631, CAST(N'2018-04-21 13:18:31.867' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1083, N'ERIS EDUARDO GARCIA TESKE', 2619824, CAST(N'2018-04-21 13:18:31.910' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1084, N'MARIO GARCIA PETILLO', 1359997, CAST(N'2018-04-21 13:18:31.957' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1085, N'BEATRIZ DEL LUJAN GARCIA UMPIERREZ', 3413785, CAST(N'2018-04-21 13:18:32.000' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1086, N'HILARIO GARCIA BORGES', 2905666, CAST(N'2018-04-21 13:18:32.047' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1087, N'CARLOS ENRIQUE GARCIA BORGES', 1462602, CAST(N'2018-04-21 13:18:32.087' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1088, N'CARLOS OMAR GARCIA AGUIAR', 1782427, CAST(N'2018-04-21 13:18:32.130' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1089, N'ANA MARIA GARCIA DIAZ', 2635814, CAST(N'2018-04-21 13:18:32.180' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1090, N'ANGEL HUMBERTO GARCIA FRANCIA', 2883600, CAST(N'2018-04-21 13:18:32.223' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1091, N'JORGE WASHINGTON GARCIA PEREYRA', 3671761, CAST(N'2018-04-21 13:18:32.270' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1092, N'RICARDO JOSE GARCIA DESTEFFANI', 3684910, CAST(N'2018-04-21 13:18:32.310' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1093, N'CRISTINA GARCIA LUENGO', 3330467, CAST(N'2018-04-21 13:18:32.357' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1094, N'LUIS IGNACIO GARCIA AISHEMBERG', 1799257, CAST(N'2018-04-21 13:18:32.397' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1095, N'DANIEL EDUARDO GARCIA AZPIROZ', 2960298, CAST(N'2018-04-21 13:18:32.440' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1096, N'MARIO GARCIA BONSIGNORE', 1518221, CAST(N'2018-04-21 13:18:32.487' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1097, N'JOSE ALEJANDRO GARCIA OTEGUI', 2679967, CAST(N'2018-04-21 13:18:32.530' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1098, N'MARIA BEATRIZ GARCIA DUTRUEL', 1519671, CAST(N'2018-04-21 13:18:32.573' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1099, N'LUIS ALBERTO GARCIA MARTINEZ', 1357801, CAST(N'2018-04-21 13:18:32.620' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1100, N'MARIA DEL ROSARIO GARCIA RODRIGUEZ', 1709772, CAST(N'2018-04-21 13:18:32.667' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1101, N'RAUL GUSTAVO GARCIA GARCIA', 1389917, CAST(N'2018-04-21 13:18:32.710' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1102, N'EDGAR DANIEL GARCIA GUTIERREZ', 2575723, CAST(N'2018-04-21 13:18:32.753' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1103, N'ANALÍA GARCIA OBREGON', 1839627, CAST(N'2018-04-21 13:18:32.797' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1104, N'CARLOS GARCIA GUARAGLIA', 3581891, CAST(N'2018-04-21 13:18:32.840' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1105, N'LUIS GERARDO GARCIA TARRAGO', 3550708, CAST(N'2018-04-21 13:18:32.880' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1106, N'GARY HECTOR GARCIA GULARTE', 3993318, CAST(N'2018-04-21 13:18:32.923' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1107, N'CARLOS GARCIA MONTANER', 1967660, CAST(N'2018-04-21 13:18:32.967' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1108, N'JOSE MARIA GARCIA DA ROSA SAINT PASTEURS', 3859786, CAST(N'2018-04-21 13:18:33.017' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1109, N'DANIEL ROGELIO GARCIA PINTOS CAMPO', 1309838, CAST(N'2018-04-21 13:18:33.060' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1110, N'MILKA GIOVANNA GARDELA FERREIRA', 1991006, CAST(N'2018-04-21 13:18:33.103' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1111, N'NAPOLEON GARDIOL FAEDO', 3164862, CAST(N'2018-04-21 13:18:33.150' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1112, N'SILVIA GARI ABARACON', 1317409, CAST(N'2018-04-21 13:18:33.197' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1113, N'LUIS IGNACIO GARIBALDI LEZAMA', 1376768, CAST(N'2018-04-21 13:18:33.240' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1114, N'ADRIANA GARICOITS CALAFAT', 1502718, CAST(N'2018-04-21 13:18:33.280' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1115, N'LEONIE GARICOITS SEMBLAT', 1741635, CAST(N'2018-04-21 13:18:33.327' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1116, N'GRACIELA CORINA GARIN LANERI', 3848938, CAST(N'2018-04-21 13:18:33.370' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1117, N'FERNANDO AUGUSTO GARIN CAMEJO', 2883109, CAST(N'2018-04-21 13:18:33.413' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1118, N'DANIEL GARIN DE NARDO', 2000170, CAST(N'2018-04-21 13:18:33.457' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1119, N'JUAN MANUEL GARINO GRUSS', 3609160, CAST(N'2018-04-21 13:18:33.500' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1120, N'GABRIELA GARRIDO PEREZ', 3783471, CAST(N'2018-04-21 13:18:33.543' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1121, N'DANIEL GASTAN ROSTAGNOL', 2589081, CAST(N'2018-04-21 13:18:33.590' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1122, N'MARÍA CRISTINA GATTI CAMELO', 1249810, CAST(N'2018-04-21 13:18:33.633' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1123, N'GRACIELA SUSANA GATTI SANTANA', 1492294, CAST(N'2018-04-21 13:18:33.680' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1124, N'ESTELA ELSA GAUDIN REAL', 2884555, CAST(N'2018-04-21 13:18:33.720' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1125, N'JACQUELINE GAY BALMAZ MENDIZABAL', 3393385, CAST(N'2018-04-21 13:18:33.763' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1126, N'JOSE LUIS GENTA VARELA', 895385, CAST(N'2018-04-21 13:18:33.810' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1127, N'HUGO GONZALO GERIBON HERRERA', 3152843, CAST(N'2018-04-21 13:18:33.853' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1128, N'ALFREDO G. GERICKE DIBELLA', 677489, CAST(N'2018-04-21 13:18:33.893' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1129, N'OVIDIO GERMAN CURBELO', 2984871, CAST(N'2018-04-21 13:18:33.940' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1130, N'WASHINGTON ALBERTO GERMANO GOMEZ', 1131276, CAST(N'2018-04-21 13:18:33.980' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1131, N'OSCAR DANIEL GESTIDO DO CANTO', 1425391, CAST(N'2018-04-21 13:18:34.023' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1132, N'MARTIN --- GESTO RAMOS', 1981197, CAST(N'2018-04-21 13:18:34.067' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1133, N'LUIS ALBERTO GETAL BARAVRAN', 1379008, CAST(N'2018-04-21 13:18:34.113' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1134, N'HERIBERTO OMAR GHIBAUDI IGLESIAS', 2603759, CAST(N'2018-04-21 13:18:34.160' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1135, N'ALICIA ALBA GHIONE CORE', 1850389, CAST(N'2018-04-21 13:18:34.203' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1136, N'ALBERTO LAMAS GIAMBRUNO VOLPI', 1309795, CAST(N'2018-04-21 13:18:34.250' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1137, N'SUSANA BEATRIZ GIANARELLI CANTOU', 1136071, CAST(N'2018-04-21 13:18:34.293' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1138, N'SILVANA MARIA GIANERO DEMARCO', 1793446, CAST(N'2018-04-21 13:18:34.340' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1139, N'IGNACIO GIGENA BELLOSO', 3487431, CAST(N'2018-04-21 13:18:34.383' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1140, N'MARIA CRISTINA GIL JIMENEZ DE ARECHAGA', 994350, CAST(N'2018-04-21 13:18:34.427' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1141, N'ALEJANDRO GABRIEL GIL CAPUTTO', 3756432, CAST(N'2018-04-21 13:18:34.470' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1142, N'ROLANDO DANIEL GILARDONI AVALLE', 1344786, CAST(N'2018-04-21 13:18:34.513' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1143, N'ANA CARINA GILGORRI NOBLE', 5169345, CAST(N'2018-04-21 13:18:34.560' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1144, N'LEONARDO GIMENEZ ACUÑA', 2897489, CAST(N'2018-04-21 13:18:34.607' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1145, N'MARIO GIMENEZ TEXEIRA', 1214328, CAST(N'2018-04-21 13:18:34.657' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1146, N'VIRGINIA ISABEL GINARES ECHENIQUE', 1728475, CAST(N'2018-04-21 13:18:34.700' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1147, N'MARIA RAQUEL GINI CASAS', 1783608, CAST(N'2018-04-21 13:18:34.743' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1148, N'PEDRO GIORDANO LUZARDO', 3277660, CAST(N'2018-04-21 13:18:34.787' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1149, N'MARTHA GIORDANO ECHEVERRIA', 1318985, CAST(N'2018-04-21 13:18:34.830' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1150, N'ALEJANDRO GIORELLO VARELA', 3153301, CAST(N'2018-04-21 13:18:34.873' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1151, N'VICTOR ALBERTO GIORGI GOMEZ', 1246373, CAST(N'2018-04-21 13:18:34.920' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1152, N'MARIA DEL CARMEN GIRALDEZ VIÑA', 1378520, CAST(N'2018-04-21 13:18:34.963' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1153, N'MARTHA GIUDICE PERRETT', 1868602, CAST(N'2018-04-21 13:18:35.007' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1154, N'RAUL BARTOLOME GIURIA BARBOT', 1003679, CAST(N'2018-04-21 13:18:35.050' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1155, N'ANIBAL GLOODTDOFSKY FERNANDEZ', 1559699, CAST(N'2018-04-21 13:18:35.097' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1156, N'RAUL GLOODTDOFSKY FERNANDEZ', 1268965, CAST(N'2018-04-21 13:18:35.147' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1157, N'ROBERTO ANDRES GODOY PEREZ', 2783269, CAST(N'2018-04-21 13:18:35.193' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1158, N'LUIS EDUARDO GOGGIA CASTRO', 1867457, CAST(N'2018-04-21 13:18:35.240' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1159, N'NANNER GOITIÑO ARIGON', 1601923, CAST(N'2018-04-21 13:18:35.280' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1160, N'CRISTINA --- GOITIÑO CROCE', 1668943, CAST(N'2018-04-21 13:18:35.327' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1161, N'GUSTAVO ANGEL GOMEZ GERMANO', 1813332, CAST(N'2018-04-21 13:18:35.373' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1162, N'JUAN ANGEL GOMEZ CANESSA', 1440791, CAST(N'2018-04-21 13:18:35.413' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1163, N'OSCAR ALFREDO GOMEZ DA TRINDADE', 1826081, CAST(N'2018-04-21 13:18:35.460' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1164, N'JUAN ANGEL GOMEZ CANESSA', 1440791, CAST(N'2018-04-21 13:18:35.507' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1165, N'JUAN GOMEZ DUARTE', 3464776, CAST(N'2018-04-21 13:18:35.550' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1166, N'JOSÉ MARÍA GOMEZ FERREYRA', 1256884, CAST(N'2018-04-21 13:18:35.600' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1167, N'LOLA MARGARITA GOMEZ NUÑEZ', 1583312, CAST(N'2018-04-21 13:18:35.647' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1168, N'ALFREDO DARIO GOMEZ TEDESCHI', 1245015, CAST(N'2018-04-21 13:18:35.690' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1169, N'RICARDO GOMEZ ARIGON', 1407952, CAST(N'2018-04-21 13:18:35.737' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1170, N'PALABIO GUILLERMO GOMEZ FERNANDEZ', 2673053, CAST(N'2018-04-21 13:18:35.780' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1171, N'SONIA ANA GOMEZ COYTO', 1214304, CAST(N'2018-04-21 13:18:35.827' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1172, N'MARTA GOMEZ HAEDO ALONSO', 1373597, CAST(N'2018-04-21 13:18:35.870' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1173, N'NATALIA GONZALEZ SILVA', 2020557, CAST(N'2018-04-21 13:18:35.913' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1174, N'JUAN CARLOS GONZALEZ ARRIETA', 1068673, CAST(N'2018-04-21 13:18:35.957' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1175, N'M CRISTINA GONZALEZ DIAZ', 1319663, CAST(N'2018-04-21 13:18:36.000' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1176, N'AIDA CRISTINA GONZALEZ ZAS', 1850267, CAST(N'2018-04-21 13:18:36.043' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1177, N'ANA GABRIELA GONZALEZ GARGANO', 1806438, CAST(N'2018-04-21 13:18:36.087' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1178, N'ANA INES GONZALEZ ', 1923132, CAST(N'2018-04-21 13:18:36.130' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1179, N'PEDRO GONZALEZ BEDAT', 3207843, CAST(N'2018-04-21 13:18:36.177' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1180, N'MIGUEL ANGEL GONZALEZ RODRIGUEZ', 2650746, CAST(N'2018-04-21 13:18:36.220' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1181, N'FLAVIANO GONZALEZ ', 2717848, CAST(N'2018-04-21 13:18:36.263' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1182, N'JULIO ALEXIS GONZALEZ SARACHO', 2784807, CAST(N'2018-04-21 13:18:36.310' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1183, N'EDUARDO GONZALEZ OLALDE', 3198280, CAST(N'2018-04-21 13:18:36.350' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1184, N'HECTOR ANIBAL GONZALEZ ', 3591701, CAST(N'2018-04-21 13:18:36.393' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1185, N'HORACIO ROQUE GONZALEZ ZUNINO', 3611374, CAST(N'2018-04-21 13:18:36.440' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1186, N'PABLO GONZALEZ ', 3672801, CAST(N'2018-04-21 13:18:36.480' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1187, N'MANUEL GONZALEZ MENDEZ', 3760831, CAST(N'2018-04-21 13:18:36.527' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1188, N'PABLO GONZALEZ ', 3838412, CAST(N'2018-04-21 13:18:36.570' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1189, N'JOSE LUIS GONZALEZ ROCHA', 1884874, CAST(N'2018-04-21 13:18:36.613' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1190, N'JOSE ADRIAN GONZALEZ RODRIGUEZ', 3626611, CAST(N'2018-04-21 13:18:36.663' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1191, N'GRACIELA GONZALEZ LOPEZ', 1125652, CAST(N'2018-04-21 13:18:36.707' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1192, N'MARIA CRISTINA GONZALEZ RODRIGUEZ', 1179655, CAST(N'2018-04-21 13:18:36.750' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1193, N'RAQUEL GONZALEZ TORNARIA', 3473911, CAST(N'2018-04-21 13:18:36.797' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1194, N'RENEE GONZALEZ SILVA', 2632478, CAST(N'2018-04-21 13:18:36.840' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1195, N'CESAR GONZALEZ RIZZO', 1904979, CAST(N'2018-04-21 13:18:36.887' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1196, N'FERNANDO GONZALEZ RODRIGUEZ', 1738109, CAST(N'2018-04-21 13:18:36.930' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1197, N'ADRIANA MARIA GONZALEZ BANFI', 1311317, CAST(N'2018-04-21 13:18:36.977' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1198, N'IRENE GONZALEZ PINO', 1509165, CAST(N'2018-04-21 13:18:37.017' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1199, N'ELBIO GONZALEZ OLIVERA', 1183747, CAST(N'2018-04-21 13:18:37.060' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1200, N'ALVARO GUSTAVO GONZALEZ GONZALEZ', 1268077, CAST(N'2018-04-21 13:18:37.103' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1201, N'MÓNICA PATRICIA GONZALEZ GONZALEZ', 1672298, CAST(N'2018-04-21 13:18:37.150' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1202, N'ALBERTO FLORENTINO GONZALEZ BUCETA', 1230488, CAST(N'2018-04-21 13:18:37.193' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1203, N'ENRIQUE JAVIER GONZALEZ ACUÑA', 3460684, CAST(N'2018-04-21 13:18:37.237' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1204, N'RICARDO EFRAIN GONZALEZ ARENAS', 1393401, CAST(N'2018-04-21 13:18:37.280' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1205, N'JOSE RODRIGO GOÑI ROMERO', 2841749, CAST(N'2018-04-21 13:18:37.327' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1206, N'RODRIGO GOÑI REYES', 2626148, CAST(N'2018-04-21 13:18:37.370' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1207, N'TABARE GORDIOLA FERNANDEZ', 1232174, CAST(N'2018-04-21 13:18:37.413' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1208, N'MARIA ESTHER GRADIN ROMERO', 1348537, CAST(N'2018-04-21 13:18:37.457' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1209, N'JULIO AGUSTÍN GRANDE GABITO', 1532841, CAST(N'2018-04-21 13:18:37.500' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1210, N'HORACIO HUGO GRANERO GARCIA', 811795, CAST(N'2018-04-21 13:18:37.543' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1211, N'MARGARITA MARÍA GRAÑA ARROSPIDE', 2512973, CAST(N'2018-04-21 13:18:37.590' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1212, N'ANTONIO GRAÑA AGUILAR', 3543715, CAST(N'2018-04-21 13:18:37.637' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1213, N'URUGUAY EMILIO GRAÑA CASTELLANOS', 2664116, CAST(N'2018-04-21 13:18:37.683' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1214, N'ALBERTO RAMIRO GRAÑA GARCIA', 1310002, CAST(N'2018-04-21 13:18:37.723' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1215, N'FERNANDO GRASSO REZK', 3140945, CAST(N'2018-04-21 13:18:37.770' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1216, N'PABLO LUIS GRASSO ALFARO', 904072, CAST(N'2018-04-21 13:18:37.813' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1217, N'ADRIANA CECILIA GRAZIUSO PICCINI', 1881492, CAST(N'2018-04-21 13:18:37.857' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1218, N'OSCAR RODOLFO GRECCO LOURIDO', 1321537, CAST(N'2018-04-21 13:18:37.897' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1219, N'LESLIE GLENN GREEN MEDINA', 2020719, CAST(N'2018-04-21 13:18:37.943' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1220, N'RICARDO MARIO GRIEN PLACHOT', 1249912, CAST(N'2018-04-21 13:18:37.983' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1221, N'OSCAR ABDON GROBA ARRIONDO', 1247960, CAST(N'2018-04-21 13:18:38.030' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1222, N'JUAN DANIEL GRONRROS AGUIAR', 1677137, CAST(N'2018-04-21 13:18:38.073' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1223, N'VERONICA GUADALUPE MOSTEIRO', 2902104, CAST(N'2018-04-21 13:18:38.117' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1224, N'CARLOS ENRIQUE GUARIGLIA GONZALEZ', 1563683, CAST(N'2018-04-21 13:18:38.163' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1225, N'MARÍA CRISTINA GUARINO MALVASIO', 3632779, CAST(N'2018-04-21 13:18:38.207' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1226, N'LUIS PABLO GUARINO ESTEVES', 3715421, CAST(N'2018-04-21 13:18:38.250' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1227, N'OLGA MAGDALENA GUARINO NAVA', 1853509, CAST(N'2018-04-21 13:18:38.293' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1228, N'HUGO A. GUARNIERI ', 693245, CAST(N'2018-04-21 13:18:38.340' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1229, N'JULIO CESAR GUARTECHE TERRIN', 1887598, CAST(N'2018-04-21 13:18:38.383' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1230, N'LAURA INES GUASCH MASSONS', 1746040, CAST(N'2018-04-21 13:18:38.427' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1231, N'DANIEL ALBERTO GUASCO ASENJO', 1243401, CAST(N'2018-04-21 13:18:38.470' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1232, N'PEDRO GUSTAVO GUEDES MACHADO', 3428477, CAST(N'2018-04-21 13:18:38.513' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1233, N'FLAVIA GUEDES VAZQUEZ', 4028260, CAST(N'2018-04-21 13:18:38.560' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1234, N'PEDRO GUSTAVO GUEDES MACHADO', 3428477, CAST(N'2018-04-21 13:18:38.607' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1235, N'IRENE BETRAIZ GÜENAGA LAGUARDIA', 3857003, CAST(N'2018-04-21 13:18:38.657' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1236, N'FELIX GUERRA GARCIA', 4238499, CAST(N'2018-04-21 13:18:38.700' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1237, N'MARIO GUERRERO NIETO', 908948, CAST(N'2018-04-21 13:18:38.747' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1238, N'CESAR GUSTAVO GUERRERO PALERMO', 2783306, CAST(N'2018-04-21 13:18:38.790' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1239, N'EDUARDO FERNÁN GUEVARA ARECO', 1601189, CAST(N'2018-04-21 13:18:38.837' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1240, N'MIRTHA GUIANZE RODRIGUEZ', 3236295, CAST(N'2018-04-21 13:18:38.880' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1241, N'MABEL MARÍA GUIDO PESCE', 900975, CAST(N'2018-04-21 13:18:38.923' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1242, N'HECTOR ASDRUBAL GUIDO SAN MARTIN', 1312359, CAST(N'2018-04-21 13:18:38.970' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1243, N'ALEJANDRO DANTE GUIDO MANGINO', 1251095, CAST(N'2018-04-21 13:18:39.013' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1244, N'JOAQUIN ERASMO GUIJARRO PRESA', 1002720, CAST(N'2018-04-21 13:18:39.057' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1245, N'ALVARO LUIS GUINEA DIAZ', 1593273, CAST(N'2018-04-21 13:18:39.100' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1246, N'ELISA GISELLE GUPER SILVER', 1639713, CAST(N'2018-04-21 13:18:39.150' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1247, N'MYRIAM JACQUELINE GURRUCHAGA GOMEZ', 4050419, CAST(N'2018-04-21 13:18:39.207' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1248, N'JULIO DANIEL GUTIERREZ PEREZ', 1452054, CAST(N'2018-04-21 13:18:39.253' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1249, N'JAVIER ENRIQUE GUTIERREZ PERERA', 3837998, CAST(N'2018-04-21 13:18:39.300' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1250, N'HUGO ROBERTO GUTIERREZ VITALE', 1045656, CAST(N'2018-04-21 13:18:39.340' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1251, N'DANIEL IBERICO GUTIERREZ PROTO', 790561, CAST(N'2018-04-21 13:18:39.387' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1252, N'PABLO ANTONIO GUTIERREZ BRUM', 1885281, CAST(N'2018-04-21 13:18:39.430' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1253, N'DANIEL CARLOS GUTIERREZ RIVERA CARBONELL', 1405424, CAST(N'2018-04-21 13:18:39.473' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1254, N'PEDRO PANCRACIO HACKENBRUCH PENA', 2606337, CAST(N'2018-04-21 13:18:39.517' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1255, N'TABARE YAMANDU HACKENBRUCH LEGNANI', 1964150, CAST(N'2018-04-21 13:18:39.567' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1256, N'NANCY HAGOPIAN KASPARIAN', 1316167, CAST(N'2018-04-21 13:18:39.610' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1257, N'JULIO HALTY BERTOLA', 739352, CAST(N'2018-04-21 13:18:39.660' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1258, N'JOSE PEDRO HARGUINDEGUY REYES', 2018392, CAST(N'2018-04-21 13:18:39.707' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1259, N'RICARDO ALBERTO HARRIAGUE SACCONE', 1057759, CAST(N'2018-04-21 13:18:39.747' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1260, N'RUBEN JORGE HARTMANN GONZALEZ', 1517452, CAST(N'2018-04-21 13:18:39.790' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1261, N'DANIEL HAURET RAMPONI', 1230823, CAST(N'2018-04-21 13:18:39.833' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1262, N'LUIS ALBERTO HEBER FONTANA', 1549113, CAST(N'2018-04-21 13:18:39.877' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1263, N'RONALD ALEXANDER HEBERT NADAL', 837829, CAST(N'2018-04-21 13:18:39.920' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1264, N'ELIDA HELENA HEINZEN GONZALEZ', 2877117, CAST(N'2018-04-21 13:18:39.963' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1265, N'ALEJANDRO HENRY RODRIGUEZ', 3842673, CAST(N'2018-04-21 13:18:40.010' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1266, N'ANDRES HERMIDA GARCIA', 1353978, CAST(N'2018-04-21 13:18:40.053' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1267, N'ANAHI HERMIDA GALAN', 1513081, CAST(N'2018-04-21 13:18:40.097' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1268, N'CARLOS WASHINGTON HERNADEZ RUIZ', 3750216, CAST(N'2018-04-21 13:18:40.140' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1269, N'SILVIO HERNANDEZ FRAGA', 1391425, CAST(N'2018-04-21 13:18:40.190' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1270, N'BERNANRDO NAHUEL HERNANDEZ PUMAR', 4536640, CAST(N'2018-04-21 13:18:40.233' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1271, N'ELSA HERNANDEZ ', 3005397, CAST(N'2018-04-21 13:18:40.277' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1272, N'PEDRO HERNANDEZ ARAUJO', 3032157, CAST(N'2018-04-21 13:18:40.320' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1273, N'NERINA HERNANDEZ RODRIGUEZ', 3550879, CAST(N'2018-04-21 13:18:40.367' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1274, N'EDWARD HERNANDEZ MARTINEZ', 1006559, CAST(N'2018-04-21 13:18:40.410' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1275, N'ALEJANDRO HERNANDEZ MORALES', 1699333, CAST(N'2018-04-21 13:18:40.453' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1276, N'PATRICIA ELIZABETH HERNANDEZ SANCHEZ', 1698911, CAST(N'2018-04-21 13:18:40.500' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1277, N'HORACIO HERNANDEZ ARMESTO', 3148747, CAST(N'2018-04-21 13:18:40.540' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1278, N'RUBI DARDO HERRERA MONTENEGRO', 2592622, CAST(N'2018-04-21 13:18:40.587' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1279, N'ANAHI ELSA HERRERA PEREZ', 1170631, CAST(N'2018-04-21 13:18:40.630' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1280, N'LEONARDO HESPANHOL PASTORINI', 1159595, CAST(N'2018-04-21 13:18:40.680' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1281, N'LUIS CARLOS HEUHS TEXEIRA', 1373231, CAST(N'2018-04-21 13:18:40.723' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1282, N'LUIS HIERRO LOPEZ', 1093823, CAST(N'2018-04-21 13:18:40.770' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1283, N'MARIANA HILL LAVISTA', 1401737, CAST(N'2018-04-21 13:18:40.813' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1284, N'IDA HOLZ BARD', 670625, CAST(N'2018-04-21 13:18:40.857' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1285, N'RUBEN JOEL HOSTA SOSA', 4395615, CAST(N'2018-04-21 13:18:40.903' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1286, N'ADELA ISABEL HOUNIE GONZALEZ', 1211157, CAST(N'2018-04-21 13:18:40.947' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1287, N'FELIPE JAVIER HOUNIE SANCHEZ', 1152990, CAST(N'2018-04-21 13:18:40.990' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1288, N'ADELA ISABEL HOUNIE GONZALEZ', 1211157, CAST(N'2018-04-21 13:18:41.033' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1289, N'RICARDO OMAR HOURDEBAIGT ESPONDA', 1759713, CAST(N'2018-04-21 13:18:41.077' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1290, N'JOSE WALTER HUALDE SILVA', 2612137, CAST(N'2018-04-21 13:18:41.123' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1291, N'DANTE WALDEMAR HUBER TELECHEA', 973956, CAST(N'2018-04-21 13:18:41.170' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1292, N'HEDWIN EMILIO HUGO BRATSCHI', 4079147, CAST(N'2018-04-21 13:18:41.213' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1293, N'LILIÁN IBARGOYEN OBIOL', 1044321, CAST(N'2018-04-21 13:18:41.260' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1294, N'DOREEN JAVIER IBARRA FERREIRA', 624796, CAST(N'2018-04-21 13:18:41.303' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1295, N'MILTON IBARRA DE LEON', 3258804, CAST(N'2018-04-21 13:18:41.347' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1296, N'SILVANA MARIA IBARRA ZANGARI', 1571836, CAST(N'2018-04-21 13:18:41.393' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1297, N'NANCY LUJAN IBARRA DEL PRETTI', 1746764, CAST(N'2018-04-21 13:18:41.437' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1298, N'ALBERTO MARTIN IGLESIAS CASAL RIBEIRO', 3316436, CAST(N'2018-04-21 13:18:41.483' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1299, N'JESUS JORGE IGLESIAS VILLOZ', 1579861, CAST(N'2018-04-21 13:18:41.527' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1300, N'VERONICA IGLESIAS LUCCHELLI', 3639349, CAST(N'2018-04-21 13:18:41.573' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1301, N'ANDRES CONO IGLESIAS PASTORINO', 3306852, CAST(N'2018-04-21 13:18:41.617' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1302, N'MARIA ESTELA ILUNDAIN BARAÑANO', 3735353, CAST(N'2018-04-21 13:18:41.663' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1303, N'GASTON INDA CORVO', 1009795, CAST(N'2018-04-21 13:18:41.710' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1304, N'NELSON RAFAEL INFANTE AMARO', 4316311, CAST(N'2018-04-21 13:18:41.753' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1305, N'EDUARDO INFANTOZZI PAOLINO', 1081514, CAST(N'2018-04-21 13:18:41.797' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1306, N'MARIA DEL PILAR INFANZON ACOSTA', 3654368, CAST(N'2018-04-21 13:18:41.840' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1307, N'WALTER SANTIAGO INGOLD MARIOTTA', 3432554, CAST(N'2018-04-21 13:18:41.883' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1308, N'CLAUDIO JAVIER INVERNIZZI ALPEROVICH', 2738684, CAST(N'2018-04-21 13:18:41.930' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1309, N'DIEGO IRABEDRA MARTINOL', 3045603, CAST(N'2018-04-21 13:18:41.973' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1310, N'MIGUEL IRAOLA RODRIGUEZ', 1887648, CAST(N'2018-04-21 13:18:42.020' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1311, N'DIEGO REYNALDO IRAZABAL TIDEMANN', 2533650, CAST(N'2018-04-21 13:18:42.063' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1312, N'BENJAMIN EDUARDO IRAZABAL CALLERI', 2995001, CAST(N'2018-04-21 13:18:42.107' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1313, N'HÉCTOR RICARDO IRIARTE ESPINO', 3737696, CAST(N'2018-04-21 13:18:42.153' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1314, N'DANIEL IRIBARREN ESTRADE', 2507301, CAST(N'2018-04-21 13:18:42.197' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1315, N'GUSTAVO IRIBARREN BUSSO', 1725176, CAST(N'2018-04-21 13:18:42.240' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1316, N'RPDOLFO MARTIN IRIGOYEN GETTE', 1043576, CAST(N'2018-04-21 13:18:42.287' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1317, N'ARTIGAS RUBEN IROLDI NOGUERA', 1347076, CAST(N'2018-04-21 13:18:42.330' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1318, N'RUTH IRURETA LIOTTI', 1236366, CAST(N'2018-04-21 13:18:42.373' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1319, N'ERNESTO IRURUETA ', 1669556, CAST(N'2018-04-21 13:18:42.417' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1320, N'MIGUEL ANGEL ISAZA MUÑIZ', 2818466, CAST(N'2018-04-21 13:18:42.460' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1321, N'ARIADNA ISLAS BUSCASSO', 1505205, CAST(N'2018-04-21 13:18:42.510' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1322, N'MILTON EUGENIO ITUARTE MORENO', 1317923, CAST(N'2018-04-21 13:18:42.553' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1323, N'LUIS ITUARTE GONZALEZ', 1586072, CAST(N'2018-04-21 13:18:42.600' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1324, N'PABLO LUIS ITURRALDE VIÑAS', 3160322, CAST(N'2018-04-21 13:18:42.647' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1325, N'BERNANRDO ENRIQUE ITURRALDE LOPEZ', 1727264, CAST(N'2018-04-21 13:18:42.693' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1326, N'LUIS A. ITURRIA CANO', 1243791, CAST(N'2018-04-21 13:18:42.737' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1327, N'MONICA LOURDES IVANOVICH OUJO', 2889754, CAST(N'2018-04-21 13:18:42.780' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1328, N'MARY IZAGUIRRE ', 2964708, CAST(N'2018-04-21 13:18:42.827' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1329, N'JUAN JACOBO ARGUELLO', 576758, CAST(N'2018-04-21 13:18:42.870' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1330, N'FRANCISCO MARIA JAUREGUI GIUPPONI', 1515260, CAST(N'2018-04-21 13:18:42.913' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1331, N'JUVENAL MARÍA JAVIER CACERES', 1845022, CAST(N'2018-04-21 13:18:42.957' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1332, N'BLAS ALBERTO JELPO SOULAGE', 3454038, CAST(N'2018-04-21 13:18:43.000' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1333, N'INES JIMENEZ DE ARECHAGA VERHULST', 1443328, CAST(N'2018-04-21 13:18:43.047' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1334, N'CECILIA ROXANA JONES SOMOGYI', 1413716, CAST(N'2018-04-21 13:18:43.090' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1335, N'FERNANDO JORAJURIA LAMAS', 1095315, CAST(N'2018-04-21 13:18:43.137' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1336, N'JOHN ROBERT JOURDAN NEGREIN', 2588881, CAST(N'2018-04-21 13:18:43.180' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1337, N'GINNA VERONICA JOURDAN SENA', 3057466, CAST(N'2018-04-21 13:18:43.227' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1338, N'JORGE LEONIDAS JOUROFF HAZOT', 1387406, CAST(N'2018-04-21 13:18:43.270' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1339, N'GONZALO JUANICO SAYAGO', 1388291, CAST(N'2018-04-21 13:18:43.313' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1340, N'JOSE LUIS JUAREZ BRAMBILLASCA', 3703160, CAST(N'2018-04-21 13:18:43.357' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1341, N'ESTELA MARI JUBETTE PESCE', 2838309, CAST(N'2018-04-21 13:18:43.400' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1342, N'MARIO RAUL JUBIN CRISPIERE', 1208207, CAST(N'2018-04-21 13:18:43.440' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1343, N'LILIANA JURE HERNANDEZ', 1569066, CAST(N'2018-04-21 13:18:43.487' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1344, N'EDI WILLIAM JURI CRAVIOLO', 1728225, CAST(N'2018-04-21 13:18:43.530' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1345, N'JOSE ANTONIO KAMAID TOTH', 1867486, CAST(N'2018-04-21 13:18:43.570' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1346, N'GABRIEL KAPLUN HIRSZ', 1132530, CAST(N'2018-04-21 13:18:43.617' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1347, N'NORMA LILIAM KECHICHIAN GARCIA', 1248508, CAST(N'2018-04-21 13:18:43.663' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1348, N'CLAUDIA GISELLE KELLAND TORRES', 2547112, CAST(N'2018-04-21 13:18:43.707' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1349, N'FLORENCE KEUROGLIAN GOMEZ', 1943656, CAST(N'2018-04-21 13:18:43.753' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1350, N'SELVA ANABELLA KLETT FERNANDEZ', 3486245, CAST(N'2018-04-21 13:18:43.800' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1351, N'ANA VICTORIA KNOBEL SZUCHMACHER', 1777985, CAST(N'2018-04-21 13:18:43.843' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1352, N'EDISON HERIBERTO KRASOVSKI CORREA', 3433580, CAST(N'2018-04-21 13:18:43.890' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1353, N'ROBERTO KREIMERMAN ', 1902050, CAST(N'2018-04-21 13:18:43.940' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1354, N'JUAN PABLO LABAT RODRIGUEZ', 2662776, CAST(N'2018-04-21 13:18:43.983' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1355, N'MAURO LABELLA PEÑA', 3498089, CAST(N'2018-04-21 13:18:44.033' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1356, N'TABARE ALEJANDRO LACA GARCIA', 2937988, CAST(N'2018-04-21 13:18:44.080' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1357, N'LUIS ALBERTO LACALLE POU', 1911936, CAST(N'2018-04-21 13:18:44.123' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1358, N'LUIS ALBERTO LACALLE DE HERRERA', 896886, CAST(N'2018-04-21 13:18:44.170' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1359, N'JACQUELINE LACASA IGUNE', 2949407, CAST(N'2018-04-21 13:18:44.217' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1360, N'RICARDO GABRIEL LACKNER PRATO', 1900801, CAST(N'2018-04-21 13:18:44.260' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1361, N'GUILLERMO HECTOR LACROIX GUIDICELLI', 1621660, CAST(N'2018-04-21 13:18:44.307' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1362, N'FANNY ALICIA LAFFITTE SMITH', 1164281, CAST(N'2018-04-21 13:18:44.353' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1363, N'OMAR MARIA LAFLUF HEBEICH', 3522308, CAST(N'2018-04-21 13:18:44.397' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1364, N'ANTONIO MIGUEL LAFUENTE SILVA', 3649557, CAST(N'2018-04-21 13:18:44.440' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1365, N'BEATRIZ RAQUEL LAGEARD CASTELAO', 929971, CAST(N'2018-04-21 13:18:44.483' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1366, N'NESTOR GERARD LAGISQUET SPOSITO', 1350028, CAST(N'2018-04-21 13:18:44.530' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1367, N'JULIO LAMARTHEE TAJES', 720574, CAST(N'2018-04-21 13:18:44.573' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1368, N'BEATRIZ CLAUDIA LAMAS VILLALBA', 1846447, CAST(N'2018-04-21 13:18:44.620' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1369, N'JULIO LAMATH PEREYRA', 1580790, CAST(N'2018-04-21 13:18:44.667' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1370, N'RAQUEL LANDEIRA LOPEZ', 1063460, CAST(N'2018-04-21 13:18:44.710' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1371, N'SERGIO RUBEN LANFRANCONI COSTA', 2787473, CAST(N'2018-04-21 13:18:44.757' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1372, N'MIGUEL LANGON CUÑARRO', 830066, CAST(N'2018-04-21 13:18:44.800' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1373, N'MIGUEL HORACIO LANGONE ARAMBURU', 1133446, CAST(N'2018-04-21 13:18:44.843' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1374, N'MARIA ELENA PATRICIA LANZANI BOGGIO', 1394964, CAST(N'2018-04-21 13:18:44.887' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1375, N'SERGIO LAPAZ ', 2830558, CAST(N'2018-04-21 13:18:44.933' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1376, N'EDUARDO LARBANOIS SANTA MARIA', 3081602, CAST(N'2018-04-21 13:18:44.977' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1377, N'ROBERTO ORLANDO LARRAMA ECHARTE', 2869523, CAST(N'2018-04-21 13:18:45.027' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1378, N'AUREL CESAR LARRAÑAGA NOYA', 3637849, CAST(N'2018-04-21 13:18:45.077' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1379, N'JORGE LARRAÑAGA FRAGA', 2584088, CAST(N'2018-04-21 13:18:45.120' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1380, N'VICTOR OMAR LARREGUI GAMBOA', 3383791, CAST(N'2018-04-21 13:18:45.170' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1381, N'MIGUEL ALBERTO LARRIERA ECHAVARREN', 812149, CAST(N'2018-04-21 13:18:45.210' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1382, N'BEATRÍZ LARRIEU DE LAS CARRERAS', 1855678, CAST(N'2018-04-21 13:18:45.257' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1383, N'JORGE TOMAS LARRIEUX RODRIGUEZ', 951478, CAST(N'2018-04-21 13:18:45.300' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1384, N'CARLOS FRANCISCO LARROSA KLAPS', 1560776, CAST(N'2018-04-21 13:18:45.343' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1385, N'ALCIDES LARROSA ', 3587564, CAST(N'2018-04-21 13:18:45.390' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1386, N'ADILE LARROSA ', 3779817, CAST(N'2018-04-21 13:18:45.437' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1387, N'MARÍA TERESA LARROSA ---', 1013477, CAST(N'2018-04-21 13:18:45.480' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1388, N'GABRIELA LASA GARRIDO', 1575405, CAST(N'2018-04-21 13:18:45.527' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1389, N'EDGARDO LASSO VIOJO', 2759335, CAST(N'2018-04-21 13:18:45.573' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1390, N'ARAMIS LATCHINIAN ', 1836072, CAST(N'2018-04-21 13:18:45.620' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1391, N'DARDO ARIEL LATORRE DENIS', 2851666, CAST(N'2018-04-21 13:18:45.667' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1392, N'CARLOS ISRAEL LATORRE FERNANDEZ', 3494873, CAST(N'2018-04-21 13:18:45.713' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1393, N'SERGIO RAUL LATTANZIO SASTRE', 1868867, CAST(N'2018-04-21 13:18:45.757' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1394, N'RAFAEL MARIO LAUREIRO AGORIO', 1865241, CAST(N'2018-04-21 13:18:45.803' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1395, N'GUILLERMO PABLO LAURIDO ASTESIANO', 919372, CAST(N'2018-04-21 13:18:45.847' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1396, N'MARIA ELENA LAURNAGA ARREGUI', 2956455, CAST(N'2018-04-21 13:18:45.893' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1397, N'CARLOS ANTONIO LAVECCHIA ECHAVE', 1519126, CAST(N'2018-04-21 13:18:45.937' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1398, N'MARIO RAMON LAYERA PANZARDO', 2818421, CAST(N'2018-04-21 13:18:45.983' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1399, N'GUSTAVO GERARDO LAYES FIGUEREDO', 1887747, CAST(N'2018-04-21 13:18:46.030' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1400, N'LUIS ANGEL LAZO VAZQUEZ', 651797, CAST(N'2018-04-21 13:18:46.073' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1401, N'MARIA ELISA LEAL MATTOS', 3879299, CAST(N'2018-04-21 13:18:46.120' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1402, N'GONZIO LEANIZ BREGANTE', 1342591, CAST(N'2018-04-21 13:18:46.170' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1403, N'FEDERICO OSCAR LEBEL BAPTISTA', 1137803, CAST(N'2018-04-21 13:18:46.213' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1404, N'MARIEL LECCHINI SONDEREGGER', 1659590, CAST(N'2018-04-21 13:18:46.257' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1405, N'MARTA BEATRIZ LECHINI SCANAVINO', 1148209, CAST(N'2018-04-21 13:18:46.303' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1406, N'RICARDO LECOUNA CABRERA', 2021961, CAST(N'2018-04-21 13:18:46.350' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1407, N'HUGO WALTER LECUONA GUILLEN', 4481634, CAST(N'2018-04-21 13:18:46.393' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1408, N'MARIA DEL ROSARIO LEDESMA PEREIRA', 4142753, CAST(N'2018-04-21 13:18:46.440' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1409, N'MARIO JAVIER LEIVA LAZZO', 3585928, CAST(N'2018-04-21 13:18:46.483' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1410, N'MARIA CRISTINA LEMOS RODRIGUEZ', 1808427, CAST(N'2018-04-21 13:18:46.527' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1411, N'HUGO ENRIQUE LENS SOTELO', 1391758, CAST(N'2018-04-21 13:18:46.573' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1412, N'MARISA LEON ALMEIDA', 2778164, CAST(N'2018-04-21 13:18:46.617' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1413, N'ALEJANDRO GUILLERMO LEOPOLD FRAIGOLA', 1676479, CAST(N'2018-04-21 13:18:46.667' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1414, N'LUIS VICTOR LEOPOLD COSTABILE', 1746449, CAST(N'2018-04-21 13:18:46.713' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1415, N'EDGARDO LERENA MORENA', 2799768, CAST(N'2018-04-21 13:18:46.757' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1416, N'ANDRES FERNANDO LESA MIRALDO', 3153312, CAST(N'2018-04-21 13:18:46.800' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1417, N'HECTOR CALOS LESCANO FRASCHINI', 1108666, CAST(N'2018-04-21 13:18:46.843' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1418, N'LEON LEV PONIACHJK', 967029, CAST(N'2018-04-21 13:18:46.887' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1419, N'MARIA GRACIELA LEVA RISSO', 2023888, CAST(N'2018-04-21 13:18:46.930' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1420, N'VIVIANA CONSTANCIA LEVY GERBAN', 1375351, CAST(N'2018-04-21 13:18:46.973' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1421, N'OMAR LEYES ', 3799834, CAST(N'2018-04-21 13:18:47.020' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1422, N'MISAEL LEYES PEDROZO', 4479545, CAST(N'2018-04-21 13:18:47.063' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1423, N'GERMAN LEZAMA ALAMADA', 521505, CAST(N'2018-04-21 13:18:47.110' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1424, N'RICHARD ALEX LEZCANO SATANA', 3435380, CAST(N'2018-04-21 13:18:47.153' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1425, N'EDUARDO LIARD MAGNANO', 1825766, CAST(N'2018-04-21 13:18:47.200' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1426, N'HUGO GABRIEL LIBONATTI ALONSO', 1714070, CAST(N'2018-04-21 13:18:47.243' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1427, N'GERARDO NERCELO LICANDRO FERRANDO', 1823572, CAST(N'2018-04-21 13:18:47.287' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1428, N'JOSE ANTONIO LICANDRO GOLDARACENA', 1689941, CAST(N'2018-04-21 13:18:47.330' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1429, N'JOSE IGNACIO LICHA VILA', 1592994, CAST(N'2018-04-21 13:18:47.373' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1430, N'ANDRES PABLO LIMA PROSERPIO', 3059248, CAST(N'2018-04-21 13:18:47.417' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1431, N'JORGE DANIEL LIMA VALVERDE RAMOS', 2803768, CAST(N'2018-04-21 13:18:47.460' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1432, N'MARISA ESTELA LINDNER YAQUINTA', 1407558, CAST(N'2018-04-21 13:18:47.507' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1433, N'ALEXIS ANIBAL LISSIO IRIGARAY', 3016640, CAST(N'2018-04-21 13:18:47.550' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1434, N'LAURA LLAMBI RODRIGUEZ', 1090347, CAST(N'2018-04-21 13:18:47.597' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1435, N'ALVARO LUIS LLANES CALIXTO', 1833035, CAST(N'2018-04-21 13:18:47.640' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1436, N'STELLA MARY LLORENTE CLAVIJO', 3094213, CAST(N'2018-04-21 13:18:47.687' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1437, N'LUIS ALBERTO LLOSA TAPARI', 929298, CAST(N'2018-04-21 13:18:47.730' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1438, N'RICARDO LLUBERAS JABIF', 1154109, CAST(N'2018-04-21 13:18:47.773' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1439, N'JOSE WALTER LOBELCHO LAGUNA', 1511737, CAST(N'2018-04-21 13:18:47.817' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1440, N'ALFONSO MARCELO LODEIRO GARCIA', 3649337, CAST(N'2018-04-21 13:18:47.860' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1441, N'MARIA GABRIELA LOIS GRIPPI', 1587673, CAST(N'2018-04-21 13:18:47.907' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1442, N'EDUARDO ESTEBAN LOMBARDI ESCAYOLA', 801886, CAST(N'2018-04-21 13:18:47.950' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1443, N'GABRIEL LOMBIDE MANTERO', 1270811, CAST(N'2018-04-21 13:18:47.993' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1444, N'ESTELA LONG ZAPATA', 3152384, CAST(N'2018-04-21 13:18:48.040' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1445, N'RUPERTO LONG GARAT', 1083368, CAST(N'2018-04-21 13:18:48.083' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1446, N'EDGAR DANIEL LONGUI DIAZ', 2870658, CAST(N'2018-04-21 13:18:48.127' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1447, N'LUIS MARIA LOPARDO TELECHEA', 2876871, CAST(N'2018-04-21 13:18:48.173' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1448, N'CONSTANTINO LOPEZ TROTEIRO', 1587800, CAST(N'2018-04-21 13:18:48.217' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1449, N'JAVIER LUIS LOPEZ SANCHO', 1486254, CAST(N'2018-04-21 13:18:48.260' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1450, N'CARLOS MARIO LOPEZ RODRIGUEZ', 1211998, CAST(N'2018-04-21 13:18:48.307' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1451, N'HEBER DANIEL LOPEZ RAMOS', 3109514, CAST(N'2018-04-21 13:18:48.350' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1452, N'LUIS CESAR LOPEZ COLLAZO', 3380540, CAST(N'2018-04-21 13:18:48.393' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1453, N'OSCAR OMAR LOPEZ BARRERA', 3536587, CAST(N'2018-04-21 13:18:48.440' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1454, N'NESTOR LOPEZ AREZO', 3761878, CAST(N'2018-04-21 13:18:48.487' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1455, N'MAITE LOPEZ TRIGO', 4642275, CAST(N'2018-04-21 13:18:48.530' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1456, N'JUAN CARLOS LOPEZ CANCELA', 1591661, CAST(N'2018-04-21 13:18:48.580' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1457, N'SERGIO OMAR LOPEZ RODRIGUEZ', 2809683, CAST(N'2018-04-21 13:18:48.627' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1458, N'GUZMÁN LOPEZ MONTEMURRO', 3033810, CAST(N'2018-04-21 13:18:48.673' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1459, N'MARCELA AMALIA LOPEZ MOROY', 1748618, CAST(N'2018-04-21 13:18:48.720' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1460, N'MARIA ALICIA LOPEZ ZIROLLO', 1323931, CAST(N'2018-04-21 13:18:48.760' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1461, N'MARIA CRISTINA LOPEZ UBEDA', 1181431, CAST(N'2018-04-21 13:18:48.807' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1462, N'WILFREDO LOPEZ CACCIAVILLANI', 847639, CAST(N'2018-04-21 13:18:48.850' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1463, N'NELIDA LOPEZ ', 1365892, CAST(N'2018-04-21 13:18:48.893' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1464, N'GERARDO LORBEER PONS', 1389138, CAST(N'2018-04-21 13:18:48.937' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1465, N'WILMA LORDA LORDA MAYORA', 1742733, CAST(N'2018-04-21 13:18:48.980' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1466, N'RAMON MARIA LORENTE VICENTE', 2868194, CAST(N'2018-04-21 13:18:49.027' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1467, N'ELSA LORENZO FIGUEROA', 954599, CAST(N'2018-04-21 13:18:49.070' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1468, N'FERNADO JOSE LORENZO ESTEFAN', 1562644, CAST(N'2018-04-21 13:18:49.117' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1469, N'ERNESTO TABARE LORENZO RESTANO', 1859791, CAST(N'2018-04-21 13:18:49.163' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1470, N'EDUARDO LORIER SANDRO', 3528515, CAST(N'2018-04-21 13:18:49.207' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1471, N'JULIO C. LOUREIRO ALBERO', 521178, CAST(N'2018-04-21 13:18:49.250' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1472, N'NELSON LOUSTAUNAU DOMINGUEZ', 1677415, CAST(N'2018-04-21 13:18:49.297' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1473, N'SYLVIA DANIELA LOVESIO DONATI', 1739210, CAST(N'2018-04-21 13:18:49.340' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1474, N'LUIS EDUARDO LOYARTE OLIVERA', 3331690, CAST(N'2018-04-21 13:18:49.387' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1475, N'ARANEL LUCAS MENA', 3367617, CAST(N'2018-04-21 13:18:49.430' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1476, N'EDUARDO LUCAS DE OLIVERA TREMEZANO', 2612463, CAST(N'2018-04-21 13:18:49.477' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1477, N'HECTOR JOAQUIN LUCIAN MENA', 931851, CAST(N'2018-04-21 13:18:49.520' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1478, N'VICTOR LUGO AMARILLO', 2805097, CAST(N'2018-04-21 13:18:49.563' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1479, N'LUIS ARTURO LUJAN HERNANDEZ', 2653066, CAST(N'2018-04-21 13:18:49.610' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1480, N'JOSE CARLOS LUPINACCI DA SILVA', 1200554, CAST(N'2018-04-21 13:18:49.657' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1481, N'DANILA LUQUE RODRIGUEZ', 2939966, CAST(N'2018-04-21 13:18:49.700' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1482, N'EDUARDO LURNER STEINBERG', 1391299, CAST(N'2018-04-21 13:18:49.743' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1483, N'ALEJANDRO CARLOS LUSSICH PATRON', 1694400, CAST(N'2018-04-21 13:18:49.790' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1484, N'IRMA IRENE LUST ABALOS', 3597365, CAST(N'2018-04-21 13:18:49.833' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1485, N'ALVARO LUZARDO GONZALEZ', 2578912, CAST(N'2018-04-21 13:18:49.877' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1486, N'MARIELA LUZI BACCI', 1493526, CAST(N'2018-04-21 13:18:49.923' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1487, N'TERESITA MACCIO AMBROSONI', 1896716, CAST(N'2018-04-21 13:18:49.967' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1488, N'SILVIA MABEL MACHADO CALVO', 1509533, CAST(N'2018-04-21 13:18:50.010' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1489, N'ARMINDA MACHADO DEL RIO', 1991482, CAST(N'2018-04-21 13:18:50.053' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1490, N'HUGO MACHADO LOTITO', 3235300, CAST(N'2018-04-21 13:18:50.097' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1491, N'EDGAR MACHADO COSTA', 3425107, CAST(N'2018-04-21 13:18:50.140' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1492, N'ELSA MACHADO DE SOUZA', 1294083, CAST(N'2018-04-21 13:18:50.187' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1493, N'ANTONIO MACIEL MALEJ', 1339255, CAST(N'2018-04-21 13:18:50.233' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1494, N'FAUSTO ALEJANDRO MACIEL PELLETTI', 1396051, CAST(N'2018-04-21 13:18:50.277' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1495, N'RUBEN MARIA MACIEL MARINO', 3498241, CAST(N'2018-04-21 13:18:50.320' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1496, N'ANA MARÍA MAGGI SILVA', 1253372, CAST(N'2018-04-21 13:18:50.360' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1497, N'ALVARO  MARIA MAGLIA CANZANI', 1389859, CAST(N'2018-04-21 13:18:50.407' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1498, N'FERNANDO MAGNIFICO PEREZ', 1896667, CAST(N'2018-04-21 13:18:50.450' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1499, N'ANDRES OSCAR MAGNONE MENENDEZ', 2620429, CAST(N'2018-04-21 13:18:50.493' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1500, N'OSCAR MAGURNO SOUTO', 627427, CAST(N'2018-04-21 13:18:50.540' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1501, N'JOSE CARLOS MAHIA FREIRE', 3783470, CAST(N'2018-04-21 13:18:50.583' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1502, N'JUAN MAILHOS GUTIERREZ', 2898282, CAST(N'2018-04-21 13:18:50.630' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1503, N'MARIA ELENA MAINARD GARCIA', 1650645, CAST(N'2018-04-21 13:18:50.677' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1504, N'WASHINGTON OMAR MAINARDI FILPI', 1312411, CAST(N'2018-04-21 13:18:50.720' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1505, N'ENZO JAVIER MALAN CASTRO', 3486216, CAST(N'2018-04-21 13:18:50.763' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1506, N'MARIANA MALET VAZQUEZ', 1033687, CAST(N'2018-04-21 13:18:50.810' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1507, N'ALMA SONNIA MALLO CALVIÑO', 818383, CAST(N'2018-04-21 13:18:50.850' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1508, N'JAVIER LEOMAR MALLORCA ROVETTA', 3337835, CAST(N'2018-04-21 13:18:50.897' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1509, N'GRACIELA MALVAREZ TORRES', 1537386, CAST(N'2018-04-21 13:18:50.940' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1510, N'EMILIO ROBERTO MANGARELLI COSTA', 1430538, CAST(N'2018-04-21 13:18:50.987' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1511, N'EDUARDO JORGE MANTA ARES', 1495554, CAST(N'2018-04-21 13:18:51.033' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1512, N'DANIEL EDUARDO MAÑANA DOGLIOTTI', 1341028, CAST(N'2018-04-21 13:18:51.077' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1513, N'IRMA GABY MAÑAY EULA', 1481391, CAST(N'2018-04-21 13:18:51.123' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1514, N'DANIELA MAQUIERA ', 3653028, CAST(N'2018-04-21 13:18:51.170' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1515, N'JORGE MARABOTO GIOIA', 3717819, CAST(N'2018-04-21 13:18:51.213' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1516, N'GERARDO LUIS MARCELLI BERSARIAN', 1359120, CAST(N'2018-04-21 13:18:51.257' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1517, N'MARCELO MARCHESE VIVIANI', 1657947, CAST(N'2018-04-21 13:18:51.300' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1518, N'DIANA BEATRIZ MARCOS POSE', 1083065, CAST(N'2018-04-21 13:18:51.343' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1519, N'LUIS AURELIO MARGENAT GIRIBALDI', 1209424, CAST(N'2018-04-21 13:18:51.387' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1520, N'CARLOS CESAR MARICHAL MARCONA', 1160172, CAST(N'2018-04-21 13:18:51.430' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1521, N'SEBASTIAN MARIÑAS MARRONE', 3009041, CAST(N'2018-04-21 13:18:51.473' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1522, N'MARIO MARIÑO ', 1401500, CAST(N'2018-04-21 13:18:51.520' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1523, N'DARIO ALBERTO MARIÑO CHAVEZ', 3379816, CAST(N'2018-04-21 13:18:51.563' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1524, N'MORGAN MARIÑO MAZZEI', 1482746, CAST(N'2018-04-21 13:18:51.610' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1525, N'MARIO DAVID MARQUEZ VIDAL', 3553478, CAST(N'2018-04-21 13:18:51.657' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1526, N'NELSON JESUS MARQUEZ RODRIGUEZ', 3321095, CAST(N'2018-04-21 13:18:51.703' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1527, N'MARIA VICTORIA MARQUISA AREZZO', 3302430, CAST(N'2018-04-21 13:18:51.750' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1528, N'PATRICIA MARIA MARQUISA HORGALES', 1556555, CAST(N'2018-04-21 13:18:51.790' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1529, N'YONA SOLEDAD MARQUISA AREZZO', 2874142, CAST(N'2018-04-21 13:18:51.837' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1530, N'ADRIANA MARQUISIO CACERES', 1727747, CAST(N'2018-04-21 13:18:51.880' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1531, N'RICARDO MARQUISIO AGUIRRE', 3090553, CAST(N'2018-04-21 13:18:51.927' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1532, N'MANUEL MARRERO AVERO', 1494896, CAST(N'2018-04-21 13:18:51.967' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1533, N'NELSON EMILIO MARTENS MULLER', 2840437, CAST(N'2018-04-21 13:18:52.010' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1534, N'LUIS  SANTIAGO MARTINELLI PICART', 1839142, CAST(N'2018-04-21 13:18:52.057' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1535, N'CARLOS MARTINEZ ANZOLA', 1883918, CAST(N'2018-04-21 13:18:52.100' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1536, N'RUBEN WALDEMAR MARTINEZ HUELMO', 1179285, CAST(N'2018-04-21 13:18:52.147' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1537, N'RICARDO MARTINEZ MOSCO', 1482046, CAST(N'2018-04-21 13:18:52.190' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1538, N'GONZALO MARTINEZ MARCHESONI', 1448680, CAST(N'2018-04-21 13:18:52.237' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1539, N'JUAN ESTEBAN MARTINEZ GALLO', 2821524, CAST(N'2018-04-21 13:18:52.280' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1540, N'JULIO CESAR MARTINEZ FERNANDEZ', 3829556, CAST(N'2018-04-21 13:18:52.323' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1541, N'LUIS ALBERTO MARTINEZ MENDITEGUY', 3664872, CAST(N'2018-04-21 13:18:52.367' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1542, N'RODOLFO LUIS MARTINEZ BERAZA', 4025970, CAST(N'2018-04-21 13:18:52.410' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1543, N'ANA MARIA MARTINEZ VIDAL', 1716180, CAST(N'2018-04-21 13:18:52.453' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1544, N'JOSE GERVASIO MARTINEZ RODRIGUEZ', 2577718, CAST(N'2018-04-21 13:18:52.500' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1545, N'SOFIA MARTINEZ GARIBALDI', 1822373, CAST(N'2018-04-21 13:18:52.547' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1546, N'DANIEL MARTINEZ ', 1962185, CAST(N'2018-04-21 13:18:52.590' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1547, N'ANDRES CARLOS MARTINEZ USOZ', 1978079, CAST(N'2018-04-21 13:18:52.637' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1548, N'CARLOS ALBERTO MARTINEZ ROSALES', 2690444, CAST(N'2018-04-21 13:18:52.680' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1549, N'GUSTAVO MARTINEZ DA COSTA', 3858990, CAST(N'2018-04-21 13:18:52.727' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1550, N'RUBEN JORGE MARTINEZ MARTIN', 4112036, CAST(N'2018-04-21 13:18:52.770' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1551, N'DANIEL MARTINEZ ', 4044652, CAST(N'2018-04-21 13:18:52.813' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1552, N'JUAN CARLOS MARTINEZ FERREIRA', 1330012, CAST(N'2018-04-21 13:18:52.860' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1553, N'HEBER ADRIAN MARTINEZ MARQUEZ', 2869626, CAST(N'2018-04-21 13:18:52.903' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1554, N'GRACIELA YANET MARTINEZ VELAZQUEZ', 2775310, CAST(N'2018-04-21 13:18:52.950' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1555, N'MARIA DEL HUERTO MARTINEZ BALBUENA', 1474234, CAST(N'2018-04-21 13:18:52.990' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1556, N'ISABEL MARTINEZ DESTOUET', 1409871, CAST(N'2018-04-21 13:18:53.037' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1557, N'CARLOS ANTONIO MARTINEZ SILVERA', 1488902, CAST(N'2018-04-21 13:18:53.080' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1558, N'HERIC ALEM MARTINEZ CAETANO', 3241729, CAST(N'2018-04-21 13:18:53.127' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1559, N'ANA LAURA MARTINEZ LATORRE', 2612361, CAST(N'2018-04-21 13:18:53.173' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1560, N'BEATRIZ MARIA MARTINEZ AREOSA', 875756, CAST(N'2018-04-21 13:18:53.220' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1561, N'WALTER MARTINEZ IZQUIERDO', 2527549, CAST(N'2018-04-21 13:18:53.263' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1562, N'DARDO ALEJANDRO MARTINEZ DE LAS HERAS', 1936384, CAST(N'2018-04-21 13:18:53.310' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1563, N'ANA KARINA MARTINEZ LARROSA', 3467717, CAST(N'2018-04-21 13:18:53.357' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1564, N'EDUARDO BERNABE MARTINEZ CALANDRIA', 1089835, CAST(N'2018-04-21 13:18:53.397' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1565, N'GERARDO CELSO MARTINEZ ADIPE', 3223539, CAST(N'2018-04-21 13:18:53.440' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1566, N'BEATRIZ MARIA MARTINEZ AREOSA', 875756, CAST(N'2018-04-21 13:18:53.487' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1567, N'ELENA MARTINEZ ROSSO', 1293852, CAST(N'2018-04-21 13:18:53.530' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1568, N'DANIEL CARLOS MARTINEZ VILLAAMIL', 1360417, CAST(N'2018-04-21 13:18:53.573' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1569, N'NELSON YEIN MARTINS JUANICO', 3795181, CAST(N'2018-04-21 13:18:53.620' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1570, N'LUCY MARTINS MARTINS HERNANDEZ', 1336395, CAST(N'2018-04-21 13:18:53.667' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1571, N'ANDRES MARTIRENA DAMBROSIO', 1502720, CAST(N'2018-04-21 13:18:53.713' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1572, N'GREGORIO MARTIRENA ALZUGARAY', 839285, CAST(N'2018-04-21 13:18:53.757' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1573, N'ANA MARIA MARTIRENA GIMENEZ', 1376536, CAST(N'2018-04-21 13:18:53.800' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1574, N'GUSTAVO JAVIER MARTON AMEAL', 1370899, CAST(N'2018-04-21 13:18:53.843' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1575, N'SILVIA MASCARO FIEGUTH', 1195366, CAST(N'2018-04-21 13:18:53.887' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1576, N'CARLOS ANTONIO MASEDA ARTOLA', 1173461, CAST(N'2018-04-21 13:18:53.933' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1577, N'ANDRES MASOLLER OTTIERI', 1793083, CAST(N'2018-04-21 13:18:53.977' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1578, N'HECTOR MASSEILOT CHAVEZ', 1747324, CAST(N'2018-04-21 13:18:54.023' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1579, N'LUIS BALTASAR MASSEY MILLER', 3538903, CAST(N'2018-04-21 13:18:54.063' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1580, N'FRANCISCO JULIAN MASSITTA FERREIRA', 1054740, CAST(N'2018-04-21 13:18:54.110' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1581, N'CARLOS ALBERTO MATA PRATES', 3217126, CAST(N'2018-04-21 13:18:54.157' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1582, N'FEDOR ALEJANDRO MATEOS AGUIRRE ZABALA', 3432641, CAST(N'2018-04-21 13:18:54.200' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1583, N'GABRIEL MATEU CHIAVONE', 1904984, CAST(N'2018-04-21 13:18:54.243' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1584, N'VENANCIA MARIA MATIAUDA ESPINO', 3713728, CAST(N'2018-04-21 13:18:54.287' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1585, N'ROXANA DANIELLA MATTOS MELO', 1693250, CAST(N'2018-04-21 13:18:54.330' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1586, N'CARLOS JOSE MATTOS DAHLQUIST', 1195997, CAST(N'2018-04-21 13:18:54.373' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1587, N'TANIA MAURI SCARONE', 3230268, CAST(N'2018-04-21 13:18:54.417' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1588, N'GRACIELA TULA MAURI TUSSO', 1179441, CAST(N'2018-04-21 13:18:54.463' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1589, N'GUSTAVO RICARDO MAYOLA ORTIGUEIRA', 2921523, CAST(N'2018-04-21 13:18:54.507' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1590, N'CARLOS MARÍA MAZZILLI BERTONI', 3736364, CAST(N'2018-04-21 13:18:54.550' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1591, N'JOSE MAZZONI GOLLARDIA', 3485292, CAST(N'2018-04-21 13:18:54.600' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1592, N'JULIAN ALEJANDRO MAZZONI MOROSOLI', 2784891, CAST(N'2018-04-21 13:18:54.650' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1593, N'ROSANA CECILIA MAZZONI MOROSOLI', 3552727, CAST(N'2018-04-21 13:18:54.693' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1594, N'MARIA ELENA MAZZOTTI DIEZ', 1676310, CAST(N'2018-04-21 13:18:54.740' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1595, N'GRACIELA MAZZUCHI CRISAFULLI', 1987283, CAST(N'2018-04-21 13:18:54.783' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1596, N'ROBERT NINO MEDINA RIVEIRO', 2589771, CAST(N'2018-04-21 13:18:54.830' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1597, N'ISIDRO RAMON MEDINA COSCIA', 3260022, CAST(N'2018-04-21 13:18:54.873' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1598, N'GUSTAVO WILLIAN MEIJIDES MAINE', 3059043, CAST(N'2018-04-21 13:18:54.920' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1599, N'RAFAEL MANUEL MEILAN BELLO', 1000293, CAST(N'2018-04-21 13:18:54.963' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1600, N'WALTER JOSE MEIRELES CRESPO', 3459012, CAST(N'2018-04-21 13:18:55.007' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1601, N'LAURO JUAN BAUTISTA MELENDEZ CADIAC', 1486626, CAST(N'2018-04-21 13:18:55.050' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1602, N'CARLOS ENRIQUE MELLI PEREIRA', 1858413, CAST(N'2018-04-21 13:18:55.093' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1603, N'MARIA DEL CARMEN MELO BOCCA', 1579828, CAST(N'2018-04-21 13:18:55.137' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1604, N'NIGEL RAFAEL MENA GONZALEZ', 1793511, CAST(N'2018-04-21 13:18:55.187' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1605, N'SCHUBERT FLORENCIO MENDEZ OLIVER', 1515246, CAST(N'2018-04-21 13:18:55.230' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1606, N'RAMON NORBERTO MENDEZ GALAIN', 1448681, CAST(N'2018-04-21 13:18:55.277' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1607, N'ELBIO MENDEZ ARECO', 1183286, CAST(N'2018-04-21 13:18:55.320' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1608, N'ANIBAL ALBERTO MENDEZ VIERA', 2916670, CAST(N'2018-04-21 13:18:55.367' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1609, N'LUIS ALBERTO MENDEZ GORO', 3384975, CAST(N'2018-04-21 13:18:55.410' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1610, N'ALEJANDRA MENDEZ AREBALO', 3394326, CAST(N'2018-04-21 13:18:55.453' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1611, N'SILVIA MENDEZ PASCAL', 3970974, CAST(N'2018-04-21 13:18:55.497' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1612, N'MYRIAM EVA MENDEZ LOPEZ', 1541653, CAST(N'2018-04-21 13:18:55.540' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1613, N'JUAN CARLOS MENDEZ PELUFFO', 3283947, CAST(N'2018-04-21 13:18:55.590' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1614, N'SCHUBERT FLORENCIO MENDEZ OLIVER', 1515246, CAST(N'2018-04-21 13:18:55.640' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1615, N'PEDRO MENDEZ AGUILERRA', 3419607, CAST(N'2018-04-21 13:18:55.687' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1616, N'JESUS MIGUEL MENDINA FARIAS', 1895377, CAST(N'2018-04-21 13:18:55.730' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1617, N'DARI MENDIONDO VIDART', 864284, CAST(N'2018-04-21 13:18:55.777' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1618, N'CARLOS MENDIVE MASCHERONI', 1835293, CAST(N'2018-04-21 13:18:55.820' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1619, N'CARLOS MENDIVE MASCHERONI', 1835293, CAST(N'2018-04-21 13:18:55.867' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1620, N'LUIS MENDOZA NOVO', 1849949, CAST(N'2018-04-21 13:18:55.910' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1621, N'CECILIA AMPARO MENENDEZ LUTAR', 1138430, CAST(N'2018-04-21 13:18:55.953' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1622, N'JOSE OMAR MENENDEZ BALSEMAO', 1910893, CAST(N'2018-04-21 13:18:55.997' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1623, N'OSCAR HEBER MENESES ANDRADE', 4077135, CAST(N'2018-04-21 13:18:56.043' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1624, N'CÉSAR DANIEL MENONI SARTI', 1485807, CAST(N'2018-04-21 13:18:56.090' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1625, N'RICHARD FREDDY MENONI FURTADO', 2517604, CAST(N'2018-04-21 13:18:56.130' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1626, N'DARÍO CONSTANTINO MENONI GONZALEZ', 3664010, CAST(N'2018-04-21 13:18:56.180' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1627, N'BLANCA GRACIELA MERCAPIDE RODRIGUEZ', 2760514, CAST(N'2018-04-21 13:18:56.223' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1628, N'GLORIA GABRIELA MERIALDO COBELLI', 1793581, CAST(N'2018-04-21 13:18:56.270' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1629, N'JORGE MERONI ', 1540428, CAST(N'2018-04-21 13:18:56.313' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1630, N'JORGE LUIS MESA DIAZ', 2651644, CAST(N'2018-04-21 13:18:56.360' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1631, N'JOSE IGNACIO MESA PEREZ', 3338952, CAST(N'2018-04-21 13:18:56.403' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1632, N'WALTER ANIBAL MESA MARTINEZ', 1648174, CAST(N'2018-04-21 13:18:56.447' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1633, N'ALVARO RICARDO MESSERE FERRARO', 1771554, CAST(N'2018-04-21 13:18:56.493' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1634, N'ROBERTO GERONIMO METHOL RAFFO', 1348328, CAST(N'2018-04-21 13:18:56.537' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1635, N'JULIO ENRIQUE METHOL NOCETI', 1303434, CAST(N'2018-04-21 13:18:56.583' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1636, N'MARIA AUXILIADORA MEZZONI BARRENECHEA', 2844314, CAST(N'2018-04-21 13:18:56.627' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1637, N'FELIPE RAUL MICHELINI DELLEPIANE', 1702885, CAST(N'2018-04-21 13:18:56.673' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1638, N'RAFAEL EUGENIO MICHELINI DELLE PIANE', 1585447, CAST(N'2018-04-21 13:18:56.720' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1639, N'EDISON ARIEL MICOL BERRUETA', 1313668, CAST(N'2018-04-21 13:18:56.763' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1640, N'GUSTAVO DANIEL MIERES KRABS', 3001416, CAST(N'2018-04-21 13:18:56.807' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1641, N'NESTOR MIERES SANTOS', 1410433, CAST(N'2018-04-21 13:18:56.850' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1642, N'RICARDO HORACIO MIGUEZ ISBARBO', 1227313, CAST(N'2018-04-21 13:18:56.893' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1643, N'RUBENS LUIS MIHICH MARTINEZ', 936708, CAST(N'2018-04-21 13:18:56.940' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1644, N'NORMA SONIA MILAN CARRASCO', 1613397, CAST(N'2018-04-21 13:18:56.987' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1645, N'EDUARDO MILANO GOLDCORN', 1366019, CAST(N'2018-04-21 13:18:57.030' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1646, N'MARIE CLAIRE MILLAN REDIN', 1126659, CAST(N'2018-04-21 13:18:57.077' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1647, N'WALTER RICHARD MILLAN ROMERO', 1646420, CAST(N'2018-04-21 13:18:57.120' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1648, N'CARMEN YANNET MILLÁN GARCIA', 1357732, CAST(N'2018-04-21 13:18:57.167' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1649, N'ORQUIDEA CARLOTA MINETTI FERNANDEZ', 1307614, CAST(N'2018-04-21 13:18:57.210' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1650, N'JORGE MINOLA ZUÑIGA', 1279314, CAST(N'2018-04-21 13:18:57.253' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1651, N'BERNARDA JOSEFINA MINVIELLE SANCHEZ', 1322240, CAST(N'2018-04-21 13:18:57.300' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1652, N'GUSTAVO ANTONIO MIRABAL BENTOS', 1449653, CAST(N'2018-04-21 13:18:57.340' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1653, N'JAVIER ALFREDO MIRANDA ALVAREZ', 1782973, CAST(N'2018-04-21 13:18:57.387' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1654, N'ADEL MIRZA PERPIGNANI', 1391024, CAST(N'2018-04-21 13:18:57.430' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1655, N'PABLO RAUL MISA REBOLEDO', 1988012, CAST(N'2018-04-21 13:18:57.473' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1656, N'ATANASILDO TOMAS MODERNELL GRAYGOLO', 2938699, CAST(N'2018-04-21 13:18:57.517' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1657, N'ITALO ALBERICO MOGNI SERRA', 3056743, CAST(N'2018-04-21 13:18:57.560' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1658, N'JOSE LUIS MOLINA ', 3513498, CAST(N'2018-04-21 13:18:57.610' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1659, N'SUSANA ALICIA MOLL INCIURA', 1865202, CAST(N'2018-04-21 13:18:57.657' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1660, N'CAROLINA MOLL CERIZOLA', 1290920, CAST(N'2018-04-21 13:18:57.703' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1661, N'MARIA ALEXANDRA MONETA RIVAS', 2891945, CAST(N'2018-04-21 13:18:57.747' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1662, N'IVONNE LOURDES MONGASTON CERRUTTI', 983484, CAST(N'2018-04-21 13:18:57.790' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1663, N'JAIME JORGE MONSERRAT GRAU', 899607, CAST(N'2018-04-21 13:18:57.833' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1664, N'DOMINGO ANTONIO MONTALDO BERTUA', 1342497, CAST(N'2018-04-21 13:18:57.877' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1665, N'NELSON MONTALDO FABBRO', 1454914, CAST(N'2018-04-21 13:18:57.920' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1666, N'MARTHA SILVANA MONTANER FORMOSO', 1948749, CAST(N'2018-04-21 13:18:57.967' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1667, N'MARCELO MARCOS MONTANER MAZZEO', 1664952, CAST(N'2018-04-21 13:18:58.010' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1668, N'ALICIA ANGELA MONTANO LOTITO', 1006151, CAST(N'2018-04-21 13:18:58.057' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1669, N'SYLVIA CARMEN MONTANS DI CUNTO', 1387404, CAST(N'2018-04-21 13:18:58.100' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1670, N'ANA GABRIELA MONTEIRO RIOS', 1604223, CAST(N'2018-04-21 13:18:58.143' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1671, N'ALCIDES MONTERO GUSTA', 3991869, CAST(N'2018-04-21 13:18:58.190' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1672, N'LUIS ABERTO MONTERO AMONDARAIN', 2862252, CAST(N'2018-04-21 13:18:58.233' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1673, N'JOSE PEDRO MONTERO GOMEZ', 1545192, CAST(N'2018-04-21 13:18:58.277' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1674, N'CLEVER DANIEL MONTIEL MENDEZ', 1588593, CAST(N'2018-04-21 13:18:58.317' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1675, N'FABIO MONTOSSI PORCHILE', 3355126, CAST(N'2018-04-21 13:18:58.360' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1676, N'ROBERTO MONZON STERCKEN', 1643522, CAST(N'2018-04-21 13:18:58.407' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1677, N'JESUS ALBERTO MORAES VAZQUEZ', 2686996, CAST(N'2018-04-21 13:18:58.450' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1678, N'MARIA EDITH MORAES VAZQUEZ', 1928255, CAST(N'2018-04-21 13:18:58.497' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1679, N'MARIA MORAES MEDINA', 3629430, CAST(N'2018-04-21 13:18:58.540' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1680, N'ANGEL MANUEL MORALES PLASENCIA', 5627672, CAST(N'2018-04-21 13:18:58.587' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1681, N'EDUARDO MORALES BENITEZ', 3325038, CAST(N'2018-04-21 13:18:58.630' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1682, N'LEONARDO DARIO MORALES ARCHENTO', 3069851, CAST(N'2018-04-21 13:18:58.680' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1683, N'WALTER EDUARDO MORALES VEGA', 2647709, CAST(N'2018-04-21 13:18:58.723' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1684, N'MARIO MORALES MARTINATO', 1504278, CAST(N'2018-04-21 13:18:58.767' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1685, N'MARIA FERNANDA MORALES CORNES', 1548034, CAST(N'2018-04-21 13:18:58.813' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1686, N'HUGO MORALES MUÑIZ', 1558715, CAST(N'2018-04-21 13:18:58.860' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1687, N'LILIAN MORALES LARROSA', 1933495, CAST(N'2018-04-21 13:18:58.903' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1688, N'DORIS PERLA MORALES MARTINEZ', 2882410, CAST(N'2018-04-21 13:18:58.947' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1689, N'ANA INES MORATO BOVE', 3929690, CAST(N'2018-04-21 13:18:58.993' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1690, N'BEATRIZ MORATORIO ', 1583844, CAST(N'2018-04-21 13:18:59.037' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1691, N'ALICIA ESTHER MORE GIACCA', 1132087, CAST(N'2018-04-21 13:18:59.083' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1692, N'EMMA COLBERT MOREIRA DE LIMA', 1711981, CAST(N'2018-04-21 13:18:59.127' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1693, N'RICARDO MOREIRA GARCIA', 1404079, CAST(N'2018-04-21 13:18:59.177' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1694, N'ROBERTO CARLOS MOREIRA ', 3139093, CAST(N'2018-04-21 13:18:59.220' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1695, N'ROQUE MOREIRA SALGADO', 1318969, CAST(N'2018-04-21 13:18:59.263' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1696, N'MIGUEL ANGEL MOREIRA DO CARMO', 2972957, CAST(N'2018-04-21 13:18:59.310' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1697, N'SELVA ALICIA MOREIRA CABRERA', 1368010, CAST(N'2018-04-21 13:18:59.350' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1698, N'CARLOS MOREIRA REISCH', 2533904, CAST(N'2018-04-21 13:18:59.397' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1699, N'CONTANZA MOREIRA VIÑAS', 1650566, CAST(N'2018-04-21 13:18:59.440' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1700, N'MARIA SOLANGE MOREIRA DIAZ', 3677085, CAST(N'2018-04-21 13:18:59.483' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1701, N'FERNANDO WILSON MORENO RODRIGUEZ', 1584450, CAST(N'2018-04-21 13:18:59.530' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1702, N'NELSON JORGE MORI BRAÑA', 1157628, CAST(N'2018-04-21 13:18:59.577' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1703, N'LAURA ISABEL MORIXE CASTIÑEIRAS', 1538877, CAST(N'2018-04-21 13:18:59.623' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1704, N'NIDIA MOROSINI VARELA', 3809977, CAST(N'2018-04-21 13:18:59.673' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1705, N'JORGE LUIS MOTA VENTURA', 3772456, CAST(N'2018-04-21 13:18:59.720' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1706, N'MARIANA ISABEL MOTA CUTINELLA', 2999703, CAST(N'2018-04-21 13:18:59.760' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1707, N'LAURA MOTTA MIGLIARO', 1157698, CAST(N'2018-04-21 13:18:59.807' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1708, N'MARIO YONNY MOTTA GOMEZ', 2604273, CAST(N'2018-04-21 13:18:59.850' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1709, N'CARLOS MIGUEL MOTTA MARZAROLI', 2536936, CAST(N'2018-04-21 13:18:59.897' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1710, N'DANIEL ANTONIO MOURADIAN GHAZARIAN', 1348374, CAST(N'2018-04-21 13:18:59.940' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1711, N'ROBERTO MOURELLE CAZABONNET', 1113979, CAST(N'2018-04-21 13:18:59.983' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1712, N'CARLOS WILLY MOURGLIA IRIGOYEN', 1964014, CAST(N'2018-04-21 13:19:00.033' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1713, N'LOURDES MOZZO GIULIANI', 2548026, CAST(N'2018-04-21 13:19:00.077' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1714, N'NIBYA MARISA MOZZO GONZALEZ', 3529462, CAST(N'2018-04-21 13:19:00.120' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1715, N'CLAUDIA ALEJANDRA MUGUIRO LAMBROSQUINI', 3146045, CAST(N'2018-04-21 13:19:00.167' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1716, N'WALTER MUINIELO PEREZ', 877435, CAST(N'2018-04-21 13:19:00.213' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1717, N'GONZALO FERNANDO MUJICA BENOIT', 1372965, CAST(N'2018-04-21 13:19:00.260' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1718, N'LUIS ALBERTO MUNIZ HAUBMAN', 4077164, CAST(N'2018-04-21 13:19:00.307' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1719, N'NESTOR MUNIZ SOSA', 3657026, CAST(N'2018-04-21 13:19:00.353' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1720, N'ORLANDO MUNOZ PERDOMO', 1365843, CAST(N'2018-04-21 13:19:00.397' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1721, N'ANA IRIS MUÑECAS LOUZAO', 949224, CAST(N'2018-04-21 13:19:00.443' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1722, N'ALINE MARIA MURIA GOMEZ', 4229007, CAST(N'2018-04-21 13:19:00.487' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1723, N'ERNESTO RAMON MURRO OBERLIN', 1219379, CAST(N'2018-04-21 13:19:00.533' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1724, N'IGNACIO MUSE SEVRINI', 1642809, CAST(N'2018-04-21 13:19:00.577' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1725, N'NELLY ESTHER MUSETTI PIRIZ', 1404816, CAST(N'2018-04-21 13:19:00.620' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1726, N'MIRIAM MUSI CHIARELLI', 1253793, CAST(N'2018-04-21 13:19:00.673' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1727, N'GRACIELA MUSLERA MENDEZ', 1298108, CAST(N'2018-04-21 13:19:00.717' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1728, N'FRANCISCO JORGE MUZIO LLADO', 2586187, CAST(N'2018-04-21 13:19:00.760' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1729, N'PABLO GASTON NAUAR ECHENIQUE', 3783682, CAST(N'2018-04-21 13:19:00.803' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1730, N'SILVIA ANDREA NAUPP MARCO', 3824729, CAST(N'2018-04-21 13:19:00.850' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1731, N'GASTON NAVARRO PATRON', 1247724, CAST(N'2018-04-21 13:19:00.893' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1732, N'CARLOS MARTIN NAVARRO SOSA', 4073668, CAST(N'2018-04-21 13:19:00.937' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1733, N'SYLVIA TERESA NAVEIRO CARRIZO', 1596287, CAST(N'2018-04-21 13:19:00.980' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1734, N'CECILIA NAYA GUTIERREZ', 1217230, CAST(N'2018-04-21 13:19:01.027' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1735, N'FELIX ADUL NEBU SEPULVEDA', 2567100, CAST(N'2018-04-21 13:19:01.070' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1736, N'DAVID NECHOÑSKI IGELKA', 11144251, CAST(N'2018-04-21 13:19:01.113' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1737, N'CARLOS NEGRO FERNANDEZ', 1771727, CAST(N'2018-04-21 13:19:01.163' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1738, N'JORGE NEMMER HERNANDEZ', 1655900, CAST(N'2018-04-21 13:19:01.207' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1739, N'WILSON ALFREDO NETTO MARTURET', 1684563, CAST(N'2018-04-21 13:19:01.253' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1740, N'CLARA ALICIA NETTO SOARES NETTO', 1334664, CAST(N'2018-04-21 13:19:01.293' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1741, N'ELBIO NICOLA CABRERA', 4057409, CAST(N'2018-04-21 13:19:01.340' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1742, N'RUTH MAYRA NIETO MOREIRA', 1610135, CAST(N'2018-04-21 13:19:01.383' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1743, N'ANDRES HUGO NIETO TRENCHE', 1361555, CAST(N'2018-04-21 13:19:01.430' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1744, N'DARDO LUIS NIEVAS SORIA', 2908771, CAST(N'2018-04-21 13:19:01.470' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1745, N'MANUEL FERNANDO NIEVES DEMARCO', 2508081, CAST(N'2018-04-21 13:19:01.517' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1746, N'AMIN NIFFOURI BLANCO', 2867869, CAST(N'2018-04-21 13:19:01.560' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1747, N'MARIELLA NIGRO MAYERO', 1463016, CAST(N'2018-04-21 13:19:01.607' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1748, N'RODOLFO NIN NOVOA', 1141322, CAST(N'2018-04-21 13:19:01.653' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1749, N'DANIEL NION SOTO', 1840702, CAST(N'2018-04-21 13:19:01.700' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1750, N'SILVIA NIPOLI CORNEY', 1261450, CAST(N'2018-04-21 13:19:01.743' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1751, N'CARLOS SERGIO NOBELASCO ORDOLI', 3013074, CAST(N'2018-04-21 13:19:01.787' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1752, N'ALEJANDRO NOBOA SILVA', 2812621, CAST(N'2018-04-21 13:19:01.833' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1753, N'CRISTOBAL NOGUEIRA MELLO', 1426251, CAST(N'2018-04-21 13:19:01.873' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1754, N'ZOSIMO NOGUEIRA DE MELLO TORRE', 1571621, CAST(N'2018-04-21 13:19:01.920' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1755, N'JOSE LUIS NOGUERA ACUÑA', 2644598, CAST(N'2018-04-21 13:19:01.963' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1756, N'MARÍA EUGENIA NONI VELASCO', 3641890, CAST(N'2018-04-21 13:19:02.007' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1757, N'GONZALO NOVALES MAYOL', 2589646, CAST(N'2018-04-21 13:19:02.053' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1758, N'JUAN ERNESTO NOVO DE LOS SANTOS', 1425983, CAST(N'2018-04-21 13:19:02.093' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1759, N'CESAR RAUL NOVO TELECHEA', 2513865, CAST(N'2018-04-21 13:19:02.140' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1760, N'OSVALDO NOVOA BARCENA', 1279816, CAST(N'2018-04-21 13:19:02.187' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1761, N'JOSE AVELINO NUNES GERONA', 1721616, CAST(N'2018-04-21 13:19:02.230' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1762, N'SERGIO NUNEZ MORAES FUENTES', 3529964, CAST(N'2018-04-21 13:19:02.273' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1763, N'DANIEL HECTOR NUÑEZ RODRIGUEZ', 1434139, CAST(N'2018-04-21 13:19:02.320' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1764, N'HEBERT LEANDRO NUÑEZ VALDIVIA', 3725707, CAST(N'2018-04-21 13:19:02.363' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1765, N'SIRLEY MARY NUÑEZ GONZALEZ', 3791951, CAST(N'2018-04-21 13:19:02.407' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1766, N'ITALO EDISON NUÑEZ GIMENEZ', 1381281, CAST(N'2018-04-21 13:19:02.453' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1767, N'OSCAR CELMAR NUÑEZ RAMALHO', 1749388, CAST(N'2018-04-21 13:19:02.497' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1768, N'GERARDO NUÑEZ ACOSTA', 1667936, CAST(N'2018-04-21 13:19:02.543' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1769, N'ALBERTO TOMAS O BRIEN TAJES', 1176686, CAST(N'2018-04-21 13:19:02.590' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1770, N'ADRIANA LOURDES ODAZZIO CUADRA', 1863376, CAST(N'2018-04-21 13:19:02.637' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1771, N'JUAN BAUTISTA ODDONE SILVEIRA', 861377, CAST(N'2018-04-21 13:19:02.683' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1772, N'JULIA MYRIAM ODELLA FEIJO', 948748, CAST(N'2018-04-21 13:19:02.727' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1773, N'HUGO ENRIQUE ODIZZIO GRINSCHTEIN', 1313592, CAST(N'2018-04-21 13:19:02.773' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1774, N'LUIS EDUARDO ODRIOZOLA ORDEIG', 3222488, CAST(N'2018-04-21 13:19:02.817' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1775, N'MARÍA NOEL ODRIOZOLA SANDOVAL', 2999156, CAST(N'2018-04-21 13:19:02.863' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1776, N'MARCELO OEHLER MARTINEZ', 3445324, CAST(N'2018-04-21 13:19:02.907' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1777, N'GABRIEL OHANIAN HAGOPIAN', 2767681, CAST(N'2018-04-21 13:19:02.950' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1778, N'MARIA DEL ROSARIO OIZ MARQUEZ', 1434153, CAST(N'2018-04-21 13:19:02.993' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1779, N'ROSANNA ELIZABETH OJEDA AMARAL', 3731091, CAST(N'2018-04-21 13:19:03.040' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1780, N'JOSE QUINTIN OLANO LLANO', 2656935, CAST(N'2018-04-21 13:19:03.083' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1781, N'CELINA WALKIRIA OLANO RODRIGUEZ', 2525049, CAST(N'2018-04-21 13:19:03.130' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1782, N'MARIA DEL CARMEN OLASCUAGA MACEDO', 3580289, CAST(N'2018-04-21 13:19:03.177' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1783, N'PATRICIA OLDENBURG GIUFFRA', 1136900, CAST(N'2018-04-21 13:19:03.220' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1784, N'MAXIMO OLEAURRE SUAREZ', 1544447, CAST(N'2018-04-21 13:19:03.267' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1785, N'DANIEL OLESKER GERSTENFELD', 1280622, CAST(N'2018-04-21 13:19:03.310' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1786, N'JULIA ALBA OLIVER REY', 1254707, CAST(N'2018-04-21 13:19:03.357' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1787, N'HECTOR RAUL OLIVERA RANGEL', 2619973, CAST(N'2018-04-21 13:19:03.400' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1788, N'OVIDIO ERNESTO OLIVERA ZUBIAURRE', 1988034, CAST(N'2018-04-21 13:19:03.447' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1789, N'IGNACIO JOSE OLIVERA MANGANO', 3330156, CAST(N'2018-04-21 13:19:03.490' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1790, N'JOSÉ MANUEL OLIVERA ', 3258199, CAST(N'2018-04-21 13:19:03.533' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1791, N'JUAN OLIVERA MARTINEZ', 3366615, CAST(N'2018-04-21 13:19:03.580' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1792, N'JOSE ATILIO OLIVERA BALCEDO', 3930489, CAST(N'2018-04-21 13:19:03.627' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1793, N'ARMANDO OLIVERA PADRON', 3068083, CAST(N'2018-04-21 13:19:03.673' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1794, N'JOSE ADAN OLIVERA MORALES', 1857030, CAST(N'2018-04-21 13:19:03.717' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1795, N'ANA MARIA OLIVERA PESSANO', 1325310, CAST(N'2018-04-21 13:19:03.763' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1796, N'JULIO ERNESTO OLIVERA NEGRIN', 3038096, CAST(N'2018-04-21 13:19:03.807' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1797, N'IVON OLIVERA KAMAID', 2851300, CAST(N'2018-04-21 13:19:03.853' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1798, N'CARLOS OLIVET MARTINEZ', 1074449, CAST(N'2018-04-21 13:19:03.900' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1799, N'MARGARITA RAQUEL O''NEILL BENZANO', 1355167, CAST(N'2018-04-21 13:19:03.943' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1800, N'RAUL ALBERTO ONETTO GOÑI', 1851342, CAST(N'2018-04-21 13:19:03.987' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1801, N'LORELEY OPERTTI GALLO', 1524412, CAST(N'2018-04-21 13:19:04.030' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1802, N'ALFREDO VICTOR ORELLANO BELLINZONA', 3157200, CAST(N'2018-04-21 13:19:04.077' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1803, N'ADOLFO ORELLANO CANCELA', 1504181, CAST(N'2018-04-21 13:19:04.120' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1804, N'ALEJANDRO MARCELO ORELLANO CANCELA', 1712358, CAST(N'2018-04-21 13:19:04.170' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1805, N'MARIA DANIELA ORGAMBIDE CROSA', 3978801, CAST(N'2018-04-21 13:19:04.213' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1806, N'SONIA ELIZABETH ORIA GIORDAN', 1310084, CAST(N'2018-04-21 13:19:04.257' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1807, N'BLANCA ORIOZABALA CAMINATTI', 3754732, CAST(N'2018-04-21 13:19:04.300' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1808, N'PABLO OROÑO BERRIOLO', 1650054, CAST(N'2018-04-21 13:19:04.347' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1809, N'JORGE OMAR ORRICO MIRALDI', 974662, CAST(N'2018-04-21 13:19:04.390' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1810, N'YAMANDU RAMON ORSI MARTINEZ', 3496984, CAST(N'2018-04-21 13:19:04.437' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1811, N'JOSE DUHALDE ORTIZ GONZALEZ', 2601049, CAST(N'2018-04-21 13:19:04.490' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1812, N'FACUNDO ORTIZ LISTUR', 3059194, CAST(N'2018-04-21 13:19:04.533' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1813, N'EDGARDO ULISES ORTUÑO SILVA', 2872367, CAST(N'2018-04-21 13:19:04.583' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1814, N'JORGE EDUARDO ORTUZ SANCHEZ', 3621341, CAST(N'2018-04-21 13:19:04.623' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1815, N'FELIX ALEJANDRO OSINAGA PRADERE', 2621034, CAST(N'2018-04-21 13:19:04.673' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1816, N'RUBEN OSORIO BENTANCUR', 3317763, CAST(N'2018-04-21 13:19:04.720' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1817, N'JOSE GUSTAVO OSTA CALLEROS', 1777687, CAST(N'2018-04-21 13:19:04.763' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1818, N'MIGUEL JESUS OTEGUI GRIEGO', 1197820, CAST(N'2018-04-21 13:19:04.810' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1819, N'ERNESTO GABRIEL OTERO AGUERO', 1986170, CAST(N'2018-04-21 13:19:04.850' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1820, N'MARIA MAGELA OTERO ZABALETA', 1727642, CAST(N'2018-04-21 13:19:04.897' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1821, N'CARLOS ROBERTO OTERO CARBALLO', 1429090, CAST(N'2018-04-21 13:19:04.940' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1822, N'JORGE AMERICO OTTAVIANELLI GARCIA', 1768297, CAST(N'2018-04-21 13:19:04.983' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1823, N'AZUCENA MARIA OXOBY LAUREIRO', 909693, CAST(N'2018-04-21 13:19:05.027' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1824, N'HENRY OYARZABAL CARNICELLI', 3233653, CAST(N'2018-04-21 13:19:05.070' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1825, N'JAIME PACHE SOTO', 1556958, CAST(N'2018-04-21 13:19:05.117' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1826, N'LUIS PACHECO CARVE', 1915884, CAST(N'2018-04-21 13:19:05.160' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1827, N'PATRICIA MACARENA PACHECO CABRERA', 3764447, CAST(N'2018-04-21 13:19:05.207' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1828, N'MARIA NOEL PADRON INNAMORATO', 2797905, CAST(N'2018-04-21 13:19:05.250' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1829, N'LEONARDO CESAR PADRON ARAUJO', 1742709, CAST(N'2018-04-21 13:19:05.297' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1830, N'MARÍA ELSA PAIS RIVANERA', 1349619, CAST(N'2018-04-21 13:19:05.337' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1831, N'RAUL WALTER PAIS ALVAREZ', 1566472, CAST(N'2018-04-21 13:19:05.380' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1832, N'JUAN CARLOS PAIVA DE LOS SANTOS', 3109260, CAST(N'2018-04-21 13:19:05.427' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1833, N'CLAUDIA LEONOR PALACIO CORA', 3264162, CAST(N'2018-04-21 13:19:05.470' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1834, N'CARLOS ANTONIO PALERMO CARRERA', 1379031, CAST(N'2018-04-21 13:19:05.517' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1835, N'ALFREDO OSCAR GERARD PALMA GARMENDIA', 3414262, CAST(N'2018-04-21 13:19:05.560' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1836, N'CARLOS ALBERTO PALOU FIALHO', 1974391, CAST(N'2018-04-21 13:19:05.603' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1837, N'LIDIO ROSAMEL PANIAGUA GOMEZ', 3153000, CAST(N'2018-04-21 13:19:05.650' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1838, N'JORGE DANIEL PAPADOPULOS BERNARDEZ', 1311888, CAST(N'2018-04-21 13:19:05.697' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1839, N'MARTIN PAPICH IZQUIERDO', 1760275, CAST(N'2018-04-21 13:19:05.740' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1840, N'MIGUEL A. PARADEDA GUTIERREZ', 1760161, CAST(N'2018-04-21 13:19:05.787' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1841, N'NANCY PARADUJA ', 3126418, CAST(N'2018-04-21 13:19:05.830' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1842, N'ANGEL YERU PARDIÑAS SALOMON', 1783343, CAST(N'2018-04-21 13:19:05.873' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1843, N'MARIA JIMENA PARDO GAMMARANO', 3172601, CAST(N'2018-04-21 13:19:05.920' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1844, N'MARIA VIRGIANIA PARDO GONZALEZ', 1741446, CAST(N'2018-04-21 13:19:05.960' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1845, N'ROSANA NILSON PAREDES DEMEDICI', 1999883, CAST(N'2018-04-21 13:19:06.007' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1846, N'FERNANDO PASADORES CORREA', 1451824, CAST(N'2018-04-21 13:19:06.047' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1847, N'ANA CARINA PASARELLO CANEPA', 3822580, CAST(N'2018-04-21 13:19:06.093' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1848, N'JORGE HUGO PASARON ARAUJO', 1210895, CAST(N'2018-04-21 13:19:06.137' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1849, N'GRAZIANO PASCALE PASCALE', 1320504, CAST(N'2018-04-21 13:19:06.183' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1850, N'MARTIN PASCUAL REY', 1334768, CAST(N'2018-04-21 13:19:06.230' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1851, N'FATIMA PASEYRO OCAMPO', 1393175, CAST(N'2018-04-21 13:19:06.277' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1852, N'OPE PASQUET IRIBARNE', 1567880, CAST(N'2018-04-21 13:19:06.320' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1853, N'IVONNE GRAZIELLA PASSADA LEONCINI', 1215855, CAST(N'2018-04-21 13:19:06.363' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1854, N'HERMES RAUL PASTORINI FERRO', 2674300, CAST(N'2018-04-21 13:19:06.410' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1855, N'JOSE MARIA PASTORINO OTERO', 1245215, CAST(N'2018-04-21 13:19:06.457' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1856, N'LEOMAR PASTORINO SARUBBI', 1143697, CAST(N'2018-04-21 13:19:06.503' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1857, N'ADA CRISTIANA PASTRO BONFIGLIO', 1109102, CAST(N'2018-04-21 13:19:06.547' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1858, N'RAFAEL PATERNAIN RODRIGUEZ', 1952336, CAST(N'2018-04-21 13:19:06.597' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1859, N'MARIA DEL ROSARIO PATRON ARMADA', 1142979, CAST(N'2018-04-21 13:19:06.643' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1860, N'RITA BEATRIZ PATRON BETANCOR', 1068393, CAST(N'2018-04-21 13:19:06.690' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1861, N'JORGE NORMAN PATRONE CHIRELLI', 1148962, CAST(N'2018-04-21 13:19:06.737' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1862, N'ANA MARIA PAVON ZAMORA', 1424409, CAST(N'2018-04-21 13:19:06.777' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1863, N'DANIELA PAYSSE RODRIGUEZ', 1072256, CAST(N'2018-04-21 13:19:06.823' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1864, N'DANIEL NELSON PAZOS BALDOVINO', 2804722, CAST(N'2018-04-21 13:19:06.867' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1865, N'RODOLFO CARLOS PEDOCCHI FALCO', 1202599, CAST(N'2018-04-21 13:19:06.913' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1866, N'MARIA VERONICA PEDRANA MUROLA', 1430661, CAST(N'2018-04-21 13:19:06.957' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1867, N'ROBERTO GUZMAN PEDREIRA ALJAS AISSI', 3247483, CAST(N'2018-04-21 13:19:07.000' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1868, N'ANGEL ROQUE PEDREIRA HORNOS', 1838418, CAST(N'2018-04-21 13:19:07.047' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1869, N'ALEJANDRA PEDULLA RODRIGUEZ', 1538133, CAST(N'2018-04-21 13:19:07.090' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1870, N'SILVANA PEDULLA BELLOMUSTO', 1348599, CAST(N'2018-04-21 13:19:07.133' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1871, N'GERARDO GASTON PEDUZZI DUHAU', 3811669, CAST(N'2018-04-21 13:19:07.180' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1872, N'RICARDO PEGORRARO CORREA', 3672144, CAST(N'2018-04-21 13:19:07.223' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1873, N'FRANCISCO PEJO BARROS', 3399121, CAST(N'2018-04-21 13:19:07.267' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1874, N'LETICIA TERESITA PELAEZ PELAEZ', 4073628, CAST(N'2018-04-21 13:19:07.313' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1875, N'ANA PENA SANCHEZ', 1084649, CAST(N'2018-04-21 13:19:07.357' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1876, N'JOSE JAVIER PENA VENTURIELLO', 1557931, CAST(N'2018-04-21 13:19:07.400' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1877, N'GUSTAVO PENADES ETCHEBARNE', 1895367, CAST(N'2018-04-21 13:19:07.447' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1878, N'DANIEL ADRIAN PEÑA FERNADEZ', 1840923, CAST(N'2018-04-21 13:19:07.493' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1879, N'JAIME PEÑA LATORRE', 3346260, CAST(N'2018-04-21 13:19:07.540' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1880, N'RAFAEL PEÑA HERNANDEZ', 1689542, CAST(N'2018-04-21 13:19:07.587' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1881, N'MARIA ADRIANA PEÑA HERNANDEZ', 2607988, CAST(N'2018-04-21 13:19:07.633' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1882, N'ANGEL NORBERTO PEÑALOZA BIDEAU', 1850375, CAST(N'2018-04-21 13:19:07.680' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1883, N'LORELEY BEATRÍZ PERA RODRIGUEZ', 1278159, CAST(N'2018-04-21 13:19:07.727' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1884, N'MONICA BEATRIZ PERALTA SUAREZ', 2852563, CAST(N'2018-04-21 13:19:07.770' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1885, N'PATRICIA IRENE PERANDONES MARIANI', 1852346, CAST(N'2018-04-21 13:19:07.813' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1886, N'GUSTAVO PERAZA FERNANDEZ', 4031852, CAST(N'2018-04-21 13:19:07.860' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1887, N'GRACIELA PERAZA FURLAN', 3970384, CAST(N'2018-04-21 13:19:07.900' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1888, N'RAMON EDUARDO PERAZZA BORGES', 2689096, CAST(N'2018-04-21 13:19:07.947' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1889, N'JORGE EMILIO PERAZZO PUPPO', 847867, CAST(N'2018-04-21 13:19:07.990' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1890, N'RICARDO PERCIBALLE LOPEZ', 1555250, CAST(N'2018-04-21 13:19:08.037' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1891, N'ALBERTO JAVIER PERDOMO GAMARRA', 3487518, CAST(N'2018-04-21 13:19:08.080' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1892, N'FEDERICO GERMAN PERDOMO ', 2526804, CAST(N'2018-04-21 13:19:08.123' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1893, N'MARÍA DE LOS ANGELES PEREDA CASTRO', 1880031, CAST(N'2018-04-21 13:19:08.170' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1894, N'NESTOR ORFILIO PEREIRA  CASTILLO', 2634806, CAST(N'2018-04-21 13:19:08.213' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1895, N'FERNANDO MARTIN PEREIRA RIVERO', 4299818, CAST(N'2018-04-21 13:19:08.260' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1896, N'ALEJANDRA YACQUELIN PEREIRA GUILLEN', 3771145, CAST(N'2018-04-21 13:19:08.303' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1897, N'JOSÉ LUIS PEREIRA FIGUEROA', 2956676, CAST(N'2018-04-21 13:19:08.347' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1898, N'CARLOS DANIEL PEREIRA DE SOUZA', 1931310, CAST(N'2018-04-21 13:19:08.390' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1899, N'MÓNICA --- PEREIRA ANDRADE', 2672675, CAST(N'2018-04-21 13:19:08.437' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1900, N'JESUS MARIA PEREIRA SUCUNZA', 869785, CAST(N'2018-04-21 13:19:08.477' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1901, N'BEATRIZ ELIZABETH PEREIRA LOPEZ', 1051456, CAST(N'2018-04-21 13:19:08.527' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1902, N'AMILCAR PEREIRA CASTRO GOMEZ', 2551026, CAST(N'2018-04-21 13:19:08.570' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1903, N'SUSANA YUDITH PEREYRA PIÑEYRO', 1434352, CAST(N'2018-04-21 13:19:08.617' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1904, N'HECTOR ANIBAL PEREYRA HUELMO', 3099138, CAST(N'2018-04-21 13:19:08.663' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1905, N'EDUARDO FABIAN PEREYRA ', 2023739, CAST(N'2018-04-21 13:19:08.710' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1906, N'SERGIO ARNALDO PEREYRA SILVEIRA', 4217910, CAST(N'2018-04-21 13:19:08.753' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1907, N'MABEL PEREYRA SANTOS', 1292539, CAST(N'2018-04-21 13:19:08.797' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1908, N'GRACIELA INES PEREYRA SANDER', 3501456, CAST(N'2018-04-21 13:19:08.847' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1909, N'BEATRÍZ CARMEN PEREZ ABALO', 1782445, CAST(N'2018-04-21 13:19:08.900' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1910, N'SANTIAGO CESAR PEREZ IRURETA', 2549577, CAST(N'2018-04-21 13:19:08.957' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1911, N'ESTEBAN ANDRES PEREZ BILINSKI', 1241385, CAST(N'2018-04-21 13:19:09.017' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1912, N'PABLO NEKLINDOR PEREZ GONZALEZ', 2653186, CAST(N'2018-04-21 13:19:09.063' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1913, N'ROMAN DARIO PEREZ BRITO', 3814188, CAST(N'2018-04-21 13:19:09.113' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1914, N'EMILIO ROQUE PEREZ IRRAZABAL', 3178163, CAST(N'2018-04-21 13:19:09.157' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1915, N'FERNANDO PEREZ ABELLA', 1212306, CAST(N'2018-04-21 13:19:09.203' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1916, N'JOSE EDGARDO PEREZ CALVO', 3269524, CAST(N'2018-04-21 13:19:09.250' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1917, N'DANIEL PEREZ RUFFINI', 3413200, CAST(N'2018-04-21 13:19:09.297' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1918, N'SERGIO ALBERTO PEREZ LAURO', 1193526, CAST(N'2018-04-21 13:19:09.340' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1919, N'ROBERTO LUIS PEREZ NOCETTI', 3388110, CAST(N'2018-04-21 13:19:09.383' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1920, N'SCHUBERT JAVIER PEREZ MARTINEZ', 1739385, CAST(N'2018-04-21 13:19:09.430' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1921, N'HECTOR JESUS PEREZ CORREA', 3148140, CAST(N'2018-04-21 13:19:09.477' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1922, N'CARLOS PEREZ DÁURIA', 3153204, CAST(N'2018-04-21 13:19:09.520' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1923, N'RPBERTO DANIEL PEREZ BALBUENA', 3371791, CAST(N'2018-04-21 13:19:09.563' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1924, N'DARDO PEREZ DA SILVA', 3814456, CAST(N'2018-04-21 13:19:09.613' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1925, N'CONO PEREZ ALVAREZ', 3119961, CAST(N'2018-04-21 13:19:09.663' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1926, N'MARCOS PEREZ MACHADO', 4242030, CAST(N'2018-04-21 13:19:09.710' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1927, N'MARIA SILVIA PEREZ ALVAREZ', 1348348, CAST(N'2018-04-21 13:19:09.753' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1928, N'DIEGO PEREZ ECHAVARRIA', 3686761, CAST(N'2018-04-21 13:19:09.800' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1929, N'MARIA FERNANDA PEREZ PASTORINI', 3669245, CAST(N'2018-04-21 13:19:09.847' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1930, N'MARCELO CLAUDIO PEREZ GONZALEZ', 2742495, CAST(N'2018-04-21 13:19:09.890' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1931, N'HEBERT JULIO PEREZ CABRERA', 1626253, CAST(N'2018-04-21 13:19:09.937' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1932, N'EDISON MAURICIO PEREZ ALVAREZ', 2633827, CAST(N'2018-04-21 13:19:09.980' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1933, N'ANABELLA MYRIAM PEREZ INTOINI', 1871474, CAST(N'2018-04-21 13:19:10.023' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1934, N'ESTRELLA RAQUEL PEREZ AZZIZ', 1137489, CAST(N'2018-04-21 13:19:10.067' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1935, N'GRACIELA MARIA PEREZ IRAZOQUI', 1608187, CAST(N'2018-04-21 13:19:10.110' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1936, N'ADOLFO LUIS PEREZ PIERA', 608338, CAST(N'2018-04-21 13:19:10.160' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1937, N'WILFREDO PEREZ PENCO', 1172770, CAST(N'2018-04-21 13:19:10.203' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1938, N'JOHN PEREZ BRIGNANI', 1446921, CAST(N'2018-04-21 13:19:10.247' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1939, N'RICARDO CESAR PEREZ MANRIQUE', 1123316, CAST(N'2018-04-21 13:19:10.293' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1940, N'GUMER PEREZ FIGUEROA', 1727741, CAST(N'2018-04-21 13:19:10.340' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1941, N'SILVIA PEREZ ', 3146301, CAST(N'2018-04-21 13:19:10.380' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1942, N'MARIO HUMBERTO PERRACHON GONNET', 3760549, CAST(N'2018-04-21 13:19:10.427' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1943, N'ALEJANDRO RAUL PERRONI GONZALEZ', 3256551, CAST(N'2018-04-21 13:19:10.470' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1944, N'ATAHUALPA PERTUSATTI BEPPO', 3490883, CAST(N'2018-04-21 13:19:10.517' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1945, N'JUAN JOSE PERTUSSO BORSANI', 3245050, CAST(N'2018-04-21 13:19:10.560' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1946, N'WLATER ELBIO PESQUEIRA REY', 611945, CAST(N'2018-04-21 13:19:10.610' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1947, N'SERGIO ROMÁN PESSOLANO OYARVIDE', 2993031, CAST(N'2018-04-21 13:19:10.657' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1948, N'NELSON ADEMAR PETRE PEREZ', 3149406, CAST(N'2018-04-21 13:19:10.700' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1949, N'ALICIA MARILEN PETROCELLI CABRERA', 3907366, CAST(N'2018-04-21 13:19:10.743' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1950, N'RICARDO ALBERTO PETRONE PARETO', 1017232, CAST(N'2018-04-21 13:19:10.787' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1951, N' JOSE PEDRO PEZZATTI PIAGGIO', 3078930, CAST(N'2018-04-21 13:19:10.833' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1952, N'SERGIO PI LEON', 1991028, CAST(N'2018-04-21 13:19:10.877' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1953, N'SONIA GLADYS PIAGGIO PARADA', 1022228, CAST(N'2018-04-21 13:19:10.920' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1954, N'ELIAS MOISES PIATNIZA ALTMAN', 682363, CAST(N'2018-04-21 13:19:10.960' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1955, N'JOAQUIN PICARDO MONTANER', 3715268, CAST(N'2018-04-21 13:19:11.007' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1956, N'SONJA EDEN PICART MARTINEZ', 3413188, CAST(N'2018-04-21 13:19:11.050' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1957, N'JULIO CESAR PICCA BUSCHIAZZO', 3837028, CAST(N'2018-04-21 13:19:11.093' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1958, N'SUSANA RAQUEL PICCINI LARROSA', 1653623, CAST(N'2018-04-21 13:19:11.140' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1959, N'RODOLFO WASHINGTON PICCINI DA SILVA', 1403488, CAST(N'2018-04-21 13:19:11.187' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1960, N'ALFREDO PICERNO PONGIBOVE', 1454016, CAST(N'2018-04-21 13:19:11.233' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1961, N'AURORA PIGNATARO LIVIA', 1388139, CAST(N'2018-04-21 13:19:11.277' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1962, N'MARIA NOEL PINASCO VETEY', 1452233, CAST(N'2018-04-21 13:19:11.320' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1963, N'DUILIO OMAR PINAZO QUINTANAQ', 3274001, CAST(N'2018-04-21 13:19:11.363' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1964, N'TELVIO PINHEIRO LIMA', 3454292, CAST(N'2018-04-21 13:19:11.410' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1965, N'JOSE ANTONIO PINI MARTINEZ', 743371, CAST(N'2018-04-21 13:19:11.453' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1966, N'GUSTAVO AMERICO PINI MITRE', 1574196, CAST(N'2018-04-21 13:19:11.497' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1967, N'ENRIQUE MANUEL PINTADO ', 1593333, CAST(N'2018-04-21 13:19:11.540' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1968, N'LIBERTAD PINTOS DAGUERRE', 2842864, CAST(N'2018-04-21 13:19:11.587' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1969, N'ROBERT ATHENAS PINTOS SILVA', 3637878, CAST(N'2018-04-21 13:19:11.633' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1970, N'DIEGO ENRIQUE PIÑEIRO PAGLIERE', 2005813, CAST(N'2018-04-21 13:19:11.680' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1971, N'CLAUDIO PIÑEYRO RODALES', 3819952, CAST(N'2018-04-21 13:19:11.727' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1972, N'LUIS MARIA PIÑEYRO GUTIERREZ', 1074265, CAST(N'2018-04-21 13:19:11.770' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1973, N'ANA LIA PIÑEYRUA OLMOS', 1289353, CAST(N'2018-04-21 13:19:11.813' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1974, N'ALFREDO LORENZO PIRIA FRANCHI', 1236994, CAST(N'2018-04-21 13:19:11.860' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1975, N'MARIA MIRTHA SABINA PIRIZ CAZULO', 1479473, CAST(N'2018-04-21 13:19:11.900' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1976, N'DUGLAS ENRIQUE PIRIZ JAUREGUIZAR', 1586736, CAST(N'2018-04-21 13:19:11.947' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1977, N'ARIEL ALFREDO PISANO RONDEAU', 2645019, CAST(N'2018-04-21 13:19:11.990' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1978, N'ERNESTO MARTIN PITETA ', 3345587, CAST(N'2018-04-21 13:19:12.033' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1979, N'NELLY PITTERLY GOMEZ', 1004410, CAST(N'2018-04-21 13:19:12.077' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1980, N'DANIEL PLACERES ', 1846414, CAST(N'2018-04-21 13:19:12.123' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1981, N'HÉCTOR ALBÉRICO PLADA SÁNCHEZ', 2655917, CAST(N'2018-04-21 13:19:12.170' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1982, N'RICARDO MARIO PLANCHON GEYMONAT', 3113118, CAST(N'2018-04-21 13:19:12.213' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1983, N'EMILIO ENRIQUE PLANCHON PONTET', 3983559, CAST(N'2018-04-21 13:19:12.260' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1984, N'LUIS POLAKOF GOLDSCHMIDT', 2622980, CAST(N'2018-04-21 13:19:12.300' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1985, N'JORGE ANDRES POLGAR PISANO', 1852528, CAST(N'2018-04-21 13:19:12.347' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1986, N'JOSE PEDRO POLLAK VARELA', 1118168, CAST(N'2018-04-21 13:19:12.387' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1987, N'HECTOR FEDERICO POLLINI SORONDO', 3486279, CAST(N'2018-04-21 13:19:12.433' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1988, N'CARLOS ALBERTO POMBO OGLIARUSSO', 1201587, CAST(N'2018-04-21 13:19:12.480' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1989, N'IGNACIO PONCE DE LEON ARCOS', 1311338, CAST(N'2018-04-21 13:19:12.523' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1990, N'DANIEL PONCE DE LEON CARRAU', 1003191, CAST(N'2018-04-21 13:19:12.567' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1991, N'RICARDO PONTI OTERO', 1237020, CAST(N'2018-04-21 13:19:12.613' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1992, N'FERNANDO PORCILE ANDINA', 3732582, CAST(N'2018-04-21 13:19:12.660' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1993, N'MIGUEL ANGEL PORRO MARTINEZ', 3194460, CAST(N'2018-04-21 13:19:12.707' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1994, N'ANA MARÍA PORTAS BARREIRO', 1242143, CAST(N'2018-04-21 13:19:12.750' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1995, N'ARIOSTO PORTE DE SOUZA', 2583622, CAST(N'2018-04-21 13:19:12.793' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1996, N'SILVIA PORTEIRO BELLO', 1714635, CAST(N'2018-04-21 13:19:12.840' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1997, N'MARIO PORTILLO PEREZ', 2501084, CAST(N'2018-04-21 13:19:12.880' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1998, N'DANIELA PORTO LARA', 2977261, CAST(N'2018-04-21 13:19:12.927' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (1999, N'JOSE PEDRO PORTO MIRANDA', 1654510, CAST(N'2018-04-21 13:19:12.970' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2000, N'MARIA  DEL LOURDES PORTO MENDEZ', 3323394, CAST(N'2018-04-21 13:19:13.013' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2001, N'LUIS ALBERTO PORTO RIZZO', 1585502, CAST(N'2018-04-21 13:19:13.060' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2002, N'IVAN ADAN POSADA PAGLIOTTI', 2871019, CAST(N'2018-04-21 13:19:13.103' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2003, N'JULIO ALFREDO POSADA XAVIER', 2589210, CAST(N'2018-04-21 13:19:13.160' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2004, N'HUGO MARIO POSE STRADA', 1538977, CAST(N'2018-04-21 13:19:13.203' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2005, N'CARLOS EDUARDO POSE ACUÑA', 1920192, CAST(N'2018-04-21 13:19:13.247' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2006, N'JUIO ALBERTO POSE PIRO', 2526915, CAST(N'2018-04-21 13:19:13.290' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2007, N'ROSSANA CORINA POSE MIGUEZ', 1919888, CAST(N'2018-04-21 13:19:13.337' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2008, N'LUIS ALBERTO POSSE MENDEZ', 1596132, CAST(N'2018-04-21 13:19:13.383' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2009, N'JORGE ALVARO POZZI CIARAN', 1430205, CAST(N'2018-04-21 13:19:13.427' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2010, N'JUAN JOSE PRADA NICOLLETTI', 1910344, CAST(N'2018-04-21 13:19:13.473' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2011, N'JUAN MANUEL PRADA VIGLIONE', 1707436, CAST(N'2018-04-21 13:19:13.517' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2012, N'RAUL CARLOS PRADERI GONZALEZ', 495754, CAST(N'2018-04-21 13:19:13.560' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2013, N'RICARDO PRATO ', 1005605, CAST(N'2018-04-21 13:19:13.607' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2014, N'JAVIER LUIS PRECIOZZI SPARANO', 1893683, CAST(N'2018-04-21 13:19:13.653' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2015, N'SANDRA IGNACIA PRESA BAYCE', 3573639, CAST(N'2018-04-21 13:19:13.700' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2016, N'DARDO HAMLET PREZA RESTUCCIA', 1009805, CAST(N'2018-04-21 13:19:13.747' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2017, N'ISABEL ANABELA PRIETO ZARZA', 3843525, CAST(N'2018-04-21 13:19:13.793' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2018, N'RUBEN PRIETO ', 1078745, CAST(N'2018-04-21 13:19:13.840' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2019, N'LAURA PRIETO ', 1709144, CAST(N'2018-04-21 13:19:13.883' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2020, N'HORACIO ALABERTO PRIETO ', 3214345, CAST(N'2018-04-21 13:19:13.930' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2021, N'EMILIO ALBO PRIETO AMARAL', 3903189, CAST(N'2018-04-21 13:19:13.973' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2022, N'LENADRO PRIGRIONI SUAREZ', 3560962, CAST(N'2018-04-21 13:19:14.017' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2023, N'RENEE LOURDES PRIMICERI PORTELA', 1439771, CAST(N'2018-04-21 13:19:14.067' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2024, N'ALVARO PUERTO DELGADO', 4145826, CAST(N'2018-04-21 13:19:14.110' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2025, N'SUSANA MARTHA PUGA MARIÑO', 1729415, CAST(N'2018-04-21 13:19:14.157' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2026, N'LUIS WILFREDO PUIG CARDOZO', 1392730, CAST(N'2018-04-21 13:19:14.200' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2027, N'MAGDA PUIG INZAURRALDE', 1563910, CAST(N'2018-04-21 13:19:14.247' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2028, N'STELLA YEANNETH PUÑALES BRUN', 3139026, CAST(N'2018-04-21 13:19:14.290' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2029, N'BRENDA PUPPO GREZZI', 1849851, CAST(N'2018-04-21 13:19:14.337' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2030, N'WILLE ARIEL PURTSCHER ROMANO', 1287812, CAST(N'2018-04-21 13:19:14.380' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2031, N'MARCELA PUYOL DI SANTO', 3831067, CAST(N'2018-04-21 13:19:14.423' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2032, N'PEDRO SIMON QUEHELLE ZACCHINO', 1037566, CAST(N'2018-04-21 13:19:14.470' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2033, N'MIRTA QUEIJEIRO PAULOS', 1544864, CAST(N'2018-04-21 13:19:14.517' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2034, N'ALBERTO GERMAN QUEIJO NOUGUE', 1115459, CAST(N'2018-04-21 13:19:14.563' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2035, N'RICARDO ALMET QUEIROS ELIZALDE', 2829938, CAST(N'2018-04-21 13:19:14.613' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2036, N'ANA MARIA QUEVEDO MOROSINI', 2551490, CAST(N'2018-04-21 13:19:14.660' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2037, N'CLAUDIO  REYNALDO QUINTANA TECHERA', 3090106, CAST(N'2018-04-21 13:19:14.703' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2038, N'OSCAR FERNANDO QUINTANA CONIL', 3784108, CAST(N'2018-04-21 13:19:14.750' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2039, N'VIRGINIA QUINTEIRO MARTINEZ', 1197513, CAST(N'2018-04-21 13:19:14.793' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2040, N'PABLO GERMAN QUINTERO AREAL', 1007219, CAST(N'2018-04-21 13:19:14.837' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2041, N'MIGUEL ANGEL RABOSTO QUEVEDO', 1374277, CAST(N'2018-04-21 13:19:14.880' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2042, N'MA. DEL LOUREDES RABUÑAL CHINAZZO', 1571292, CAST(N'2018-04-21 13:19:14.927' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2043, N'FRANCISCO JAVIER RADICCIONI CURBELO', 4246586, CAST(N'2018-04-21 13:19:14.970' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2044, N'DANIEL ALEXIS RADIO PRESTA', 1593572, CAST(N'2018-04-21 13:19:15.013' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2045, N'DANIEL RAFANIELLO MARTINEZ', 1206777, CAST(N'2018-04-21 13:19:15.060' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2046, N'LUIS EDUARDO RAFFO RUSCH', 3576669, CAST(N'2018-04-21 13:19:15.107' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2047, N'DANIEL RAFULS FABREGAS', 995258, CAST(N'2018-04-21 13:19:15.160' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2048, N'WALKYRIA BEATRIZ RAGGIO FACCIOLI', 1178345, CAST(N'2018-04-21 13:19:15.207' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2049, N'ALVARO JAVIER RAMAGLI ODDERA', 2512001, CAST(N'2018-04-21 13:19:15.250' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2050, N'HECTOR SAUL RAMELLA BARROS', 1364272, CAST(N'2018-04-21 13:19:15.297' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2051, N'RAQUEL RAMILLO DELFINO', 1442855, CAST(N'2018-04-21 13:19:15.340' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2052, N'ANDRES ELIAS RAMIREZ MAISONABA', 3543294, CAST(N'2018-04-21 13:19:15.383' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2053, N'ANGELICA BETRIZ RAMIREZ ABELLA', 1452772, CAST(N'2018-04-21 13:19:15.433' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2054, N'SILVIA RAMON MINIKES', 1200544, CAST(N'2018-04-21 13:19:15.477' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2055, N'ANSELMO JUAN RAMOS RAZQUIN', 877968, CAST(N'2018-04-21 13:19:15.527' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2056, N'OTILIA RAMOS PICART', 1210324, CAST(N'2018-04-21 13:19:15.570' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2057, N'HENRY J. RAMOS ', 2826048, CAST(N'2018-04-21 13:19:15.617' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2058, N'DANIELA RAMOS NICOLINI', 2668045, CAST(N'2018-04-21 13:19:15.667' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2059, N'ANGEL SERGIO RAMOS FERNANDEZ', 1849677, CAST(N'2018-04-21 13:19:15.713' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2060, N'ULISES RAMOS TABAREZ', 1478901, CAST(N'2018-04-21 13:19:15.760' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2061, N'CONRADO RICARDO RAMOS LARRABURU', 1230677, CAST(N'2018-04-21 13:19:15.803' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2062, N'GREGORY JASON RANDALL ', 4560598, CAST(N'2018-04-21 13:19:15.850' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2063, N'ANDRES RAPETTI TIZZE', 3001381, CAST(N'2018-04-21 13:19:15.900' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2064, N'TERESITA GLADYS RAVERA RUGGIERO', 1482212, CAST(N'2018-04-21 13:19:15.943' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2065, N'ROSSANA --- RE FRASCHINI BENITEZ', 2704460, CAST(N'2018-04-21 13:19:15.987' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2066, N'JENNY READ FUENTES', 1568941, CAST(N'2018-04-21 13:19:16.030' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2067, N'JULIO ENRIQUE REAL NUÑEZ', 1224761, CAST(N'2018-04-21 13:19:16.077' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2068, N'MARIELA REBELLATO GANDINI', 3568757, CAST(N'2018-04-21 13:19:16.120' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2069, N'JAVIER REBELLATO MARTINEZ', 1501392, CAST(N'2018-04-21 13:19:16.170' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2070, N'GONZALO JAVIER REBOLEDO LEBRATO', 2576789, CAST(N'2018-04-21 13:19:16.213' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2071, N'MACARENA REBOLLO SANTA CRUZ', 2614840, CAST(N'2018-04-21 13:19:16.260' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2072, N'ALEJANDRO RECAREY MASTRANGELO', 1750409, CAST(N'2018-04-21 13:19:16.303' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2073, N'MILTON REDIN ', 3015803, CAST(N'2018-04-21 13:19:16.347' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2074, N'GUALBERTO REGGIO BRAIDA', 1356908, CAST(N'2018-04-21 13:19:16.390' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2075, N'HECTOR REHERMANN ABELLA', 1290884, CAST(N'2018-04-21 13:19:16.437' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2076, N'NIBIA ANDREA REISCH VILA', 3303129, CAST(N'2018-04-21 13:19:16.480' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2077, N'ANA ELIZABETH RELOBA PEREIRA', 3292271, CAST(N'2018-04-21 13:19:16.527' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2078, N'JULIO REOLON DE FERRARI', 1656897, CAST(N'2018-04-21 13:19:16.570' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2079, N'BLANCA ELENA REPETTO VEIGA', 2846241, CAST(N'2018-04-21 13:19:16.617' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2080, N'JORGE ARTURO REPETTO MOREIRA', 2558774, CAST(N'2018-04-21 13:19:16.670' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2081, N'ALEJANDRO DANIEL REPETTO VIGNOLA', 2800981, CAST(N'2018-04-21 13:19:16.713' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2082, N'LUIS MARIA REPISO IBAÑEZ', 1200732, CAST(N'2018-04-21 13:19:16.760' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2083, N'GERARDO PEDRO REY GALLARETA', 1911965, CAST(N'2018-04-21 13:19:16.803' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2084, N'JUAN ANDRES REY LACO', 3881025, CAST(N'2018-04-21 13:19:16.850' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2085, N'CARLOS NICOLAS REY ASANDRI', 2792403, CAST(N'2018-04-21 13:19:16.893' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2086, N'GRACIELA REY FERRO', 1079294, CAST(N'2018-04-21 13:19:16.940' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2087, N'ANA MABEL REY GONZALEZ', 1506520, CAST(N'2018-04-21 13:19:16.987' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2088, N'LARRY REYES MELO', 2621798, CAST(N'2018-04-21 13:19:17.030' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2089, N'FRANCISCO REYES ', 3586865, CAST(N'2018-04-21 13:19:17.077' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2090, N'CARLOS REYES RODRIGUEZ', 3671715, CAST(N'2018-04-21 13:19:17.117' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2091, N'ALFREDO REYES BACCARO', 1350219, CAST(N'2018-04-21 13:19:17.167' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2092, N'MARGARITA ROSA REYES GALVAN', 1289667, CAST(N'2018-04-21 13:19:17.210' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2093, N'ALBERTO DOMINGO REYES OEHNINGER', 1655652, CAST(N'2018-04-21 13:19:17.253' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2094, N'CAROLINA REYES HORNES', 3721023, CAST(N'2018-04-21 13:19:17.293' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2095, N'ARIEL ELBIO REYES RODRIGUEZ', 3705035, CAST(N'2018-04-21 13:19:17.340' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2096, N'JORGE ROBERTO REYNA TEXEIRA', 3375214, CAST(N'2018-04-21 13:19:17.383' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2097, N'ESTELA INES REYNO PRADO', 1377424, CAST(N'2018-04-21 13:19:17.427' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2098, N'GUSTAVO MARIA REZZANO RUCKERT', 3539889, CAST(N'2018-04-21 13:19:17.470' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2099, N'RODOLFO RIANI ARIETA', 3919999, CAST(N'2018-04-21 13:19:17.517' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2100, N'MARÍA TERESA RIBAS REBOLLO', 1295556, CAST(N'2018-04-21 13:19:17.560' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2101, N'WASHINGTON RAUL RIBEIRO TORRADO', 2023138, CAST(N'2018-04-21 13:19:17.607' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2102, N'ROBERTO RIBEIRO ', 4004220, CAST(N'2018-04-21 13:19:17.660' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2103, N'SIDNEY RIBEIRO BITANCOURT', 1235011, CAST(N'2018-04-21 13:19:17.703' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2104, N'ADRIANA RICCARDI MICHELINI', 1967800, CAST(N'2018-04-21 13:19:17.750' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2105, N'MARTHA YANET RICHARD RATIN', 3407651, CAST(N'2018-04-21 13:19:17.797' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2106, N'ALVARO LUIS RICHINO DUTRA', 1644069, CAST(N'2018-04-21 13:19:17.840' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2107, N'SANTIAGO LUIS RICO RUIZ', 3062241, CAST(N'2018-04-21 13:19:17.880' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2108, N'ANDRES RIDAO GONZALEZ', 817758, CAST(N'2018-04-21 13:19:17.927' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2109, N'BLANCA ISABEL RIEIRO FERNANDEZ', 2025165, CAST(N'2018-04-21 13:19:17.970' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2110, N'JULIO RIELLA BERAD', 1308673, CAST(N'2018-04-21 13:19:18.010' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2111, N'JOSE DOMINGO RIELLI SAN MARTIN', 3162952, CAST(N'2018-04-21 13:19:18.060' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2112, N'ANAI RIERA GALEANO', 1121358, CAST(N'2018-04-21 13:19:18.103' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2113, N'WALTER RIESGO LARRAZ', 1175527, CAST(N'2018-04-21 13:19:18.143' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2114, N'FELIX RAMON RIESTRA GIMENEZ', 1932027, CAST(N'2018-04-21 13:19:18.193' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2115, N'FERNANDO GONZALO RIET VILLAMIL', 1104605, CAST(N'2018-04-21 13:19:18.233' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2116, N'GERMAN JORGE RIET BUSTAMANTE', 1136832, CAST(N'2018-04-21 13:19:18.280' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2117, N'LUCILA ALEJANDRA RINALDI FOSALBA', 1247049, CAST(N'2018-04-21 13:19:18.320' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2118, N'GILBERTO RIOS FERREIRA', 2718617, CAST(N'2018-04-21 13:19:18.363' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2119, N'DANILO RIOS PIGNATTA', 2966028, CAST(N'2018-04-21 13:19:18.407' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2120, N'EMA BEATRIZ RIOS INGOLD', 2605951, CAST(N'2018-04-21 13:19:18.450' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2121, N'JUAN RIPOLL SUAREZ', 1250909, CAST(N'2018-04-21 13:19:18.497' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2122, N'NESTOR GUSTAVO RISSO SINGLAN', 4331194, CAST(N'2018-04-21 13:19:18.540' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2123, N'ALVARO RIVA REY', 3002294, CAST(N'2018-04-21 13:19:18.587' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2124, N'MARIA JOSE RIVA PASTORINO', 4502289, CAST(N'2018-04-21 13:19:18.630' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2125, N'PABLO ALEJANDRO RIVAS VIGNOLO', 1723725, CAST(N'2018-04-21 13:19:18.680' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2126, N'MARIA STELLA RIVAS ABASCAL', 3384456, CAST(N'2018-04-21 13:19:18.727' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2127, N'ANA GABRIELA RIVAS GOYCOECHEA', 3701128, CAST(N'2018-04-21 13:19:18.773' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2128, N'JAVIER ALONSO RIVEIRO ROUTIN', 2716817, CAST(N'2018-04-21 13:19:18.817' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2129, N'JUAN CARLOS RIVERO MARTIN', 1813271, CAST(N'2018-04-21 13:19:18.860' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2130, N'ALBERTO SAUL RIVERO SOSA', 3353729, CAST(N'2018-04-21 13:19:18.903' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2131, N'CRISTINA ROSARIO RIVERO MORES', 1856600, CAST(N'2018-04-21 13:19:18.950' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2132, N'HOMERO ANIBAL RIVERO PATRON', 1608297, CAST(N'2018-04-21 13:19:18.993' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2133, N'LUIS EDUARDO RIVERO VIÑAS', 1649344, CAST(N'2018-04-21 13:19:19.037' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2134, N'DORA LYLIAN ROBAINA CAMPO', 1801388, CAST(N'2018-04-21 13:19:19.080' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2135, N'RICARDO MARIA ROBAINA PIEGAS', 1378773, CAST(N'2018-04-21 13:19:19.123' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2136, N'JUAN ANDRES ROBALLO ALBERO', 1978702, CAST(N'2018-04-21 13:19:19.170' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2137, N'GABRIELA ROBERTI COLOMBO', 1682237, CAST(N'2018-04-21 13:19:19.213' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2138, N'HUMBERTO ROCA ANIDO', 1127677, CAST(N'2018-04-21 13:19:19.260' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2139, N'RICARDO ADOLFO ROCA ROFFO', 970816, CAST(N'2018-04-21 13:19:19.307' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2140, N'AMERICO ROCCO BARRENECHE', 969419, CAST(N'2018-04-21 13:19:19.350' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2141, N'ADRIANA FATIMA ROCHA BALDI', 2722778, CAST(N'2018-04-21 13:19:19.397' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2142, N'LILIÁN CRISTINA RODRIGUEZ ROMERO', 2922893, CAST(N'2018-04-21 13:19:19.440' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2143, N'NELSON VLADIMIR RODRIGUEZ SERVETTO', 2793338, CAST(N'2018-04-21 13:19:19.483' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2144, N'EDGARDO RODRIGUEZ ALVEZ', 3285256, CAST(N'2018-04-21 13:19:19.530' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2145, N'ELINA SYLVIA RODRIGUEZ BRIZUELA', 1211984, CAST(N'2018-04-21 13:19:19.573' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2146, N'GONZALO RODRIGUEZ OROZCO', 548199, CAST(N'2018-04-21 13:19:19.620' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2147, N'GUSTAVO RODRIGUEZ BENTANCOR', 1385924, CAST(N'2018-04-21 13:19:19.667' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2148, N'DARDO EDUARDO RODRIGUEZ CUSTODIO', 3493847, CAST(N'2018-04-21 13:19:19.713' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2149, N'ADRIANA RODRIGUEZ CABRERA', 3661483, CAST(N'2018-04-21 13:19:19.757' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2150, N'JOSE GUSTAVO RODRIGUEZ PIMENTEL', 2717833, CAST(N'2018-04-21 13:19:19.803' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2151, N'ARACELY RODRIGUEZ NIEVES', 2636768, CAST(N'2018-04-21 13:19:19.847' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2152, N'CARLOS RAMON RODRIGUEZ MATO', 2896908, CAST(N'2018-04-21 13:19:19.893' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2153, N'JUAN MANUEL RODRIGUEZ BAS', 1091598, CAST(N'2018-04-21 13:19:19.937' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2154, N'JAVIER RUBI RODRIGUEZ MARENCO', 1898201, CAST(N'2018-04-21 13:19:19.983' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2155, N'NORA BEATRIZ RODRIGUEZ CORRALEJO', 3126320, CAST(N'2018-04-21 13:19:20.027' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2156, N'MATIAS RODRIGUEZ IGLESIAS', 3130518, CAST(N'2018-04-21 13:19:20.073' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2157, N'ELBER FABIAN RODRIGUEZ RAMIREZ', 2714052, CAST(N'2018-04-21 13:19:20.117' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2158, N'DARDO JAVIER RODRIGUEZ REALAN', 2735995, CAST(N'2018-04-21 13:19:20.163' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2159, N'DANIEL ENRIQUE RODRIGUEZ PAEZ', 2786937, CAST(N'2018-04-21 13:19:20.210' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2160, N'ROBERTO RODRIGUEZ LAULHE', 3012573, CAST(N'2018-04-21 13:19:20.253' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2161, N'ANIBAL RODRIGUEZ SCHIAVO', 3144313, CAST(N'2018-04-21 13:19:20.300' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2162, N'JULIO CESAR RODRIGUEZ RAMOS', 3228346, CAST(N'2018-04-21 13:19:20.343' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2163, N'MIGUEL RAMON RODRIGUEZ LOPEZ', 3230449, CAST(N'2018-04-21 13:19:20.387' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2164, N'TERESITA RODRIGUEZ RAMOS', 3650652, CAST(N'2018-04-21 13:19:20.433' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2165, N'ISABEL RODRIGUEZ ', 3829391, CAST(N'2018-04-21 13:19:20.477' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2166, N'EDUARDO MARIANO RODRIGUEZ BIDEGAIN', 4049234, CAST(N'2018-04-21 13:19:20.523' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2167, N'RAMON HEBER RODRIGUEZ ALBANO', 2929204, CAST(N'2018-04-21 13:19:20.567' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2168, N'FRANCI JOSE RODRIGUEZ ', 3916171, CAST(N'2018-04-21 13:19:20.613' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2169, N'PEDRO RODRIGUEZ ', 2978688, CAST(N'2018-04-21 13:19:20.660' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2170, N'NELLY MARIA RODRIGUEZ GALVALISI', 3503503, CAST(N'2018-04-21 13:19:20.707' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2171, N'EDUARDO RODRIGUEZ CORA', 4087418, CAST(N'2018-04-21 13:19:20.750' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2172, N'GILBERTO RODRIGUEZ OLIVAR', 2019961, CAST(N'2018-04-21 13:19:20.797' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2173, N'CARLOS RODRIGUEZ CARRETE', 3263569, CAST(N'2018-04-21 13:19:20.840' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2174, N'ENRIQUE RODRIGUEZ MARTINEZ', 1857862, CAST(N'2018-04-21 13:19:20.883' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2175, N'MILTON DANTE RODRIGUEZ CIFFONI', 933088, CAST(N'2018-04-21 13:19:20.930' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2176, N'MATIAS RODRIGUEZ PERDOMO', 1541844, CAST(N'2018-04-21 13:19:20.973' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2177, N'JORGE LUIS RODRIGUEZ ZUNINO', 1408545, CAST(N'2018-04-21 13:19:21.020' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2178, N'NELSON RODRIGUEZ COLOMBO', 2972059, CAST(N'2018-04-21 13:19:21.067' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2179, N'MILTON RODRIGUEZ TITO', 1887768, CAST(N'2018-04-21 13:19:21.110' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2180, N'JULIO CESAR RODRIGUEZ PINHEIRO', 1931087, CAST(N'2018-04-21 13:19:21.160' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2181, N'RUBEN HUMBERTO RODRIGUEZ GODOY', 1243254, CAST(N'2018-04-21 13:19:21.207' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2182, N'JULIO CESAR RODRIGUEZ COTTA DE MELLO', 1682891, CAST(N'2018-04-21 13:19:21.250' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2183, N'VILIBALDO JOSE RODRIGUEZ LOPEZ', 1465649, CAST(N'2018-04-21 13:19:21.293' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2184, N'JOSÉ PEDRO RODRIGUEZ PEREYRA', 1762824, CAST(N'2018-04-21 13:19:21.340' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2185, N'JULIA ISABEL RODRIGUEZ MEDEROS', 2000068, CAST(N'2018-04-21 13:19:21.383' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2186, N'GABRIELA RODRIGUEZ MARICHAL', 4114408, CAST(N'2018-04-21 13:19:21.430' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2187, N'GLORIA CARMEN RODRIGUEZ PETROCELLI', 1144460, CAST(N'2018-04-21 13:19:21.473' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2188, N'SYLVIA RODRIGUEZ BATISTA', 1647108, CAST(N'2018-04-21 13:19:21.520' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2189, N'LAURA ETHEL RODRIGUEZ ARAUJO', 1997201, CAST(N'2018-04-21 13:19:21.563' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2190, N'MARÍA GABRIELA RODRIGUEZ FAGIAN', 2865137, CAST(N'2018-04-21 13:19:21.610' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2191, N'TERESITA RODRIGUEZ MASCARDI', 1025412, CAST(N'2018-04-21 13:19:21.657' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2192, N'WASHINGTON RODRIGUEZ FLEITAS', 3575420, CAST(N'2018-04-21 13:19:21.700' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2193, N'JORGE RAUL RODRIGUEZ MELENDEZ', 1587265, CAST(N'2018-04-21 13:19:21.747' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2194, N'LORELEY RODRIGUEZ CABRERA', 1698409, CAST(N'2018-04-21 13:19:21.790' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2195, N'LILIAN OLGA RODRIGUEZ LOPEZ', 1249632, CAST(N'2018-04-21 13:19:21.833' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2196, N'HUGO RODRIGUEZ FILIPPINI', 3548446, CAST(N'2018-04-21 13:19:21.880' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2197, N'MANUEL ANGEL RODRIGUEZ BETRAME', 2848028, CAST(N'2018-04-21 13:19:21.927' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2198, N'JUAN CARLOS RODRIGUEZ NIGRO', 1072794, CAST(N'2018-04-21 13:19:21.967' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2199, N'ADRIANA RODRIGUEZ CABRERA', 3661483, CAST(N'2018-04-21 13:19:22.013' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2200, N'WILFREDO ROJAS GARCIA', 1974420, CAST(N'2018-04-21 13:19:22.060' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2201, N'ALVARO ROLAND OXILIA', 3621639, CAST(N'2018-04-21 13:19:22.103' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2202, N'LORENZO DARWIN ROLDAN LARRAÑAGA', 1543704, CAST(N'2018-04-21 13:19:22.157' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2203, N'MARIA EUGENIA ROLLA ', 2780617, CAST(N'2018-04-21 13:19:22.200' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2204, N'MILTON ROMANI GERNER', 1174605, CAST(N'2018-04-21 13:19:22.243' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2205, N'NESTOR ROMANO GARIGLIO', 1337346, CAST(N'2018-04-21 13:19:22.287' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2206, N'ANGELITA ROMANO TROSINO', 1570280, CAST(N'2018-04-21 13:19:22.333' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2207, N'APOLO GABRIEL ROMANO ALARCON', 1485687, CAST(N'2018-04-21 13:19:22.377' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2208, N'ALVARO CAVOUR ROMANO REGUEIRA', 1680000, CAST(N'2018-04-21 13:19:22.420' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2209, N'GUSTAVO ALFREDO ROMBYS AGUILERA', 3323290, CAST(N'2018-04-21 13:19:22.467' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2210, N'LUIS ROMERO SOTO', 936995, CAST(N'2018-04-21 13:19:22.513' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2211, N'JUAN LUIS ROMERO MAS', 1392023, CAST(N'2018-04-21 13:19:22.557' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2212, N'WALTER MEDARDO ROMERO ARUFE', 1086545, CAST(N'2018-04-21 13:19:22.603' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2213, N'ELENA ROMERO HERNANDEZ', 1519704, CAST(N'2018-04-21 13:19:22.650' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2214, N'JUAN LUIS ROMERO MAS', 1392023, CAST(N'2018-04-21 13:19:22.693' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2215, N'MARCELO DANIEL ROMERO MACEDO', 3334835, CAST(N'2018-04-21 13:19:22.740' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2216, N'CARLOS ROMERO LARRECHEA', 820593, CAST(N'2018-04-21 13:19:22.780' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2217, N'LUIS ANGEL ROSADILLA PEREIRA', 2967115, CAST(N'2018-04-21 13:19:22.827' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2218, N'JORGE ROSALES ', 1573174, CAST(N'2018-04-21 13:19:22.870' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2219, N'EDMUNDO ROSELLI MORA', 2743593, CAST(N'2018-04-21 13:19:22.917' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2220, N'GERARDO MANUEL ROSENDO BUGALLO', 1547275, CAST(N'2018-04-21 13:19:22.960' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2221, N'SILVIA VERONICA ROSSEL SKERL', 2891538, CAST(N'2018-04-21 13:19:23.003' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2222, N'PIER ANTONIO ROSSI KEMPA', 1013517, CAST(N'2018-04-21 13:19:23.050' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2223, N'ANDREINA MARIA ROSSI COMAS', 4137614, CAST(N'2018-04-21 13:19:23.090' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2224, N'ALICIA ROSSI BOGADO', 1959115, CAST(N'2018-04-21 13:19:23.133' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2225, N'VICTOR HOMERO ROSSI RODRIGUEZ', 944777, CAST(N'2018-04-21 13:19:23.180' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2226, N'MARIA ROSINA ROSSI ALBERT', 1564278, CAST(N'2018-04-21 13:19:23.227' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2227, N'ANDREINA MARIA ROSSI COMAS', 4137614, CAST(N'2018-04-21 13:19:23.270' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2228, N'ACIDO ARCANGEL ROUS LEITES', 3549064, CAST(N'2018-04-21 13:19:23.317' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2229, N'CRISTINA ELVIRA ROVIRA CORBO', 1146814, CAST(N'2018-04-21 13:19:23.360' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2230, N'MARIA DEL CARMEN ROYBAL SILVA', 1579424, CAST(N'2018-04-21 13:19:23.403' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2231, N'EDGARDO ELOY RUBIANES MANGINI', 1320506, CAST(N'2018-04-21 13:19:23.450' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2232, N'ENRIQUE RUBIO BRUNO', 3429868, CAST(N'2018-04-21 13:19:23.497' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2233, N'MARIA RUBIO FERNANDEZ', 3635042, CAST(N'2018-04-21 13:19:23.540' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2234, N'JORGE GUILLERMO RUCKS DE FUENTES', 1416639, CAST(N'2018-04-21 13:19:23.587' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2235, N'JORGE  GABRIEL RUETE AMEIXEIRAS', 1716558, CAST(N'2018-04-21 13:19:23.633' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2236, N'FRANCISCO RUGGIERO NAVARRA', 1241840, CAST(N'2018-04-21 13:19:23.680' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2237, N'ANA CLAUDIA RUIBAL MIGLIERINA', 2972782, CAST(N'2018-04-21 13:19:23.727' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2238, N'JORGE RUIBAL PINO', 1005039, CAST(N'2018-04-21 13:19:23.770' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2239, N'LUISA JACQUELINE RUIZ CACERES', 2582948, CAST(N'2018-04-21 13:19:23.813' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2240, N'ALFREDO ALBERTO RUIZ VARNYU', 1612735, CAST(N'2018-04-21 13:19:23.860' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2241, N'ERODES RUIZ RODRIGUEZ', 1571723, CAST(N'2018-04-21 13:19:23.900' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2242, N'LEONARDO WALTER RUIZ RODRIGUEZ', 1808165, CAST(N'2018-04-21 13:19:23.947' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2243, N'MARCELA RUIZ QUESADA', 1465316, CAST(N'2018-04-21 13:19:23.993' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2244, N'HUMBERTO JULIO RUOCCO CAMBON', 1075136, CAST(N'2018-04-21 13:19:24.037' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2245, N'JOSE LUIS RUOCCO GALVEZ', 753686, CAST(N'2018-04-21 13:19:24.083' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2246, N'MILTON GUSTAVO RUSIÑOL FERRARI', 2514686, CAST(N'2018-04-21 13:19:24.127' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2247, N'MARIA MARGARITA SAAVEDRA BOUSSES', 1984521, CAST(N'2018-04-21 13:19:24.173' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2248, N'SEBASTIAN SABINI GIANNECCHINI', 3824457, CAST(N'2018-04-21 13:19:24.220' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2249, N'ROSANNA GRACIELA SACCO SANTANGELO', 1471128, CAST(N'2018-04-21 13:19:24.263' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2250, N'SERGIO  DANIEL SACOMANI MOREIRA', 3193711, CAST(N'2018-04-21 13:19:24.310' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2251, N'MARÍA MAGDALENA SÁENZ DE ZUMARÁN AGUERRE', 1976039, CAST(N'2018-04-21 13:19:24.353' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2252, N'MARIELLA SAETTONE MONTERO', 1438794, CAST(N'2018-04-21 13:19:24.397' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2253, N'MARCELO GUSTAVO SALABERRY FERNANDEZ', 3206439, CAST(N'2018-04-21 13:19:24.443' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2254, N'GUSTAVO ADOLFO SALABERRY SUAREZ', 3613354, CAST(N'2018-04-21 13:19:24.490' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2255, N'MARTA ELENA SALABERRY BATTISTELLA', 2711381, CAST(N'2018-04-21 13:19:24.533' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2256, N'ALFREDO SALARI DAMONTE', 999329, CAST(N'2018-04-21 13:19:24.580' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2257, N'MA. DEL CARMEN SALAZAR BLAYA', 3108658, CAST(N'2018-04-21 13:19:24.623' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2258, N'PEDRO MARIA SALAZAR DELGADO', 3300374, CAST(N'2018-04-21 13:19:24.673' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2259, N'ALEJANDRO JAVIER SALSAMENDI FERREIRA', 3498889, CAST(N'2018-04-21 13:19:24.717' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2260, N'ANA MARIA SALVERAGLIO DEMARCO', 1316778, CAST(N'2018-04-21 13:19:24.763' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2261, N'DIANA RITA SALVO CARBONARO', 1183529, CAST(N'2018-04-21 13:19:24.810' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2262, N'WASHINGTON JORGE SALVO STOTZ', 936461, CAST(N'2018-04-21 13:19:24.853' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2263, N'NILZA SALVO LOPEZ DE ALDA', 3168198, CAST(N'2018-04-21 13:19:24.900' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2264, N'JULIO CESAR SAMANDU SELLANES', 1667882, CAST(N'2018-04-21 13:19:24.943' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2265, N'JAVIER SAN CRISTOBAL BRUSCO', 1367397, CAST(N'2018-04-21 13:19:24.990' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2266, N'FRANCISCO SANABRIA BARRIOS', 3080645, CAST(N'2018-04-21 13:19:25.030' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2267, N'LAUDARES M. SANCHEZ MELGAREJO', 3448185, CAST(N'2018-04-21 13:19:25.077' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2268, N'IRMA ISABEL SANCHEZ ', 2768232, CAST(N'2018-04-21 13:19:25.117' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2269, N'AUGUSTO SANCHEZ DOS SANTOS', 2583925, CAST(N'2018-04-21 13:19:25.163' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2270, N'ALBA SANCHEZ RODRIGUEZ', 3328984, CAST(N'2018-04-21 13:19:25.210' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2271, N'DARDO ANGEL SANCHEZ CAL', 2755271, CAST(N'2018-04-21 13:19:25.253' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2272, N'GERARDO FRANCISCO SANCHEZ LISTUR', 2782095, CAST(N'2018-04-21 13:19:25.297' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2273, N'DOLORES IVONNE SANCHEZ DE LEON', 1753480, CAST(N'2018-04-21 13:19:25.343' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2274, N'PEDRO GUSTAVO SANCHEZ PIÑEIRO', 1688319, CAST(N'2018-04-21 13:19:25.387' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2275, N'RICHARD SAUL SANDER DARIN', 3029341, CAST(N'2018-04-21 13:19:25.430' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2276, N'ANDRES EMILIO SANGENIS MANNISE', 3048364, CAST(N'2018-04-21 13:19:25.473' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2277, N'ELISA ANDREA SANGUINETTI OSORIO', 1755932, CAST(N'2018-04-21 13:19:25.520' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2278, N'RITA SANGUINETTI ', 1913720, CAST(N'2018-04-21 13:19:25.563' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2279, N'JULIO  CESAR SANGUITTI DIEGO', 499083, CAST(N'2018-04-21 13:19:25.610' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2280, N'BERTA ELBA SANSEVERINO MANSILLA', 1084176, CAST(N'2018-04-21 13:19:25.657' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2281, N'HEBER JONI SANTANA MIDON', 2934062, CAST(N'2018-04-21 13:19:25.703' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2282, N'RICARDO SANTANA RODRIGUEZ', 1627352, CAST(N'2018-04-21 13:19:25.747' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2283, N'ANA MARIA SANTESTEVAN GARCIA DA ROSA', 1126041, CAST(N'2018-04-21 13:19:25.793' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2284, N'ELIDA  GERVASIA SANTISTEBAN RUELLA', 3515954, CAST(N'2018-04-21 13:19:25.837' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2285, N'DANIEL SANTISTEBAN TRISTAN', 2522628, CAST(N'2018-04-21 13:19:25.880' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2286, N'BLANCA GRISELDA SANTORO CARELLA', 1701803, CAST(N'2018-04-21 13:19:25.923' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2287, N'ALEJANDRO SANTOS KUH', 3741316, CAST(N'2018-04-21 13:19:25.970' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2288, N'OSCAR SANTOS GONZALEZ', 3235243, CAST(N'2018-04-21 13:19:26.013' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2289, N'MARIA DEL ROSARIO SAPELLI FERBER', 1755068, CAST(N'2018-04-21 13:19:26.057' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2290, N'MARIA ESTHER SAPPIA BONFRISCO', 3579653, CAST(N'2018-04-21 13:19:26.103' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2291, N'ANA SAPRIZA CORRADI', 1354958, CAST(N'2018-04-21 13:19:26.147' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2292, N'FERNANDO LUIS SARALEGUI MEDEIROS', 3332713, CAST(N'2018-04-21 13:19:26.193' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2293, N'MANUELA SARASOLA ROBAINA', 2580586, CAST(N'2018-04-21 13:19:26.237' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2294, N'MARIO RAÚL SARASUA MORAES', 3994375, CAST(N'2018-04-21 13:19:26.280' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2295, N'PEDRO JESUS SARAVIA FRATTI', 1265686, CAST(N'2018-04-21 13:19:26.323' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2296, N'MERCEDES CRISTINA SARAVIA HERNANDEZ', 2869485, CAST(N'2018-04-21 13:19:26.367' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2297, N'HUGO FREDDY SARAVIA GARASSINI', 1811801, CAST(N'2018-04-21 13:19:26.417' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2298, N'APARICIO SARAVIA SANTESTEVAN', 2675552, CAST(N'2018-04-21 13:19:26.460' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2299, N'ROBERTO ANIBAL SARAVIA RIOS', 2597217, CAST(N'2018-04-21 13:19:26.503' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2300, N'RUBEN DANIEL SARAVIA GARAGORRY', 2866076, CAST(N'2018-04-21 13:19:26.550' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2301, N'JORGE SARAVIA GARASSINI', 1581556, CAST(N'2018-04-21 13:19:26.597' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2302, N'CARLOS JOSE SARAZOLA BARBATO', 2519773, CAST(N'2018-04-21 13:19:26.637' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2303, N'OSCAR LUIS SARLO ONETO', 1861636, CAST(N'2018-04-21 13:19:26.687' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2304, N'JOSE ADOLFO SARMIENTO BERRA', 1959180, CAST(N'2018-04-21 13:19:26.730' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2305, N'ANA SARMIENTO CALVO', 2792093, CAST(N'2018-04-21 13:19:26.777' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2306, N'EDUARDO VICENTE SARNI MUÑIZ', 1286099, CAST(N'2018-04-21 13:19:26.820' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2307, N'ROBERTO SARTORIO BAPTISTA', 3472756, CAST(N'2018-04-21 13:19:26.863' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2308, N'BEATRIZ ROMA SARUBBI SALLES', 1559480, CAST(N'2018-04-21 13:19:26.910' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2309, N'JESUS EDUARDO SARUTTE DOMINGUEZ', 3729805, CAST(N'2018-04-21 13:19:26.953' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2310, N'MARIELA SASSON BALLETTO', 1046455, CAST(N'2018-04-21 13:19:27.000' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2311, N'HERMES LUIS SAULEDA CACERES', 3662959, CAST(N'2018-04-21 13:19:27.043' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2312, N'CARLOS MARIA SAVIO LARRIERA', 1201524, CAST(N'2018-04-21 13:19:27.087' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2313, N'SILVIA LILIANA SCABONI FELIX', 3273348, CAST(N'2018-04-21 13:19:27.130' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2314, N'ANDRES ALBERTO SCAGLIOLA DIAZ', 2940011, CAST(N'2018-04-21 13:19:27.180' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2315, N'BEATRIZ SCAPUSIO MINVIELLE', 953911, CAST(N'2018-04-21 13:19:27.227' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2316, N'LUISA ANTONIA SCELZA BATTAGLIA', 1591085, CAST(N'2018-04-21 13:19:27.270' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2317, N'FELIPE SCHELOTTO GUILLAMON', 1079116, CAST(N'2018-04-21 13:19:27.313' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2318, N'JUAN GUSTAVO SCHEPS GRANDAL', 1291870, CAST(N'2018-04-21 13:19:27.357' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2319, N'ALICIA SCHIAPPACASSE PANDIANI', 1426540, CAST(N'2018-04-21 13:19:27.400' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2320, N'RUBEN OSCAR SCHIAVO PASOS', 1567091, CAST(N'2018-04-21 13:19:27.443' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2321, N'OSCAR SCHNYDER GUICHARD', 3077083, CAST(N'2018-04-21 13:19:27.493' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2322, N'HEBER DARIO SCIRGALEA ACEVEDO', 3482662, CAST(N'2018-04-21 13:19:27.540' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2323, N'HUMBERTO SCONAMIGLIO RIVERO', 3284370, CAST(N'2018-04-21 13:19:27.587' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2324, N'RUBEN SCOTT DIAZ', 3478231, CAST(N'2018-04-21 13:19:27.630' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2325, N'FERNANDO JACINTO SCRIGNA RODRIGUEZ', 1391605, CAST(N'2018-04-21 13:19:27.680' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2326, N'HERMES SCROLLINI CAMACHO', 3713916, CAST(N'2018-04-21 13:19:27.723' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2327, N'HUGO EUGENIO SEGOVIA ACOSTA', 3365908, CAST(N'2018-04-21 13:19:27.767' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2328, N'ALVARO ANTONIO SEGREDO VILA', 3978586, CAST(N'2018-04-21 13:19:27.813' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2329, N'ISAAC SEGREDO MERCADAL', 3538117, CAST(N'2018-04-21 13:19:27.857' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2330, N'GLORIA ELISA SEGUESSA MORA', 3352007, CAST(N'2018-04-21 13:19:27.903' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2331, N'MARCOS SEIJAS CHACON', 3214999, CAST(N'2018-04-21 13:19:27.950' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2332, N'MIGUEL CARLOS SEJAS ANEIROS', 1525874, CAST(N'2018-04-21 13:19:27.993' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2333, N'EDUARDO SELLANES ACOSTA', 1171832, CAST(N'2018-04-21 13:19:28.037' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2334, N'VICTOR FELIX SEMPRONI ROBAINA', 594973, CAST(N'2018-04-21 13:19:28.083' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2335, N'ESTACIO SENA ', 3081314, CAST(N'2018-04-21 13:19:28.127' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2336, N'SUSANA MARGARITA SENA DECUADRO', 2559791, CAST(N'2018-04-21 13:19:28.173' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2337, N'RAUL FERNANDO SENDIC RODRIGUEZ', 2514573, CAST(N'2018-04-21 13:19:28.220' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2338, N'BASILIO SENISA MAKSIONCZUK', 3349524, CAST(N'2018-04-21 13:19:28.263' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2339, N'JOSE CARLOS SEOANE SEOANE', 1971528, CAST(N'2018-04-21 13:19:28.310' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2340, N'JOAQUIN SERRA ANDRE', 1581783, CAST(N'2018-04-21 13:19:28.353' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2341, N'RICHARD RONALD SERVAN DE LEON', 1116429, CAST(N'2018-04-21 13:19:28.397' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2342, N'GONZALO SERVETTO RUIZ', 4003857, CAST(N'2018-04-21 13:19:28.443' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2343, N'JOSE SESSER MOREIRA', 1136599, CAST(N'2018-04-21 13:19:28.490' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2344, N'OSVALDO SEVESO VIDAL', 1388473, CAST(N'2018-04-21 13:19:28.533' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2345, N'MYRIAM MONICA SEVESO HERNANDEZ', 1148210, CAST(N'2018-04-21 13:19:28.580' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2346, N'GABRIELA EMILIA SIERRA PARADA', 3472979, CAST(N'2018-04-21 13:19:28.623' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2347, N'JONNY BARCICH SILBERMANN COHN', 835268, CAST(N'2018-04-21 13:19:28.670' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2348, N'BERNARDO GASTON SILBERMANN VICTORIA', 970018, CAST(N'2018-04-21 13:19:28.720' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2349, N'ARTURO LEONARDO SILVA MARICHAL', 1735571, CAST(N'2018-04-21 13:19:28.763' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2350, N'GUSTAVO GILBERTO SILVA CHIOSSONI', 2969923, CAST(N'2018-04-21 13:19:28.807' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2351, N'MARCELO FABIAN SILVA CURBELO', 1586359, CAST(N'2018-04-21 13:19:28.850' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2352, N'GUSTAVO ALBERTO SILVA ', 1752339, CAST(N'2018-04-21 13:19:28.897' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2353, N'LUIS EDUARDO SILVA ', 2666399, CAST(N'2018-04-21 13:19:28.943' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2354, N'JUAN MIGUEL SILVA BONAVOGLIA', 3239884, CAST(N'2018-04-21 13:19:28.987' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2355, N'MONICA LUISA SILVA ECHEVERRIBORDA', 2591257, CAST(N'2018-04-21 13:19:29.033' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2356, N'ELBIO ABEL SILVA SISNANDEZ', 2720093, CAST(N'2018-04-21 13:19:29.077' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2357, N'ELENA LUCIA SILVA PIZZORNO', 1389692, CAST(N'2018-04-21 13:19:29.120' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2358, N'JIMENA MARIA SILVA PEREIRA', 3902638, CAST(N'2018-04-21 13:19:29.170' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2359, N'GUILLERMO FRANCISCO SILVA GUTIERREZ', 2619643, CAST(N'2018-04-21 13:19:29.213' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2360, N'GABRIELA SILVA PEDRAGOSA', 1797387, CAST(N'2018-04-21 13:19:29.257' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2361, N'JUAN SILVA CALERO', 3141034, CAST(N'2018-04-21 13:19:29.300' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2362, N'WALTER HUGO SILVA TEJEIRA', 2585880, CAST(N'2018-04-21 13:19:29.347' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2363, N'MARIA ROSA SILVA RIVERO', 2652340, CAST(N'2018-04-21 13:19:29.390' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2364, N'GONZALO ENRIQUE SILVA MARQUISIO', 1285875, CAST(N'2018-04-21 13:19:29.437' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2365, N'ROBERT SILVA GARCIA', 4132489, CAST(N'2018-04-21 13:19:29.480' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2366, N'CARLOS MARTIN SILVA APARICIO', 1251058, CAST(N'2018-04-21 13:19:29.527' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2367, N'RODOLFO HORACIO SILVEIRA MALVASIO', 1313438, CAST(N'2018-04-21 13:19:29.570' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2368, N'JULIO CESAR SILVEIRA CORREA', 3322019, CAST(N'2018-04-21 13:19:29.617' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2369, N'JORGE ALEJANDRO SILVEIRA NOBLE', 3586510, CAST(N'2018-04-21 13:19:29.663' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2370, N'FERNANDO CARLOS SILVEIRA DACUNHA', 2550766, CAST(N'2018-04-21 13:19:29.707' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2371, N'HECTOR GUSTAVO SILVEIRA RODRIGUEZ', 3307970, CAST(N'2018-04-21 13:19:29.753' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2372, N'RODOLFO HORACIO SILVEIRA MALVASIO', 1313438, CAST(N'2018-04-21 13:19:29.797' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2373, N'HECTOR GUSTAVO SILVEIRA RODRIGUEZ', 3307970, CAST(N'2018-04-21 13:19:29.840' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2374, N'ANA MARIA SILVEIRA PEREYRA', 3178220, CAST(N'2018-04-21 13:19:29.887' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2375, N'JUAN NEUBERIS SILVEIRA PEDROZO', 3013093, CAST(N'2018-04-21 13:19:29.930' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2376, N'MARIO FABIAN SILVERA ARAUJO', 2892260, CAST(N'2018-04-21 13:19:29.977' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2377, N'ADEMAR DANUBIO SILVERA GONZALEZ', 2622894, CAST(N'2018-04-21 13:19:30.020' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2378, N'ALEJANDRO PABLO SILVERA ITURRALDE', 2719274, CAST(N'2018-04-21 13:19:30.063' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2379, N'MICAELA SILVERA PERDOMO', 3538395, CAST(N'2018-04-21 13:19:30.103' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2380, N'SEBASTIAN MARCELO SILVERA GARCIA', 4356964, CAST(N'2018-04-21 13:19:30.150' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2381, N'ALDORIO SILVERA DO CANTO', 1214098, CAST(N'2018-04-21 13:19:30.197' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2382, N'MONICA SILVERA CABAÑA', 1573709, CAST(N'2018-04-21 13:19:30.240' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2383, N'JORGE ALBERTO SIMON CILENTO', 1104713, CAST(N'2018-04-21 13:19:30.287' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2384, N'LUIS MARIA SIMON OLIVERA', 1210820, CAST(N'2018-04-21 13:19:30.330' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2385, N'MARIA  MAGDALENA SIMON GALVALISI', 1355230, CAST(N'2018-04-21 13:19:30.377' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2386, N'GONZALO SIMONE SUSAETA', 2759910, CAST(N'2018-04-21 13:19:30.417' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2387, N'JAVIER EDGARDO SINIESTRO LEMAIRE', 3374976, CAST(N'2018-04-21 13:19:30.463' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2388, N'GERARDO ANDRES SIRI PRIETO', 2913754, CAST(N'2018-04-21 13:19:30.510' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2389, N'MARGOT SISTO D´ALEXANDRE', 2653042, CAST(N'2018-04-21 13:19:30.553' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2390, N'JORGE SMALDONE ', 1351232, CAST(N'2018-04-21 13:19:30.600' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2391, N'CLAUDIO SOARES PASTORINI', 2597025, CAST(N'2018-04-21 13:19:30.647' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2392, N'CARLOS OCTAVIO SOARES DE LIMA VACCHELLI', 1138093, CAST(N'2018-04-21 13:19:30.697' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2393, N'ERIKA SOBERAL CANDIDO', 3515108, CAST(N'2018-04-21 13:19:30.770' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2394, N'LUIS EDUARDO SOBOREDO BERRIEL', 3359285, CAST(N'2018-04-21 13:19:30.813' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2395, N'LUIS ALBERTO SOBOT BANCHERO', 2916935, CAST(N'2018-04-21 13:19:30.860' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2396, N'FRANCIS RODRIGO SOCA LANDARIN', 2681288, CAST(N'2018-04-21 13:19:30.903' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2397, N'PABLO GUZMAN SOCA CASTRO', 1824685, CAST(N'2018-04-21 13:19:30.950' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2398, N'ESTHER SOLANA GONZALEZ', 3188469, CAST(N'2018-04-21 13:19:30.997' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2399, N'DELIA SUSANA SORIA GONZALEZ', 3589924, CAST(N'2018-04-21 13:19:31.040' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2400, N'NORMA LUCY SORIA SUAREZ', 1356338, CAST(N'2018-04-21 13:19:31.087' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2401, N'ARY NEY SORONDO RODRIGUEZ', 4046122, CAST(N'2018-04-21 13:19:31.133' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2402, N'JOSE WILEN SOSA SUAREZ', 3980467, CAST(N'2018-04-21 13:19:31.180' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2403, N'ANTONIO RUBEN SOSA BARBOZA', 1616951, CAST(N'2018-04-21 13:19:31.230' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2404, N'HENRY SOSA LALUZ', 2011931, CAST(N'2018-04-21 13:19:31.290' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2405, N'YHARA SOSA PEREIRA', 3392899, CAST(N'2018-04-21 13:19:31.340' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2406, N'LIZA ROSANA SOSA LAIN', 3499835, CAST(N'2018-04-21 13:19:31.383' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2407, N'LUIS EDUARDO SOSA SOSA', 3537722, CAST(N'2018-04-21 13:19:31.430' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2408, N'FRANCISCO WALDEMAR SOSA HUERTAS', 3052774, CAST(N'2018-04-21 13:19:31.473' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2409, N'ANAHI SOSA AMONTE', 1324446, CAST(N'2018-04-21 13:19:31.520' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2410, N'SELSON SOSA LEMOS', 1569270, CAST(N'2018-04-21 13:19:31.567' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2411, N'GREGORIO FREGOLI SOSA AGUIRRE', 3590065, CAST(N'2018-04-21 13:19:31.613' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2412, N'MARIA LAURA SOTELO RICO', 3168669, CAST(N'2018-04-21 13:19:31.663' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2413, N'GILBERTO HOMERO SOTO PORTILLO', 3897590, CAST(N'2018-04-21 13:19:31.707' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2414, N'ENRIQUE SOTO DURAN', 1339743, CAST(N'2018-04-21 13:19:31.753' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2415, N'PEDRO ALBERTO SOUST AYCAGUER', 1608659, CAST(N'2018-04-21 13:19:31.797' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2416, N'CARLOS MARIA SOUTO ', 1758779, CAST(N'2018-04-21 13:19:31.843' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2417, N'RODOLFO ERNESTO SOUTO ETCHEMENDI', 3795069, CAST(N'2018-04-21 13:19:31.883' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2418, N'ANTONIO A SOUTULLO FERNANDEZ', 877482, CAST(N'2018-04-21 13:19:31.930' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2419, N'JULIO SOUVIE FINKBEIN', 1299732, CAST(N'2018-04-21 13:19:31.977' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2420, N'JUAN CARLOS SOUZA DE LOS SANTOS', 1940311, CAST(N'2018-04-21 13:19:32.020' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2421, N'JOSE GUSTAVO SPERA GANZO', 2679074, CAST(N'2018-04-21 13:19:32.067' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2422, N'VICTOR FRANCISCO SPINELLI KIRKERUP', 1112163, CAST(N'2018-04-21 13:19:32.107' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2423, N'IGNACIO VICENTE SPINOLA PARALLADA', 3318900, CAST(N'2018-04-21 13:19:32.157' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2424, N'GONZALO SPINOLA AMARO', 4181383, CAST(N'2018-04-21 13:19:32.200' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2425, N'ENZO FABIAN SQUILLACE NICOLA', 3866165, CAST(N'2018-04-21 13:19:32.243' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2426, N'GEZA STARI HIRSCH', 1305756, CAST(N'2018-04-21 13:19:32.287' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2427, N'JULIA ELENA STARICCO CAMPODONICO', 3264658, CAST(N'2018-04-21 13:19:32.330' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2428, N'ALEJANDRO RAUL STIPANICIC ZENGA', 1715473, CAST(N'2018-04-21 13:19:32.373' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2429, N'MA.DEL CARMEN --- STOMBELLINI URQUHART', 3154632, CAST(N'2018-04-21 13:19:32.420' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2430, N'CAYETANO STOPINGI FERNANDEZ', 2829459, CAST(N'2018-04-21 13:19:32.463' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2431, N'AURORA SILVIA STUPINO VARELA', 1091332, CAST(N'2018-04-21 13:19:32.507' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2432, N'MARÍA LAURA STURLA BERHOUET', 1547613, CAST(N'2018-04-21 13:19:32.553' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2433, N'MARIA DE LOURDES SUAREZ FAJAR', 3802714, CAST(N'2018-04-21 13:19:32.600' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2434, N'GUSTAVO ENRIQUE SUAREZ MARAÑON', 1173803, CAST(N'2018-04-21 13:19:32.647' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2435, N'CARMEN MARIA SUAREZ CUELLO', 3407389, CAST(N'2018-04-21 13:19:32.693' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2436, N'ALVARO JOSE SUAREZ CONTI', 1011113, CAST(N'2018-04-21 13:19:32.737' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2437, N'AURELIO DANIEL SUAREZ VERGE', 1481609, CAST(N'2018-04-21 13:19:32.780' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2438, N'CARLOS SUAREZ LEMOS', 1547964, CAST(N'2018-04-21 13:19:32.827' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2439, N'MARIO FEDERICO SUAREZ SUÑOL', 2595488, CAST(N'2018-04-21 13:19:32.870' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2440, N'JULIO CESAR SUAREZ BONORINO', 1430083, CAST(N'2018-04-21 13:19:32.913' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2441, N'ANNABELA SUBURU SOSA', 3077422, CAST(N'2018-04-21 13:19:32.960' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2442, N'OMAR JULIO SUEIRO PEREZ', 1039674, CAST(N'2018-04-21 13:19:33.000' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2443, N'DORA SZAFIR SLOTOLOW', 1145695, CAST(N'2018-04-21 13:19:33.047' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2444, N'SAMUEL SZTERN GOLDHAR', 1138120, CAST(N'2018-04-21 13:19:33.093' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2445, N'OSVALDO ROBERTO TABACCHI VALLI', 1060279, CAST(N'2018-04-21 13:19:33.137' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2446, N'HECTOR VALENTIN TACON AMBROA', 1431371, CAST(N'2018-04-21 13:19:33.183' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2447, N'MARINA SUSANA TAIBO AMOROS', 1038495, CAST(N'2018-04-21 13:19:33.227' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2448, N'PABLO TAILANIAN ', 1221844, CAST(N'2018-04-21 13:19:33.270' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2449, N'HECTOR VICENTE TAJAM CABRERA', 1883169, CAST(N'2018-04-21 13:19:33.317' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2450, N'DANIEL HIPOLITO TAPIE SANTARELLI', 1446890, CAST(N'2018-04-21 13:19:33.360' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2451, N'BEATRIZ TARTAGIA SASTRE', 1471470, CAST(N'2018-04-21 13:19:33.403' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2452, N'CESAR TULIO TARTAGLIA ', 3443698, CAST(N'2018-04-21 13:19:33.447' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2453, N'GUSTAVO HUGO TARTAGLIA GARRASINO', 1702817, CAST(N'2018-04-21 13:19:33.490' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2454, N'MIGUEL ANGEL TATO CORBO', 1161278, CAST(N'2018-04-21 13:19:33.533' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2455, N'DELIA NEIL TECHERA TEJERA', 1607937, CAST(N'2018-04-21 13:19:33.580' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2456, N'HUMBERTO TECHERA GONZALEZ', 1862353, CAST(N'2018-04-21 13:19:33.623' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2457, N'DUVI ALFREDO TEIXIDOR VINJOY', 1703602, CAST(N'2018-04-21 13:19:33.670' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2458, N'CECILIA RITA TEJERA CHIESA', 1231316, CAST(N'2018-04-21 13:19:33.713' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2459, N'ELENA JUANA TEJERA PEREZ', 1206697, CAST(N'2018-04-21 13:19:33.760' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2460, N'LUIS EDUARDO TEJERA ETCHARTEA', 2809410, CAST(N'2018-04-21 13:19:33.800' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2461, N'ANA MARIA TEJERA SOSA', 3639456, CAST(N'2018-04-21 13:19:33.847' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2462, N'LUIS EDUARDO TELESCA SILVA', 1269863, CAST(N'2018-04-21 13:19:33.893' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2463, N'SANDRO FABIAN TELIS FERREIRA', 2783241, CAST(N'2018-04-21 13:19:33.937' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2464, N'SANDRA TERESA TELIZ CAPATO', 3265075, CAST(N'2018-04-21 13:19:33.980' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2465, N'ANA MARIA TELLECHEA RECK', 1223608, CAST(N'2018-04-21 13:19:34.027' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2466, N'GUZMAN PABLO TELLECHEA OTERO', 1196403, CAST(N'2018-04-21 13:19:34.083' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2467, N'JOSE ALFREDO TERRA FERNANDEZ', 1663338, CAST(N'2018-04-21 13:19:34.137' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2468, N'ARTURO TERRA MEREGALLI', 1246132, CAST(N'2018-04-21 13:19:34.207' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2469, N'MARIA TESTA TURTURIELLO', 1018601, CAST(N'2018-04-21 13:19:34.260' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2470, N'GUILLERMO TESTORELLI SCHNITZSPAHN', 1584573, CAST(N'2018-04-21 13:19:34.313' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2471, N'NELSON MARTIN TIERNO FERNANDEZ', 3189142, CAST(N'2018-04-21 13:19:34.360' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2472, N'ROBERTO MARIO TIMBAL KOHN', 984043, CAST(N'2018-04-21 13:19:34.403' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2473, N'MARCOS TISCORDIO MATONTE', 3371814, CAST(N'2018-04-21 13:19:34.450' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2474, N'FEDERICO RUBEN TOBIA SILVEIRA', 3157699, CAST(N'2018-04-21 13:19:34.493' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2475, N'JUAN PEDRO TOBIA FERNANDEZ', 1175103, CAST(N'2018-04-21 13:19:34.540' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2476, N'WILLIAM MORTIMER TOCHETTO IFRAN', 1376548, CAST(N'2018-04-21 13:19:34.587' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2477, N'HERMES ROMERO TOLEDO ANTUNEZ', 2611656, CAST(N'2018-04-21 13:19:34.630' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2478, N'HORACIO TOLOSA BARLA', 2667458, CAST(N'2018-04-21 13:19:34.680' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2479, N'PABLO TOLOSA BARLA', 3167533, CAST(N'2018-04-21 13:19:34.727' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2480, N'MIGUEL ANGEL TOMA SANCHIZ', 3810117, CAST(N'2018-04-21 13:19:34.770' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2481, N'FERNANDO DANIEL TOMEO SUAREZ', 1615759, CAST(N'2018-04-21 13:19:34.817' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2482, N'JOSEFINA BEATRIZ TOMMASINO FERRARO', 1337236, CAST(N'2018-04-21 13:19:34.867' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2483, N'VICTOR  FERNANDO TONTO MUÑOZ', 1398162, CAST(N'2018-04-21 13:19:34.930' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2484, N'LUCIA TOPOLANSKY SAAVEDRA', 957928, CAST(N'2018-04-21 13:19:34.977' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2485, N'PABLO TORMO RODRIGUEZ', 1477648, CAST(N'2018-04-21 13:19:35.020' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2486, N'SEBASTIAN TORRES LEDESMA', 1876203, CAST(N'2018-04-21 13:19:35.070' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2487, N'OMAR JOSE TORRES SAUCEDO', 2525822, CAST(N'2018-04-21 13:19:35.113' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2488, N'JOSE GABRIEL TORRES PEREIRA', 2588014, CAST(N'2018-04-21 13:19:35.157' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2489, N'LUDELMAR TORRES BOVE', 3982435, CAST(N'2018-04-21 13:19:35.203' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2490, N'ENZO RAFHAEL TORRES LEAL', 3698489, CAST(N'2018-04-21 13:19:35.247' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2491, N'SERGIO TORRES COLLAZO', 1677447, CAST(N'2018-04-21 13:19:35.293' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2492, N'MARCOS OLMEDOS TORRES AMORIN', 1180200, CAST(N'2018-04-21 13:19:35.333' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2493, N'CARMEN NIRIA TORT GONZALEZ', 3424754, CAST(N'2018-04-21 13:19:35.380' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2494, N'ISAURA TORTORA BOF', 1955134, CAST(N'2018-04-21 13:19:35.427' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2495, N'RAMIRO TORTORELLA CASANOVA', 3398937, CAST(N'2018-04-21 13:19:35.470' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2496, N'ARTURO TOSCANO CASTELLUCCI', 1169056, CAST(N'2018-04-21 13:19:35.520' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2497, N'ADRIANA TOSCANO RODRIGUEZ', 1644904, CAST(N'2018-04-21 13:19:35.563' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2498, N'LUIS DOMINGO TOSI BOERI', 1205061, CAST(N'2018-04-21 13:19:35.610' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2499, N'DAYSI LILIAN TOURNE VALDEZ', 1211311, CAST(N'2018-04-21 13:19:35.660' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2500, N'EDUARDO ERLING TOUYA OLSEN-BÖJE', 1846150, CAST(N'2018-04-21 13:19:35.703' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2501, N'FERNANDO RAUL TOVAGLIARE ROMERO', 1899749, CAST(N'2018-04-21 13:19:35.747' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2502, N'ANDRES TOZZO MALINARIC', 1678516, CAST(N'2018-04-21 13:19:35.793' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2503, N'MARIA TRAVERSA TEJERA', 1969402, CAST(N'2018-04-21 13:19:35.837' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2504, N'SANTIAGO TRAZABAL TARDE', 3938113, CAST(N'2018-04-21 13:19:35.883' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2505, N'MERCEDES TRIGO DUARTE', 1177456, CAST(N'2018-04-21 13:19:35.930' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2506, N'GERARDO ANTONIO TRIUNFO BRIANO', 1208145, CAST(N'2018-04-21 13:19:35.970' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2507, N'JAIME MARIO TROBO CABRERA', 1434814, CAST(N'2018-04-21 13:19:36.017' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2508, N'SILVANA MARIA TROTTO MURIAS', 2969608, CAST(N'2018-04-21 13:19:36.060' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2509, N'EDUARDO JULIO TURELL ARAQUISTAIN', 1205619, CAST(N'2018-04-21 13:19:36.107' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2510, N'FABIANA TURRA DE BRITOS', 1956955, CAST(N'2018-04-21 13:19:36.150' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2511, N'MARIA DEL PILAR UBILLA BRUSCHERA', 1361807, CAST(N'2018-04-21 13:19:36.197' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2512, N'JOSE IGNACIO UBILLA MORAES', 2608414, CAST(N'2018-04-21 13:19:36.240' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2513, N'SEBASTIAN IGNACIO UBILLA MORAES', 3074745, CAST(N'2018-04-21 13:19:36.290' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2514, N'RAFAEL UBIRIA ALZUGARAY', 1265457, CAST(N'2018-04-21 13:19:36.333' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2515, N'ALEJO ALEJANDRO UMPIERREZ CABRERA', 2832571, CAST(N'2018-04-21 13:19:36.377' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2516, N'JAVIER UMPIERREZ ', 3178469, CAST(N'2018-04-21 13:19:36.420' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2517, N'RAQUEL SUSANA UMPIERREZ LEZUE', 3517556, CAST(N'2018-04-21 13:19:36.463' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2518, N'ADRIANA UMPIERREZ GONZALEZ', 1952943, CAST(N'2018-04-21 13:19:36.510' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2519, N'GLADYS URANGA COUSO', 1005940, CAST(N'2018-04-21 13:19:36.550' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2520, N'GUALBERTO RAMON URBELTZ PERERA', 2584531, CAST(N'2018-04-21 13:19:36.600' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2521, N'FERNANDO DAMIAN URIARTE BERROSPE', 1944980, CAST(N'2018-04-21 13:19:36.643' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2522, N'DAOIZ GERARDO URIARTE ARAUJO', 1425131, CAST(N'2018-04-21 13:19:36.693' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2523, N'SILVIA VIRGINIA URIOSTE TORRES', 3229946, CAST(N'2018-04-21 13:19:36.737' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2524, N'SERGIO OSVALLDO URRETA OLIVERA', 3590029, CAST(N'2018-04-21 13:19:36.780' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2525, N'JOSE MARIA URRUTIA VECINO', 1494684, CAST(N'2018-04-21 13:19:36.827' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2526, N'WALTER ASDRÚBAL URRUTIA DE LEÓN', 2789348, CAST(N'2018-04-21 13:19:36.870' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2527, N'JUAN PEDRO URRUZOLA PERALTA', 1491947, CAST(N'2018-04-21 13:19:36.913' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2528, N'MARIA GRACIANA URRUZOLA PERALTA', 1315369, CAST(N'2018-04-21 13:19:36.957' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2529, N'GERARDO PEDRO URSE IRIARTE', 1876984, CAST(N'2018-04-21 13:19:37.003' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2530, N'CARLOS DAVID USLENGHI DA SILVA', 4094125, CAST(N'2018-04-21 13:19:37.047' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2531, N'MARIA ISABEL VACCARO MARTORELL', 1274218, CAST(N'2018-04-21 13:19:37.090' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2532, N'LIZARDO VALDEZ MUÑOZ', 1140759, CAST(N'2018-04-21 13:19:37.137' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2533, N'RUBEN VALENTIN MARTINEZ', 3672541, CAST(N'2018-04-21 13:19:37.183' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2534, N'JORGE DAMIAN VALENTINI REVETRIA', 2967514, CAST(N'2018-04-21 13:19:37.230' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2535, N'FERNANDO VALERIO DIAZ', 1816946, CAST(N'2018-04-21 13:19:37.270' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2536, N'NESTOR VALETTI RODRIGUEZ', 1418914, CAST(N'2018-04-21 13:19:37.317' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2537, N'LEONARDO SEBASTIAN VALIENTE PEREYRA', 4262189, CAST(N'2018-04-21 13:19:37.360' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2538, N'ANA CRISTINA VALLVERDU OLIVERA', 1201391, CAST(N'2018-04-21 13:19:37.407' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2539, N'LESLIE ALBERTO VAN ROMPAEY SERVILLO', 1044582, CAST(N'2018-04-21 13:19:37.450' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2540, N'ABEL CESAR VANNI ROSAS', 3024909, CAST(N'2018-04-21 13:19:37.497' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2541, N'JULIO ANGEL VANOLI ', 3958447, CAST(N'2018-04-21 13:19:37.540' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2542, N'GUSTAVO ANTONIO VAREALA ZITTA', 2615050, CAST(N'2018-04-21 13:19:37.590' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2543, N'CARLOS VARELA UBAL', 1930739, CAST(N'2018-04-21 13:19:37.637' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2544, N'CARLOS RICARDO VARELA NESTIER', 1352185, CAST(N'2018-04-21 13:19:37.687' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2545, N'DORIS VIVIAN VARELA ', 3746717, CAST(N'2018-04-21 13:19:37.733' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2546, N'ALEJANDRA ROSANA VARELA ARROYO', 3009264, CAST(N'2018-04-21 13:19:37.777' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2547, N'JUAN MARTIN VARELA ORMANDO', 4071965, CAST(N'2018-04-21 13:19:37.823' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2548, N'JOSE PEDRO VARELA DELGADO', 2753063, CAST(N'2018-04-21 13:19:37.867' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2549, N'OMAR ATILIO VARELA PERDOMO', 1180325, CAST(N'2018-04-21 13:19:37.910' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2550, N'MARCELA MARÍA VARGAS SANINI', 2543217, CAST(N'2018-04-21 13:19:37.957' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2551, N'PATRICIA MONICA VASQUEZ VARELA VIVIANI', 2694855, CAST(N'2018-04-21 13:19:38.003' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2552, N'WALTER DANILO VASSALLO ROMERO', 3243433, CAST(N'2018-04-21 13:19:38.047' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2553, N'JORGE OBDULIO VAZ RODRIGUEZ', 1837674, CAST(N'2018-04-21 13:19:38.090' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2554, N'PEDRO HUMBERTO VAZ RAMELA', 3518220, CAST(N'2018-04-21 13:19:38.137' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2555, N'JUAN ANGEL VAZQUEZ LASSERRA', 853659, CAST(N'2018-04-21 13:19:38.180' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2556, N'RODOLFO ANTONIO VAZQUEZ PEDROSO', 1510508, CAST(N'2018-04-21 13:19:38.230' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2557, N'PEDRO VAZQUEZ ', 2677703, CAST(N'2018-04-21 13:19:38.273' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2558, N'JOSE PEDRO VAZQUEZ FONTES', 3317709, CAST(N'2018-04-21 13:19:38.317' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2559, N'JUAN VAZQUEZ ROMAN', 1600680, CAST(N'2018-04-21 13:19:38.363' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2560, N'EDUARDO JOSE VAZQUEZ CRUZ', 1288552, CAST(N'2018-04-21 13:19:38.403' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2561, N'TABARE RAMON VAZQUEZ ROSAS', 854654, CAST(N'2018-04-21 13:19:38.450' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2562, N'HEBERT VAZQUEZ MARDARAS', 3174484, CAST(N'2018-04-21 13:19:38.493' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2563, N'DANILO ARIEL VAZQUEZ FRANCO', 1536881, CAST(N'2018-04-21 13:19:38.540' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2564, N'JORGE LUIS VAZQUEZ ROSA', 1041595, CAST(N'2018-04-21 13:19:38.587' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2565, N'ALVARO VEGA LLANES', 3061790, CAST(N'2018-04-21 13:19:38.630' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2566, N'DIEGO RICARDO VEGA ALONSO', 1211985, CAST(N'2018-04-21 13:19:38.680' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2567, N'WASHINGTON VEGA DIAZ', 1569785, CAST(N'2018-04-21 13:19:38.727' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2568, N'ALICIA IRIS VEGA OTTONELLO', 2006323, CAST(N'2018-04-21 13:19:38.770' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2569, N'JOSE LUIS VEIGA NICOLAU', 936424, CAST(N'2018-04-21 13:19:38.813' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2570, N'FERNANDO JOSÉ VEIGA CIARLARIELLO', 1534773, CAST(N'2018-04-21 13:19:38.857' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2571, N'LEONARDO VEIGA SANCHEZ', 2610829, CAST(N'2018-04-21 13:19:38.900' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2572, N'PABLO DAMIAN VELA GADEA', 2958744, CAST(N'2018-04-21 13:19:38.947' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2573, N'RODRIGO VELASCO GONZALEZ', 5172426, CAST(N'2018-04-21 13:19:38.993' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2574, N'MIGUEL VELAZQUEZ ', 1523628, CAST(N'2018-04-21 13:19:39.037' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2575, N'ULISES FERNANDO VELAZQUEZ PAIS', 3692764, CAST(N'2018-04-21 13:19:39.083' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2576, N'GRACIELA ELENA VELAZQUEZ PRIETO', 1320535, CAST(N'2018-04-21 13:19:39.127' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2577, N'MARIA BELEN VELAZQUEZ DIAZ', 3186383, CAST(N'2018-04-21 13:19:39.173' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2578, N'ADELIO FERNANDO VELEZ MOLINA', 4006553, CAST(N'2018-04-21 13:19:39.220' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2579, N'JORGE ENRIQUE VENEGAS RAMIREZ', 1480841, CAST(N'2018-04-21 13:19:39.263' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2580, N'LAURA MARÍA VENTIMIGLIA DEVINCENZI', 1582788, CAST(N'2018-04-21 13:19:39.307' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2581, N'BEATRIZ DORA VENTURINI CAMEJO', 1433861, CAST(N'2018-04-21 13:19:39.353' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2582, N'MARIA A. VERA MEDINA', 1395774, CAST(N'2018-04-21 13:19:39.397' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2583, N'AIDA HORTENCIA VERA BARRETO', 2503067, CAST(N'2018-04-21 13:19:39.440' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2584, N'JULIO DANTE VERDE VIERA', 3714078, CAST(N'2018-04-21 13:19:39.487' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2585, N'EMMA SUSANA VERGARA BARRIOS', 2827227, CAST(N'2018-04-21 13:19:39.530' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2586, N'ALVARO VERGARA AMOROSO', 1538891, CAST(N'2018-04-21 13:19:39.577' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2587, N'RUBEN MARIO VERNAZZA MATTEO', 1169907, CAST(N'2018-04-21 13:19:39.623' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2588, N'FLORA VERÓ DE LA LLANA', 2554058, CAST(N'2018-04-21 13:19:39.670' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2589, N'WALTER VERRI PIRIZ', 3555383, CAST(N'2018-04-21 13:19:39.713' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2590, N'HUMBERTO VICTORIO VERRI LIMA', 1815935, CAST(N'2018-04-21 13:19:39.760' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2591, N'LEONOR ISABEL VERZI FERNANDEZ', 1464572, CAST(N'2018-04-21 13:19:39.803' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2592, N'SILVIA MARIA VESPA DI NUNZIO', 1490148, CAST(N'2018-04-21 13:19:39.847' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2593, N'CESAR ALBERTO VESPERONI VACO', 2944492, CAST(N'2018-04-21 13:19:39.893' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2594, N'ENRIQUE VIANA FERREIRA', 3148279, CAST(N'2018-04-21 13:19:39.937' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2595, N'JOSE ANTONIO VICTORIA RODRIGUEZ', 1540598, CAST(N'2018-04-21 13:19:39.983' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2596, N'GRACIELA VIDAL CASTRO', 1305301, CAST(N'2018-04-21 13:19:40.027' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2597, N'MARIO ARIEL VIDAL GONZALEZ', 1042531, CAST(N'2018-04-21 13:19:40.070' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2598, N'MARIA VIDAL RODRIGUEZ', 1577361, CAST(N'2018-04-21 13:19:40.110' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2599, N'CARMELO J. VIDALIN AGUIRRE', 3876528, CAST(N'2018-04-21 13:19:40.157' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2600, N'HECTOR MARIO VIDELA MATONTE', 2661988, CAST(N'2018-04-21 13:19:40.200' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2601, N'JOSE L. VIERA ', 3099391, CAST(N'2018-04-21 13:19:40.247' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2602, N'TABARE VIERA DUARTE', 3660456, CAST(N'2018-04-21 13:19:40.290' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2603, N'WASHINGTON ALBERTO VIERA CABRERA', 3286002, CAST(N'2018-04-21 13:19:40.333' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2604, N'WASHINGTON ENRIQUE VIGLIOLA SOSA', 1037739, CAST(N'2018-04-21 13:19:40.380' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2605, N'EDGAR FERNANDO VIGNOLI RAMIREZ', 2620354, CAST(N'2018-04-21 13:19:40.420' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2606, N'ANA MARIA VIGNOLI ', 1033482, CAST(N'2018-04-21 13:19:40.467' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2607, N'ALEJANDRO VILA GOLDARACENA', 1669571, CAST(N'2018-04-21 13:19:40.510' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2608, N'MARIO VILA OLIVEROS', 1799770, CAST(N'2018-04-21 13:19:40.557' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2609, N'MARÍA LUZ VILA VIDAL', 870411, CAST(N'2018-04-21 13:19:40.603' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2610, N'BEATRÍZ LUCÍA VILA BLANCO', 3069718, CAST(N'2018-04-21 13:19:40.650' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2611, N'GUSTAVO LEOPOLDO VILARO NIETO', 1208483, CAST(N'2018-04-21 13:19:40.700' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2612, N'GUILLERMO G. VILLA MARTIRENE', 1528000, CAST(N'2018-04-21 13:19:40.743' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2613, N'RAQUEL VILLAAMIL ', 1269837, CAST(N'2018-04-21 13:19:40.787' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2614, N'JUAN ANTONIO VILLAGRAN MARTINEZ', 1696923, CAST(N'2018-04-21 13:19:40.830' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2615, N'OSCAR VILLALBA LUZARDO', 3624730, CAST(N'2018-04-21 13:19:40.877' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2616, N'ROBERTO VILLAMIL ALVAREZ', 1189057, CAST(N'2018-04-21 13:19:40.920' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2617, N'VICTOR ROBERTO VILLAR JUAREZ', 1730275, CAST(N'2018-04-21 13:19:40.963' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2618, N'PABLO VILLAR BABUGLIA', 1335128, CAST(N'2018-04-21 13:19:41.010' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2619, N'GRACIELA VILLAR ', 1536124, CAST(N'2018-04-21 13:19:41.057' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2620, N'GERARDO VIÑALES ', 3078787, CAST(N'2018-04-21 13:19:41.103' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2621, N'LUIS SERGIO VIÑAS SENDIC', 1008052, CAST(N'2018-04-21 13:19:41.150' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2622, N'MARINA VIÑOLY APAOLAZA', 3344856, CAST(N'2018-04-21 13:19:41.200' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2623, N'GIANNELLA ANNA VIÑOLY CERVIÑO', 1166794, CAST(N'2018-04-21 13:19:41.240' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2624, N'HERMINIA VIOTTI MATEU', 2667933, CAST(N'2018-04-21 13:19:41.287' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2625, N'MARCELO VISCONTI ESPINOSA', 1931990, CAST(N'2018-04-21 13:19:41.330' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2626, N'RAUL VITAL SARALEGUI', 2948428, CAST(N'2018-04-21 13:19:41.377' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2627, N'AUGUSTO LEONARDO VITALE MARINO', 1846884, CAST(N'2018-04-21 13:19:41.420' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2628, N'DIONISIO VIVIAN BELTRANQUIN', 1540711, CAST(N'2018-04-21 13:19:41.463' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2629, N'JORGE ALVARO VIVIANO BALDI', 4015787, CAST(N'2018-04-21 13:19:41.510' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2630, N'DANIEL CARLOS VOLPE VELARDO', 1377038, CAST(N'2018-04-21 13:19:41.553' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2631, N'ROLANDO RUBENS VOMERO BLANCO', 1035227, CAST(N'2018-04-21 13:19:41.603' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2632, N'LUCIA WAINER ROMANELLI', 3049172, CAST(N'2018-04-21 13:19:41.650' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2633, N'JOSE WAINER GRAMPINER', 766906, CAST(N'2018-04-21 13:19:41.700' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2634, N'NATAN SAMUEL WAJNER SZPER', 1897567, CAST(N'2018-04-21 13:19:41.743' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2635, N'FABIANA --- WEISZ COLLAZO', 1932013, CAST(N'2018-04-21 13:19:41.790' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2636, N'ELISABTH WIEDER MULLER', 713046, CAST(N'2018-04-21 13:19:41.837' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2637, N'SALOME WOLMAN KELMAN', 3448132, CAST(N'2018-04-21 13:19:41.880' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2638, N'JORGE XAVIER SALDANHA', 2840763, CAST(N'2018-04-21 13:19:41.927' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2639, N'ANTONIETA MONICA XAVIER YELPO', 1438880, CAST(N'2018-04-21 13:19:41.970' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2640, N'AMER YACKS GALEANO', 3575652, CAST(N'2018-04-21 13:19:42.017' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2641, N'HORACIO PIERRE YANES MEDEROS', 1703364, CAST(N'2018-04-21 13:19:42.060' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2642, N'RICARDO ELPIDIO YAQUE COSTA', 3195866, CAST(N'2018-04-21 13:19:42.107' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2643, N'EDUARDO JULIO YOCCO PIRIZ', 3069258, CAST(N'2018-04-21 13:19:42.150' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2644, N'BORIS SILVESTRE YOFFRE FUNTES', 2644967, CAST(N'2018-04-21 13:19:42.197' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2645, N'ROBERT ADOLFO YROA CEDRES', 2818469, CAST(N'2018-04-21 13:19:42.243' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2646, N'JOSE FRANCISCO YURRAMENDI PEREZ', 2997693, CAST(N'2018-04-21 13:19:42.290' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2647, N'JOSE FRANCISCO YURRAMENDI FERRO', 3627591, CAST(N'2018-04-21 13:19:42.337' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2648, N'MARIO ZABALA ', 1431097, CAST(N'2018-04-21 13:19:42.380' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2649, N'OSCAR ZAGARZAZU CONRADI', 2870011, CAST(N'2018-04-21 13:19:42.430' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2650, N'MAURICIO RAUL ZARAUZ SILVA', 3108654, CAST(N'2018-04-21 13:19:42.470' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2651, N'DIONISIO JAVIER ZARAUZ SILVA', 2537788, CAST(N'2018-04-21 13:19:42.517' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2652, N'MARÍA CRISTINA ZAS BARREIRO', 1234202, CAST(N'2018-04-21 13:19:42.560' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2653, N'HORACIO GUALBERTO ZAUG ZERPA', 2738188, CAST(N'2018-04-21 13:19:42.610' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2654, N'MARIO ZELARAYAN NOCETI', 1255775, CAST(N'2018-04-21 13:19:42.657' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2655, N'JORGE ZIMINOV KRAMAROV', 2616697, CAST(N'2018-04-21 13:19:42.703' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2656, N'LEANDRO ZIPITRIA DEAMBROSIO', 1736192, CAST(N'2018-04-21 13:19:42.750' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2657, N'MARIELA ZITO OTEIZA', 1596734, CAST(N'2018-04-21 13:19:42.793' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2658, N'MARCOS ZOPPIS BOLIA', 935754, CAST(N'2018-04-21 13:19:42.840' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2659, N'DANIEL CARLOS ZORILLA DE SAN MARTN BLANCO', 1275258, CAST(N'2018-04-21 13:19:42.887' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2660, N'JUAN ANDRES ZORRILLA DE SAN MART SPERANZA', 1577155, CAST(N'2018-04-21 13:19:42.933' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2661, N'GUSTAVO ZUBIA BURGHI', 1209165, CAST(N'2018-04-21 13:19:42.977' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2662, N'ROSA CRISTINA ZUBILLAGA LENZNER', 1502563, CAST(N'2018-04-21 13:19:43.020' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2663, N'FRANCISCO ADHEMAR ZUNINO TORTEROLA', 3427819, CAST(N'2018-04-21 13:19:43.067' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2664, N'JAVIER ORACIO ZUNINO COLLAZO', 3788258, CAST(N'2018-04-21 13:19:43.110' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2665, N'ALBERTO ZUNINO MONSERRAT', 3042327, CAST(N'2018-04-21 13:19:43.157' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2666, N'DUILIO ALFONSO ZUPPARDI FERRARI', 1310805, CAST(N'2018-04-21 13:19:43.203' AS DateTime))
GO
INSERT [dbo].[Alumno] ([IdAlumno], [NombreAlumno], [DniAlumno], [Registro]) VALUES (2667, N'ELISA MARGARITA ZURBRUCK ARCE', 1977126, CAST(N'2018-04-21 13:19:43.247' AS DateTime))
GO

