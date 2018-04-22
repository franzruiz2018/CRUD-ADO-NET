using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
//Se agragar para utilizar Required
using System.ComponentModel.DataAnnotations; 

namespace CRUDAlumno.Models
{
    public class Alumno
    {
      
        public int IdAlumno { get; set; }
       
        public string NombreAlumno { get; set; }
     
        public int DniAlumno { get; set; }       

        public DateTime Registro { get; set; }

    }
}