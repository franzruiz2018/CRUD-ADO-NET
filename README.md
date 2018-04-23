# CRUD con MVC 5 y ADO.NET

## Creacion del CRUD Alumno

Pasos:

1. Creación de la tabla Alumno y los procedimientos almacenados

```
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
```

```
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
```

```
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
```

2. Creación del proyecto en visual studio, se configura la cadena de conexión en el Web.config (Lluego de la etiqueta Configuracion) y de la clase Alumno en el Modelo

```
 <connectionStrings>
    <add name="con" providerName="System.Data.SqlClient" connectionString="Data Source=. ;Initial Catalog=DemoAlumno; Persist Security Info=True; User=sa;Password=123;"/>
   </connectionStrings>
```


```
 public class Alumno
    {
      
        public int IdAlumno { get; set; }
       
        public string NombreAlumno { get; set; }
     
        public int DniAlumno { get; set; }       

        public DateTime Registro { get; set; }

    }
```

3. Creación de una Carpeta Repositorio donde crearemos una calse RepositorioAlumnos.cs el cual nos servira para conectarnos con la base de datos.

```
namespace CRUDAlumno.Repositorio
{
    public class RepositorioAlumno
    {
        
    }
}
```

```
using System.Configuration;
using System.Data.SqlClient;
using CRUDAlumno.Models;
using System.Data;
```

```
 private SqlConnection _con;

        private void Conexion()
        {
            string conex = ConfigurationManager.ConnectionStrings["con"].ToString();
            _con = new SqlConnection(conex);
        }
```

```
 public bool RegistrarAlumno(Alumno a)
        {
            Conexion();
            int i;
            using (SqlCommand command = new SqlCommand("sp_registrar_alumno", _con))
            {                
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@NombreAlumno", a.NombreAlumno);
                command.Parameters.AddWithValue("@DniAlumno", a.DniAlumno);
                _con.Open();
                i = command.ExecuteNonQuery();   
            }
            _con.Close();
            if (i >= 1)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
```

```
public List<Alumno> ListaAlumnos()
        {
            Conexion();
            List<Alumno> alumnos = new List<Alumno>();
            using (SqlCommand command = new SqlCommand("sp_listar_alumno", _con))
            {
                command.CommandType = CommandType.StoredProcedure;
                _con.Open();
                SqlDataReader reader = command.ExecuteReader();

                while(reader.Read())
                {
                    Alumno a = new Alumno()
                    {
                        IdAlumno = Convert.ToInt32(reader["IdAlumno"]),
                        NombreAlumno = Convert.ToString(reader["NombreAlumno"]),
                        DniAlumno = Convert.ToInt32(reader["DniAlumno"]),
                        Registro = Convert.ToDateTime(reader["Registro"])
                    };
                    alumnos.Add(a);
                }
                _con.Close();            
            }
            return alumnos;
        }

```

```
 public bool ActualizarAlumno(Alumno a)
        {
            Conexion();
            int i;
            using (SqlCommand command = new SqlCommand("sp_actualizar_alumno", _con))
            {
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@IdAlumno", a.IdAlumno);
                command.Parameters.AddWithValue("@NombreAlumno", a.NombreAlumno);
                command.Parameters.AddWithValue("@DniAlumno", a.DniAlumno);
                _con.Open();
                i = command.ExecuteNonQuery();
            }
            _con.Close();
            if (i >= 1)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
```

```
 public bool BorrarAlumno(int id)
        {
            Conexion();
            int i;
            using (SqlCommand command = new SqlCommand("sp_borrar_alumno", _con))
            {
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@IdAlumno", id);             
                _con.Open();
                i = command.ExecuteNonQuery();
            }
            _con.Close();
            if (i >= 1)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
```

4. Se crea un clase Alumno en el controlador

```
 public ActionResult Index()
        {
            RepositorioAlumno repositorio=new RepositorioAlumno();          
            ViewBag.ListaAlumnos = repositorio.ListaAlumnos();
            return View();
        }
```

```
[HttpGet]
        public ActionResult RegistrarAlumno()
        {
            return View();
        
        }
        [HttpPost]
        public ActionResult RegistrarAlumno(Alumno a)
        {
            try
            {                
                    RepositorioAlumno repositorio = new RepositorioAlumno();
                    if (repositorio.RegistrarAlumno(a))
                    {
                        ViewBag.Mensaje = "Se registro Correctamente";
                    }                  
                
                return View();
              
            }
            catch (Exception)
            {

                return View("Index");
            }

        }
```

```
[HttpGet]
        public ActionResult EditarAlumno(int id)
        {
            RepositorioAlumno repositorio = new RepositorioAlumno();
            return View(repositorio.ListaAlumnos().Find(x=>x.IdAlumno==id));

        }
        [HttpPost]
        public ActionResult EditarAlumno(int id, Alumno a)
        {
            try
            {
                RepositorioAlumno repositorio = new RepositorioAlumno();
                if (repositorio.ActualizarAlumno(a))
                {
                    TempData["Mensaje"] = "Se actualizó Correctamente";
                   
                }
                return RedirectToAction("index");
              
            }
            catch (Exception)
            {
                return View("Index");
            }

        }
```

```
public ActionResult BorrarAlumno(int id)
        {
            try 
	        {	        
		        RepositorioAlumno repositorio = new RepositorioAlumno();
                    if (repositorio.BorrarAlumno(id))
                    {
                        TempData["Mensaje"] = "Se borró Correctamente";
                    }
                    return RedirectToAction("Index");
	        }
	        catch (Exception)
	        {		
		        return View("Index");
	        }
            
            
        }

```

5. Se crean la Vista 


```
@{
    ViewBag.Title = "Index";
}

<h2>Listado de Alumnos</h2>

<p>Total de Alumnos:  @Enumerable.Count(ViewBag.ListaAlumnos)</p>
@Html.ActionLink("Registrar Alumno", "RegistrarAlumno", null, new { @class = "btn btn-default" })


    <p class="text-success">
        @TempData["Mensaje"]
    </p>


<p></p>
    <table class="table">

        <tr>
            <th>ID</th>
            <th>Nombre</th>
            <th>DNI</th>
            <th>Registro</th>
            <th></th>


            @foreach (var alumno in ViewBag.ListaAlumnos)
            {
            <tr>
                <td>@alumno.IdAlumno</td>
                <td>@alumno.NombreAlumno</td>
                <td>@alumno.DniAlumno</td>
                <td>@Convert.ToDateTime(alumno.Registro).ToString("dd/MM/yyyy hh:mm")</td>
                <td>
                    @Html.ActionLink("Actualizar", "EditarAlumno", new { id = alumno.IdAlumno }, new { @class = "btn btn-default" }) &nbsp;&nbsp;
                @Html.ActionLink("Eliminar", "BorrarAlumno", new { id = alumno.IdAlumno }, new { @class = "btn btn-default", onclick="return confirm('Seguro que desea borrar');" })
            </td>
        </tr>
            }
        </table>


```

```
@model CRUDAlumno.Models.Alumno

@using (Html.BeginForm())
{
    <div class="form-horizontal">

        <h2>Registrar Alumnos</h2>

        <div class="form-group">
            <label class="control-label col-md-2" for="NombreAlumno">Nombre del Alumno</label>
            <div class="col-md-10">
                <input class="text-box single-line" id="NombreAlumno" name="NombreAlumno" type="text" value="" />
            </div>
        </div>

        <div class="">
            <label class="control-label col-md-2" for="DniAlumno">Dni </label>
            <div class="col-md-10">
                <input class="text-box single-line" id="DniAlumno" name="DniAlumno" type="text" value="" />
            </div>
        </div>

        <div class="">
            <div class="col-md-offset-2 col-md-10">
                <input type="submit" value="Registrar" class="btn btn-default" />
            </div>
        </div>

        <div class="form-group">
            <div class="col-md-offset-2 col-md-10 text-success">
                @ViewBag.Mensaje
            </div>
        </div>
    </div>
}

<div>
    @Html.ActionLink("Regresar", "Index", null, new { @class="btn btn-success"})
</div>

```

```
@model CRUDAlumno.Models.Alumno

@using (Html.BeginForm())
{
   
    
    <div class="form-horizontal">
       
        <h2>Actulizar Alumnos</h2>
            
            <div class="form-group">
                <label class="control-label col-md-2 text-left" >Id</label>
                <div class="col-md-10">
                  <label class="text-box single-line">@Model.IdAlumno</label> 
                   <input type="hidden" name="IdAlumno" value="@Model.IdAlumno" />                
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-md-2 text-left">Nombre Alumno</label>
                <div class="col-md-10">
                    <input class="text-box single-line" id="NombreAlumno" name="NombreAlumno" type="text" value="@Model.NombreAlumno">
               
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-md-2 text-left">Dni Alumno</label>
                <div class="col-md-10">
                    <input class="text-box single-line" id="DniAlumno" name="DniAlumno" type="text" value="@Model.DniAlumno">
                
                </div>
            </div>          

            <div class="form-group">
                <div class="col-md-offset-2 col-md-10">
                    <input type="submit" value="Save" class="btn btn-default">
                </div>
            </div>
        </div>
    
 



}

<div>
    @Html.ActionLink("Back to List", "Index")
</div>

```

## Creacion de la Validación de los formularios con JQuery Validate

Actualizamos nuestro paquete de Jquery a traves de NuGet, para ello vamos a Inicio Rapido CTRL + Q y escribimos Nuget, el la parte inferior nos aparece la consola de Administrador de paquetes, ahi escribimos la siguiente linea install-package jquery.

Para actualizar  Jquery Validate de igual manera utilizaremos el comando Install-Package jQuery.Validation -Version 1.17.0

Referencias:
https://www.nuget.org/packages/jQuery/
https://www.nuget.org/packages/jquery.validation


Pasos:

1. Creamos un archivo sitio.js donde escribiremos los codigos de js que necesitaremos

>Importante!!! Asegurarnos que nuestros codigos de js esten debajo del Jquery y JqueryValidate. Puede aperecer este error "$ is not defined"

```
	<script src="~/Scripts/jquery-3.3.1.min.js"></script>  
    <script src="~/Scripts/jquery.validate.min.js"></script>
    <script src="~/Scripts/bootstrap.min.js"></script>
    <script src="~/Scripts/sitio.js"></script>
```

2. Escrbimos el siguiente codigo en el archivo sitio.js:

```
$(function() {   
    $("form[name='registro']").validate({       
        rules: {           
            NombreAlumno: "required",
            DniAlumno: {
                required: true,
                number: true
            }   
        },       
        messages: {
            NombreAlumno: "Please ingrese su nombre",
            DniAlumno: {
                required: "Ingrese su dni",
                number: "Solo debe contener números"
            }
          
        },       
        submitHandler: function (form) {
            form.submit();
        }
    });
});
```

Se muestra el codigo original para futuras modificaciones

```
// Wait for the DOM to be ready
$(function() {
  // Initialize form validation on the registration form.
  // It has the name attribute "registration"
  $("form[name='registration']").validate({
    // Specify validation rules
    rules: {
      // The key name on the left side is the name attribute
      // of an input field. Validation rules are defined
      // on the right side
      firstname: "required",
      lastname: "required",
      email: {
        required: true,
        // Specify that email should be validated
        // by the built-in "email" rule
        email: true
      },
      password: {
        required: true,
        minlength: 5
      }
    },
    // Specify validation error messages
    messages: {
      firstname: "Please enter your firstname",
      lastname: "Please enter your lastname",
      password: {
        required: "Please provide a password",
        minlength: "Your password must be at least 5 characters long"
      },
      email: "Please enter a valid email address"
    },
    // Make sure the form is submitted to the destination defined
    // in the "action" attribute of the form when valid
    submitHandler: function(form) {
      form.submit();
    }
  });
});
```

El formulario que llama la funcion es  registro como se muestra en la siguiente  $("form[name='registro']"). para ello es necesario modificar en el archivo RegistrarAlumno.cshtml la linea Html.BeginForm agregandole el nombre y id del formulario.

```
@using (Html.BeginForm(null, null, FormMethod.Post, new { name = "registro", id = "registro" }))
```

Para el formulario de actualizacion se realiza lo mismo copiando los mismos codigos, cambiando solo el nombre de formulario y los mensajes.

```
@using (Html.BeginForm(null, null, FormMethod.Post, new { name = "editar", id = "editar" }))
```

```
$(function () {
    $("form[name='editar']").validate({
        rules: {
            NombreAlumno: "required",
            DniAlumno: {
                required: true,
                number: true
            }
        },
        messages: {
            NombreAlumno: "Please ingrese su nombre para la actualizacion",
            DniAlumno: {
                required: "Ingrese su dni  para la actualizacion",
                number: "Solo debe contener números  en la actualizacion"
            }

        },
        submitHandler: function (form) {
            form.submit();
        }
    });
});
```

## Creación de una paginacion con Ajax

Pasos

1. Creación del procedimiento: sp_listar_alumnos_paginado

```
create procedure sp_listar_alumnos_paginado
@PageIndex int=1,
@PageSize int=10,
@PageCount int=0 output
as
SET @PageCount = (SELECT COUNT(1) FROM Alumno)
SET @PageCount = CASE WHEN (@PageCount%@PageSize=0) THEN @PageCount/@PageSize ELSE @PageCount/@PageSize +1 END 
SELECT * FROM(SELECT ROW_NUMBER() OVER(ORDER BY IdAlumno)RowID, * FROM Alumno) Alumno WHERE RowID BETWEEN (@PageSize * (@PageIndex-1) + 1) AND (@PageIndex * @PageSize)

```
 Comprobando

 ```
 declare @salida int
exec sp_listar_alumnos_paginado 1,10,@salida output
select @salida

 ```


2. Instalación de la libreria Unobtrusive de ajax a trabes de NuGet de visual studio Install-Package Microsoft.jQuery.Unobtrusive.Ajax -Version 3.2.5 

3. En el repositorio crear la clase ListaAlumnosPaginacion el cual nos devuelve la lista de alumnos paginados

 ```
 public List<Alumno> ListaAlumnosPaginacion(int pageIndex, int pageSize, out int pageCount)
        {
            List<Alumno> Alumnos = new List<Alumno>();
            using (SqlConnection conexion = new SqlConnection("server=.;database=DemoAlumno;user=sa;password=123"))
            {
                conexion.Open();
                using (SqlCommand comando = new SqlCommand("sp_listar_alumnos_paginado", conexion))
                {
                    comando.CommandType = CommandType.StoredProcedure;
                    comando.CommandTimeout = 0;
                    comando.Parameters.AddWithValue("@pageIndex", pageIndex);
                    comando.Parameters.AddWithValue("@pageSize", pageSize);
                    comando.Parameters.AddWithValue("@pageCount", 0).Direction = ParameterDirection.Output;
                    using (SqlDataReader reader = comando.ExecuteReader())
                    {
                        if (reader != null)
                        {
                            Alumno a = null;
                            while (reader.Read())
                            {
                                a = new Alumno();
                                a.IdAlumno = (int)reader["IdAlumno"];
                                a.NombreAlumno = reader["NombreAlumno"].ToString();
                                a.DniAlumno = (int)reader["DniAlumno"];
                                a.Registro = (DateTime)reader["Registro"];

                                Alumnos.Add(a);
                            }
                        }
                    }

                    pageCount = (int)comando.Parameters["@pageCount"].Value;
                }
            }
            return Alumnos;
        }

  ```

4. En el controlador se crea 3 clases
  ```
    public ActionResult ListadoAlumnos(int id=1)
        {
           return View(buscar(id));
        }

        public ActionResult ListaAlumnoParcial(int id=1)
        {
            return PartialView(buscar(id));
        }

        public List<Alumno> buscar(int pageIndex)
        {
            RepositorioAlumno repositorio = new RepositorioAlumno();
            int pageCount = 0;
            List<Alumno> ListaAlumnos = repositorio.ListaAlumnosPaginacion(pageIndex, 10, out pageCount);
            ViewBag.PageCount = pageCount;
            ViewBag.PageIndex = pageIndex;
            return ListaAlumnos;
        }
  ```

5. Se crea la vista ListadoAlumnos

    ```
@model IEnumerable<CRUDAlumno.Models.Alumno>
@{
    ViewBag.Title = "ListadoAlumnos";
    Layout = "~/Views/Shared/_Layout.cshtml";
}

<h2>Listado Alumnos</h2>


@Html.ActionLink("Registrar Alumno", "RegistrarAlumno", null, new { @class = "btn btn-default" })


<p class="text-success">
    @TempData["Mensaje"]
</p>


<p></p>

<div id="DivListAlumnos">
    @Html.Partial("ListaAlumnoParcial",Model)
</div>
  ```

6. Se crea la vista parcial ListaAlumnoParcial

  ```
	@model IEnumerable<CRUDAlumno.Models.Alumno>

<table class="table">

    <tr>
        <th>ID</th>
        <th>Nombre</th>
        <th>DNI</th>
        <th>Registro</th>
        <th></th>


        @foreach (var alumno in Model)
        {
        <tr>
            <td>@alumno.IdAlumno</td>
            <td>@alumno.NombreAlumno</td>
            <td>@alumno.DniAlumno</td>
            <td>@Convert.ToDateTime(alumno.Registro).ToString("dd/MM/yyyy hh:mm")</td>
            <td>
                @Html.ActionLink("Actualizar", "EditarAlumno", new { id = alumno.IdAlumno }, new { @class = "btn btn-default" }) &nbsp;&nbsp;
                @Html.ActionLink("Eliminar", "BorrarAlumno", new { id = alumno.IdAlumno }, new { @class = "btn btn-default", onclick = "return confirm('Seguro que desea borrar');" })
            </td>
        </tr>
        }
    </table>

    <ul class="pagination">
        <li>@Ajax.ActionLink("Primero", "ListaAlumnoParcial", new { id = 1 }, new AjaxOptions { UpdateTargetId = "DivListAlumnos", InsertionMode = InsertionMode.Replace })</li>
        <li>@Ajax.ActionLink("Anterior", "ListaAlumnoParcial", new { id = (ViewBag.PageIndex - 1 < 1) ? 1 : (ViewBag.PageIndex - 1) }, new AjaxOptions { UpdateTargetId = "DivListAlumnos", InsertionMode = InsertionMode.Replace })</li>
        <li><span>Pág. @ViewBag.PageIndex de @ViewBag.PageCount</span></li>
        <li>@Ajax.ActionLink("Siguiente", "ListaAlumnoParcial", new { id = (ViewBag.PageIndex + 1 > ViewBag.PageCount) ? ViewBag.PageCount : (ViewBag.PageIndex + 1) }, new AjaxOptions { UpdateTargetId = "DivListAlumnos", InsertionMode = InsertionMode.Replace })</li>
        <li>@Ajax.ActionLink("Ultimo", "ListaAlumnoParcial", new { id = ViewBag.PageCount }, new AjaxOptions { UpdateTargetId = "DivListAlumnos", InsertionMode = InsertionMode.Replace })</li>
    </ul>

```


7. Para la paginación es el siguiente codigo:

 ```
   <ul class="pagination">
        <li>@Ajax.ActionLink("Primero", "ListaAlumnoParcial", new { id = 1 }, new AjaxOptions { UpdateTargetId = "DivListAlumnos", InsertionMode = InsertionMode.Replace })</li>
        <li>@Ajax.ActionLink("Anterior", "ListaAlumnoParcial", new { id = (ViewBag.PageIndex - 1 < 1) ? 1 : (ViewBag.PageIndex - 1) }, new AjaxOptions { UpdateTargetId = "DivListAlumnos", InsertionMode = InsertionMode.Replace })</li>
        <li><span>Pág. @ViewBag.PageIndex de @ViewBag.PageCount</span></li>
        <li>@Ajax.ActionLink("Siguiente", "ListaAlumnoParcial", new { id = (ViewBag.PageIndex + 1 > ViewBag.PageCount) ? ViewBag.PageCount : (ViewBag.PageIndex + 1) }, new AjaxOptions { UpdateTargetId = "DivListAlumnos", InsertionMode = InsertionMode.Replace })</li>
        <li>@Ajax.ActionLink("Ultimo", "ListaAlumnoParcial", new { id = ViewBag.PageCount }, new AjaxOptions { UpdateTargetId = "DivListAlumnos", InsertionMode = InsertionMode.Replace })</li>
    </ul>
 ```

 ## Creacion de un boton para imprimir los resultados

 Los trigger son disparadores que desencadenan acciones en la tabla asociada despues de un insert, update o delete. Ayudan a las tareas de administracion y mantenimiento de base de datos 

 Pasos

 1.	Creamos las funciones que te permiten ocultar y mostrar columnas de una tabla

```
function hideTableColumns(idTable, columnsIndexs) {
    $("#" + idTable + " tr").each(function () {
        for (var i = 0; i < columnsIndexs.length; i++) {
            var colIndex = columnsIndexs[i];
            $($(this).find("th")[colIndex]).hide();
            $($(this).find("td")[colIndex]).hide();
        }
    });
}

function showTableColumns(idTable, columnsIndexs) {
    $("#" + idTable + " tr").each(function () {
        for (var i = 0; i < columnsIndexs.length; i++) {
            var colIndex = columnsIndexs[i];
            $($(this).find("th")[colIndex]).show();
            $($(this).find("td")[colIndex]).show();
        }
    });
}

```

2. Agregamos la la libreria jQuery.print.js y creamos la funcion que nos permite imprimir el contenido, pero antes se oculta las columnas que no se requieren. Se puede ocultar varias columnas a la ves hideTableColumns('table1', [0,2])

```
function ImprimirPrintJQuery(ContenidoID) {
    hideTableColumns('alumnosTabla', [4])
    $('#' + ContenidoID).print();
    showTableColumns('alumnosTabla', [4])
}

```

3. Se crea el boton que hace llamado a la función

```
<input type="button" class="btn btn-default" onclick="ImprimirPrintJQuery('ImprimirLista')" value="Imprimir PrintJQuery" />

```

## Creando Triger para auditoria de la base de datos

1. Se crea una tabla auditoria

```
CREATE TABLE [dbo].[RegistroLog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idAlumnoLog] [int] NULL,
	[fecha] [datetime] NULL,
	[tabla] [varchar](50) NULL,
	[accion] [varchar](50) NULL,
 CONSTRAINT [PK_RegistroLog] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
```

2. Se crea el Trigger para la accion de insertar, Verificando que el dni no tenga 00000000, de se asi cancela la transacción.

```
alter trigger tr_alumno_insert
on alumno
for insert
as
begin
set nocount on; --evita que se muestren el detalle de los cambios realizado
if(select [DniAlumno] from inserted)=00000000
	begin	
	rollback transaction
	end
else
	begin
	insert into RegistroLog(idAlumnoLog,fecha,[tabla] ,[accion] ) select IdAlumno,getdate(),'Alumno','Insertar'
	from inserted
	end
end

```

3. Se crea un trigger para la accion de delete

```
alter trigger tr_alumno_delete
on alumno
for delete
as
begin
set nocount on; --evita que se muestren el detalle de los cambios realizado
insert into RegistroLog(idAlumnoLog,fecha,[tabla] ,[accion]) select IdAlumno,getdate(),'Alumno','Eliminar'
from deleted
end
```

## Cursor 

Los cursores son una herramienta de SQL que nos permite recorrer el resultado de una consulta SQL y realizar operaciones en cada paso de esta. Es así como nos ayuda a realizar operaciones que de otro modo serían más complejas o imposibles.

Un ejemplo de un cursor el cual en cada seleccion nos muestra un registro

```
--Declaramos la variable de tipo cursor
--donde almacenamos los registros de la consulta
--Alumno
DECLARE micursor CURSOR
     FOR select * from Alumno
--aperturamos el cursor
OPEN micursor
--accedemos al primer registro del cursos con el operador
--next
FETCH NEXT FROM micursor
--Cerramos el cursor
close micursor
--liberamos el cursor con el operador deallocate
deallocate micursor
```

Se crea un cursor que nos permita devolver un reporte de alumnos

```
create procedure sp_reporte_listado_Alumnos
as
--Cursos -  Reporte  de Alumnos

--Declaramos las variables locales que representaran
--el valor de las columnas
DECLARE @id char(8), @idAlumno char(8),@NombreAlumno char(30),
@DniAlumno char(10),@Registro char(10), @TotalAlumnos char(8)
--declaramos el cursor con la consulta de la tabla Alumno
Set @TotalAlumnos = (select count(1) from Alumno)

Declare micursor cursor for
select top 20  ROW_NUMBER() over(order by IdAlumno) Id,  right('00000'+ltrim(rtrim(IdAlumno)),5) IdAlumno,NombreAlumno,right('00000000'+ ltrim(rtrim(DniAlumno)),8) DniAlumno,convert(varchar(10),registro,103) Registro from Alumno

--aperturamos el cursos
OPEN micursor

----FETCH next from micursor --Recorremos cada fila del Cursor

--obtenemos el primer registro y enviamos el valor
--a las variables correspondientes
FETCH micursor INTO @id, @idAlumno,@NombreAlumno,@DniAlumno,@Registro

--Imprimimos la cabecera del reporte
PRINT 'Listado de Alumnos'
PRINT ''
PRINT 'Total de Alumnos:' + CAST(@TotalAlumnos AS VARCHAR)  
PRINT ''
PRINT 'NUM       CODIGO    ALUMNO                             DNI         REGISTRO'
PRINT '------------------------------------------------------------------------------'
--Implementamos una estructura iterativa para poder
--imprimir todos los registros
WHILE @@FETCH_STATUS=0
BEGIN
     PRINT @id+space(2)+ @idAlumno+space(2)+@NombreAlumno+space(5)+@DniAlumno+space(2)+@Registro
     FETCH micursor INTO @id, @idAlumno,@NombreAlumno,@DniAlumno,@Registro
END

 close micursor

 deallocate	micursor
```

Resultado 

```
Listado de Alumnos
 
Total de Alumnos:2674    
 
NUM       CODIGO    ALUMNO                             DNI         REGISTRO
------------------------------------------------------------------------------
1         00001     MARIA INES ABADIE FOSSATTI         00995234    21/04/2018
2         00002     RAQUEL ELIZABET ABAL NICOLARI      01249609    21/04/2018
3         00003     MARÍA ROSARIO ABALDE MARTINEZ      01385554    21/04/2018
4         00004     ALBERTO OSCAR ABALOS ROCHON        02543328    21/04/2018
5         00005     ARIEL ABARNO SILVA                 03326849    21/04/2018
6         00006     WINSTON FRANKLIN ABASCAL BELOQ     03588497    21/04/2018
7         00007     PABLO DANIEL ABDALA SCHWARZ        01987304    21/04/2018
8         00008     MERCEDES MARIA ABDALA SOSA         01455322    21/04/2018
9         00009     JORGE MARIA ABIN DE MARIA          01247369    21/04/2018
10        00010     ALCIDES ABREU HERNANDEZ            03593956    21/04/2018
11        00011     MIRTA GRACIELA ABREU NUÑEZ         03449648    21/04/2018
12        00012     SERGIO ABREU BONILLA               01033368    21/04/2018
13        00013     DORITA ABUCHALJA SEADE             01178833    21/04/2018
14        00014     HUGO JOSE ACHUGAR FERRARI          00655000    21/04/2018
15        00015     JOSE BARTOLOME ACOSTA MADERA       03877670    21/04/2018
16        00016     NELSON EDUARDO ACOSTA MARTINEZ     01679960    21/04/2018
17        00017     JUAN CARLOS ACOSTA PEREZ           03205255    21/04/2018
18        00018     MARTHA VANDA ACOSTA PEREIRA        01793175    21/04/2018
19        00019     MABEL ACOSTA SOSA                  01250238    21/04/2018
20        00020     EFRAIN ANDRES ACUÑA CABRERA        03694615    21/04/2018

```

Crear un cursor para guardar ciertos campos en una tabla temporal

> Existen tablas temporales locales y globales que pueden ser creadas a partir de CREATE TABLE #nombreTabla y CREATE TABLE ##nombreTabla y pueden ser eliminadas con DROP TABLE y solo están vigentes durante la conexión o conexiones que fueron abiertas.

```
create procedure sp_listado_Alumnos_tabla_temporal
as
--Cursos -  Reporte  de Alumnos

--Declaramos las variables locales que representaran
--el valor de las columnas
DECLARE @id char(8), @idAlumno char(8),@NombreAlumno char(30),
@DniAlumno char(10),@Registro char(10), @TotalAlumnos char(8)
--declaramos el cursor con la consulta de la tabla Alumno
--Creamos una tabla temporal
CREATE TABLE #tablaTemporal( IdAlumno varchar(8) , DniAlumno varchar(8) )

Declare micursor cursor for
select top 20  ROW_NUMBER() over(order by IdAlumno) Id,  right('00000'+ltrim(rtrim(IdAlumno)),5) IdAlumno,NombreAlumno,right('00000000'+ ltrim(rtrim(DniAlumno)),8) DniAlumno,convert(varchar(10),registro,103) Registro from Alumno

--aperturamos el cursos
OPEN micursor

----FETCH next from micursor --Recorremos cada fila del Cursor

--obtenemos el primer registro y enviamos el valor
--a las variables correspondientes
FETCH micursor INTO @id, @idAlumno,@NombreAlumno,@DniAlumno,@Registro

WHILE @@FETCH_STATUS=0
BEGIN
	insert into #tablaTemporal ( IdAlumno , DniAlumno ) values (@idAlumno,@DniAlumno)
    FETCH micursor INTO @id, @idAlumno,@NombreAlumno,@DniAlumno,@Registro
END

 close micursor
 deallocate	micursor

 select * from #tablaTemporal
 drop table #tablaTemporal
 ```

## Funciones
Rutina almacenada que recibe unos parámetros escalares de entrada, luego los procesa según el cuerpo definido de la función y por último retorna un resultado de un tipo especifico que permitirá cumplir un objetivo.
SQL Server proporciona numerosas funciones integradas y permite crear funciones definidas por el usuario.

**Tipos de Funciones**

Funciones del Sistema:

SQL Server cuenta con una gran variedad de funciones dependiendo de los valores o configuraciones que deseamos realizar, a continuación mostramos algunas funciones del sistema:

Funciones de Agregado: SUM, AVG, COUNT,MAX, MIN
Funciones de Fecha y Hora: GETDATE, DAY, MONTH, YEAR, DATEADD, DATEDIF, ISDATE
Funciones Matemáticas: ABS, RAND, LOG10, SQRT, POWER, TAN, PI, RADIANS

Funciones definidas por el usuario:

Las funciones definidas por el usuario de SQL Server son rutinas que aceptan parámetros, realizan una acción, como un cálculo complejo, y devuelven el resultado de esa acción como un valor (único o conjunto de valores).

 ```
--Evaluamos primero si ya existe la función
--que queremos implementar, si ya existe la eliminamos
IF object_id('fn_lista_por_ultimo_digitos_dni') is not null
BEGIN
     DROP FUNCTION dbo.fn_lista_por_ultimo_digitos_dni
END
go
--Implementamos la función con un solo parámetro de entrada
CREATE FUNCTION fn_lista_por_ultimo_digitos_dni (@dni as int)
RETURNS TABLE
AS
     RETURN (SELECT *
     from alumno 
     where DniAlumno like '%'+convert(varchar(8), @dni)+'')
GO
--Ejecutamos la función con un select,
--Mostraremos los alumnos que coninciden con los ultimos digitos 
select * from dbo.fn_lista_por_ultimo_digitos_dni(2)
go
 ```