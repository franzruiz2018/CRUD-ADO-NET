*CRUD con MVC 5 y ADO.NET*

**Creacion del CRUD Alumno**

Pasos:

1.Creación de la tabla Alumno y los procedimientos almacenados

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

2.Creación del proyecto en visual studio, se configura la cadena de conexión en el Web.config (Lluego de la etiqueta Configuracion) y de la clase Alumno en el Modelo

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

3.Creación de una Carpeta Repositorio donde crearemos una calse RepositorioAlumnos.cs el cual nos servira para conectarnos con la base de datos.

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

**Creacion de la Validación de los formularios con JQuery Validate**

Actualizamos nuestro paquete de Jquery a traves de NuGet, para ello vamos a Inicio Rapido CTRL + Q y escribimos Nuget, el la parte inferior nos aparece la consola de Administrador de paquetes, ahi escribimos la siguiente linea install-package jquery.

Para actualizar  Jquery Validate de igual manera utilizaremos el comando Install-Package jQuery.Validation -Version 1.17.0

Referencias:
https://www.nuget.org/packages/jQuery/
https://www.nuget.org/packages/jquery.validation


Pasos:

1.Creamos un archivo sitio.js donde escribiremos los codigos de js que necesitaremos

Importante!!! Asegurarnos que nuestros codigos de js esten debajo del Jquery y JqueryValidate. Puede aperecer este error "$ is not defined"

```
	<script src="~/Scripts/jquery-3.3.1.min.js"></script>  
    <script src="~/Scripts/jquery.validate.min.js"></script>
    <script src="~/Scripts/bootstrap.min.js"></script>
    <script src="~/Scripts/sitio.js"></script>
```

2.Escrbimos el siguiente codigo en el archivo sitio.js:

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













