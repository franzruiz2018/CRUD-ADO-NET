using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
//Configuracion
using System.Configuration;
using System.Data.SqlClient;
using CRUDAlumno.Models;
using System.Data;

namespace CRUDAlumno.Repositorio
{
    public class RepositorioAlumno
    {
        private SqlConnection _con;

        private void Conexion()
        {
            string conex = ConfigurationManager.ConnectionStrings["con"].ToString();
            _con = new SqlConnection(conex);
        }

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
    }
}