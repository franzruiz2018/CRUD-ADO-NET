using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CRUDAlumno.Repositorio;
using CRUDAlumno.Models;

namespace CRUDAlumno.Controllers
{
    public class AlumnoController : Controller
    {
        //
        // GET: /Alumno/
        public ActionResult Index()
        {
            RepositorioAlumno repositorio=new RepositorioAlumno();          
            ViewBag.ListaAlumnos = repositorio.ListaAlumnos();
            return View();
        }

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

        
	}
}