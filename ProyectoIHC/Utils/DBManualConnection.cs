using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ProyectoIHC
{

    public class DBManualConnection : IDisposable
    {
        private SqlConnection sqlConnection = null;

        public DBManualConnection()
        {
            sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["SiteSqlServer"].ConnectionString);
            sqlConnection.Open();
        }

        ~DBManualConnection() 
        {
            Dispose();
        }

        public void Dispose()
        {
            if (sqlConnection != null)
            {
                if (sqlConnection.State == System.Data.ConnectionState.Open)
                    sqlConnection.Close();
                sqlConnection = null;
            }
        }

        public DataSet getJuguetesRecomendados(String tags, String rango)
        {
            DataSet ds = new DataSet();
            string strQuery = "SELECT j.id_juguetes as id" +
                            ", j.nombre as nombreJuguete " +
                            ", j.descripcion"+
                            ",j.precio " +
	                        ", count(*) as cantidad " +
                            "FROM [Jugueteria].[dbo].[tagsAsignados] as ta " +
                            "  INNER JOIN juguetes as j on j.id_juguetes = ta.id_juguete " +
                            "  INNER JOIN tags as t on t.id_tag = ta.id_tag " +
                            "WHERE t.id_tag in (" + tags + ") "+ rango + " " +
                            "group by j.id_juguetes " +
	                        "      ,j.nombre " +
                            "      ,j.descripcion "+
                            "      ,j.precio " +
                            "order by cantidad desc, j.nombre ";

            using (SqlCommand sqlCommand = new SqlCommand(strQuery, sqlConnection))
            {
                //sqlCommand.Parameters.AddWithValue("@tags", string.Join(",",  tags));
                using (SqlDataAdapter da = new SqlDataAdapter(sqlCommand))
                {
                    da.Fill(ds, "listaJuguetes");
                }
            }
            return ds;
        }

        public DataSet getImagen(int id)
        {
            DataSet ds = new DataSet();
            string strQuery = "SELECT [imagen] FROM [Jugueteria].[dbo].[juguetes] WHERE id_juguetes = @id;";

            using (SqlCommand sqlCommand = new SqlCommand(strQuery, sqlConnection))
            {
                sqlCommand.Parameters.AddWithValue("@id", id);
                using (SqlDataAdapter da = new SqlDataAdapter(sqlCommand))
                {
                    da.Fill(ds, "listaJuguetes");
                }
            }
            return ds;
        }
        public DataSet getEmpleados(int idEmpleado = -1, bool agregarNuevo = false)
        {
            DataSet ds = new DataSet();
            string strQuery = "select e.idEmpleado, e.nombre, e.esDeConfianza, e.numeroDeEmpleado, e.sexo, e.fechaDeNacimiento, e.fechaDeContratacion, e.idPuesto, p.nombre as NombrePuesto, e.idSupervisor, sup.nombre as nombreSupervisor, e.idHorario, h.descripcion as DescripcionHorario " +
                " , right('0000000000' + isnull(e.numerodeEmpleado, ''), 10) + ' - ' + e.nombre as descripcionCompleta " +
                " from [dbo].[SESBRSEmpleados] as e " +
                "   left join[dbo].[SESBRSPuestos] as p on e.idPuesto = p.idPuesto " +
                "   left join[dbo].[SESBRSEmpleados] as sup on e.idSupervisor = sup.idEmpleado " +
                "   left join[dbo].[SESARCHEHorario] as h on e.idHorario = h.idHorario ";
            if (idEmpleado > 0)
            {
                strQuery += " WHERE e.idEmpleado = @idEmpleado ";
            }
            else if (agregarNuevo)
            {
                strQuery += " union ";
                strQuery += "    select -1, '', 0, '', 1, null, null, null, '', null, null, null, null ";
            }
            strQuery += " ORDER BY e.nombre";
            using (SqlCommand sqlCommand = new SqlCommand(strQuery, sqlConnection))
            {
                sqlCommand.Parameters.AddWithValue("@idEmpleado", idEmpleado);
                using (SqlDataAdapter da = new SqlDataAdapter(sqlCommand))
                {
                    da.Fill(ds, "listaEmpleado");
                }
            }
            return ds;
        }

        public DataSet getHorarios(int idHorario = -1, bool agregarNuevo = false)
        {
            DataSet ds = new DataSet();
            string strQuery = "SELECT idHorario " +
                ",[descripcion] " +
                "FROM [dbo].[SESARCHEHorario] as h ";
            if (idHorario > 0)
            {
                strQuery += " WHERE h.[idHorario] = @idHorario ";
            }
            else if (agregarNuevo)
            {
                strQuery += " union ";
                strQuery += "    select -1, '' ";
            }
            strQuery += " ORDER BY descripcion, idHorario";
            using (SqlCommand sqlCommand = new SqlCommand(strQuery, sqlConnection))
            {
                SqlParameter sqlParameter = new SqlParameter()
                {
                    ParameterName = "@idHorario",
                    Value = idHorario
                };
                sqlCommand.Parameters.Add(sqlParameter);
                using (SqlDataAdapter da = new SqlDataAdapter(sqlCommand))
                {
                    da.Fill(ds, "listaHorario");
                }
            }
            return ds;
        }

        public DataSet getHorariosReales(int idAsistencia = -1, bool agregarNuevo = false)
        {
            DataSet ds = new DataSet();
            string strQuery = "SELECT a.idAsistencia, a.idEmpleado " +
                " , e.nombre as nombreEmpleado " +
                " , a.entrada, a.salida " +
                " , a.idHorarioOriginal, h.descripcion as DescripcionHorario " +
                " , a.horasNormales, a.horasExtras " +
                " , a.status " +
                " FROM [dbo].[SESARCHEAsistencia] as a " +
                " left join [dbo].[SESBRSEmpleados] as e on a.idempleado = e.idempleado " +
                " left join [dbo].[SESARCHEHorario] as h on a.idHorarioOriginal = h.idHorario " +
                " ";
            if (idAsistencia > 0)
            {
                strQuery += " WHERE a.[idAsistencia] = @idAsistencia ";
            }
            else if (agregarNuevo)
            {
                strQuery += " union ";
                strQuery += "    select -1, -1, '', null, null, null, '', null, null, 1 ";
            }
            strQuery += " ORDER BY a.entrada, e.nombre, e.numeroDeEmpleado";
            using (SqlCommand sqlCommand = new SqlCommand(strQuery, sqlConnection))
            {
                SqlParameter sqlParameter = new SqlParameter()
                {
                    ParameterName = "@idAsistencia",
                    Value = idAsistencia
                };
                sqlCommand.Parameters.Add(sqlParameter);
                using (SqlDataAdapter da = new SqlDataAdapter(sqlCommand))
                {
                    da.Fill(ds, "listaHorarioReal");
                }
            }
            return ds;
        }

        public DataSet getHorariosDeSupervisor(int idHorarioSegunSupervisores = -1, bool agregarNuevo = false)
        {
            DataSet ds = new DataSet();
            string strQuery = "SELECT hs.idHorarioSegunSupervisores " +
                " , hs.fecha " +
                " , sup.nombre as NombreSupervisor " +
                " , e.nombre as NombreEmpleado " +
                " , e.numeroDeEmpleado " +
                " , p.nombre as nombrePuesto " +
                " , hs.idEmpleado " +
                " , hs.idSupervisor " +
                " from [dbo].[SESARCHEHorarioSegunSupervisores] as hs " +
                "   left join [dbo].[SESBRSEmpleados] as e on e.idEmpleado = hs.idEmpleado " +
                "   left join [dbo].[SESBRSEmpleados] as sup on hs.idSupervisor = sup.idEmpleado " +
                "   left join[dbo].[SESBRSPuestos] as p on e.idPuesto = p.idPuesto " +
                " ";
            if (idHorarioSegunSupervisores > 0)
            {
                strQuery += " WHERE hs.idHorarioSegunSupervisores = @idHorarioSegunSupervisores ";
            }
            else if (agregarNuevo)
            {
                strQuery += " union ";
                strQuery += "    select -1, -1, '', null, null, null, '', null, null, 1 ";
            }
            strQuery += " ORDER BY hs.fecha, sup.nombre, e.nombre ";
            using (SqlCommand sqlCommand = new SqlCommand(strQuery, sqlConnection))
            {
                SqlParameter sqlParameter = new SqlParameter()
                {
                    ParameterName = "@idHorarioSegunSupervisores",
                    Value = idHorarioSegunSupervisores
                };
                sqlCommand.Parameters.Add(sqlParameter);
                using (SqlDataAdapter da = new SqlDataAdapter(sqlCommand))
                {
                    da.Fill(ds, "listaHorarioSegunSupervisores");
                }
            }
            return ds;
        }
        public DataSet getTiposDeHorario(int idTipoHorario = -1, bool agregarNuevo = false)
        {
            DataSet ds = new DataSet();
            string strQuery = "SELECT idTipoHorario " +
                ",[descripcion] " +
                ", horasNormalesMaximas " +
                "FROM[dbo].[SESARCHETipoHorario] as t ";
            if (idTipoHorario > 0)
            {
                strQuery += " WHERE t.idTipoHorario = @idTipoHorario ";
            }
            else if (agregarNuevo)
            {
                strQuery += " union ";
                strQuery += "    select -1, '', 0 ";
            }
            strQuery += " ORDER BY descripcion, idTipoHorario";
            using (SqlCommand sqlCommand = new SqlCommand(strQuery, sqlConnection))
            {
                SqlParameter sqlParameter = new SqlParameter()
                {
                    ParameterName = "@idTipoHorario",
                    Value = idTipoHorario
                };
                sqlCommand.Parameters.Add(sqlParameter);
                using (SqlDataAdapter da = new SqlDataAdapter(sqlCommand))
                {
                    da.Fill(ds, "listaTiposHorario");
                }
            }
            return ds;
        }
        public void updateHorarioReal(int idAsistencia, int? idEmpleado = null, DateTime? dtEntrada = null, DateTime? dtSalida = null, int? idHorarioOriginal = null, int? iHorasNormales = null, int? iHorasExtras = null, int? iStatus = null)
        {
            string strQuery = "UPDATE [dbo].[SESARCHEAsistencia] " +
                "set ";
            string strAnd = "";
            {
                strQuery += strAnd + " horasNormales = @horasNormales ";
                strAnd = ", ";
            }
            {
                strQuery += strAnd + " horasExtras = @horasExtras ";
                strAnd = ", ";
            }
            if (idEmpleado != null)
            {
                strQuery += strAnd + " idEmpleado = @idEmpleado ";
                strAnd = ", ";
            }
            if (dtEntrada != null)
            {
                strQuery += strAnd + " entrada = @entrada ";
                strAnd = ", ";
            }
            if (dtSalida != null)
            {
                strQuery += strAnd + " salida = @salida ";
                strAnd = ", ";
            }
            if (idHorarioOriginal != null)
            {
                strQuery += strAnd + " idHorarioOriginal = @idHorarioOriginal ";
                strAnd = ", ";
            }
            if (iStatus != null)
            {
                strQuery += strAnd + " status = @status ";
                strAnd = ", ";
            }
            strQuery += " WHERE idAsistencia = @idAsistencia; ";

            using (SqlCommand sqlCommand = new SqlCommand(strQuery, sqlConnection))
            {
                sqlCommand.Parameters.AddWithValue("@idAsistencia", idAsistencia);
                if (idEmpleado != null)
                {
                    sqlCommand.Parameters.AddWithValue("@idEmpleado", idEmpleado);
                }
                if (dtEntrada != null)
                {
                    sqlCommand.Parameters.AddWithValue("@entrada", dtEntrada);
                }
                if (dtSalida != null)
                {
                    sqlCommand.Parameters.AddWithValue("@salida", dtSalida);
                }
                if (idHorarioOriginal != null)
                {
                    sqlCommand.Parameters.AddWithValue("@idHorarioOriginal", idHorarioOriginal);
                }
                {
                    sqlCommand.Parameters.AddWithValue("@horasNormales", (iHorasNormales != null) ? iHorasNormales : (object)DBNull.Value );
                }
                {
                    sqlCommand.Parameters.AddWithValue("@horasExtras", (iHorasExtras != null) ? iHorasExtras : (object)DBNull.Value);
                }
                if (iStatus != null)
                {
                    sqlCommand.Parameters.AddWithValue("@status", iStatus);
                }
                sqlCommand.ExecuteNonQuery();
            }
        }

        public void updateHorasTrabajadas()
        {
            string strQuery = "SESARCHEUpdHorasTrabajadas";
            using (SqlCommand sqlCommand = new SqlCommand(strQuery, sqlConnection))
            {
                sqlCommand.CommandType = CommandType.StoredProcedure;
                sqlCommand.ExecuteNonQuery();
            }
        }

        public void updateHorario(int idHorario, string Descripcion = "")
        {
            string strQuery = "UPDATE SESARCHEHorario set Descripcion=@Descripcion WHERE idHorario=@idHorario; ";

            using (SqlCommand sqlCommand = new SqlCommand(strQuery, sqlConnection))
            {
                SqlParameter sqlParameter = new SqlParameter()
                {
                    ParameterName = "@Descripcion",
                    Value = Descripcion
                };
                sqlCommand.Parameters.Add(sqlParameter);
                sqlParameter = new SqlParameter()
                {
                    ParameterName = "@idHorario",
                    Value = idHorario
                };
                sqlCommand.Parameters.Add(sqlParameter);
                sqlCommand.ExecuteNonQuery();
            }
        }
        public void updateTipoHorario(int idTipoHorario, string Descripcion = "", double horasNormalesMaximas = 8)
        {
            string strQuery = "UPDATE SESARCHETipoHorario set Descripcion=@Descripcion, horasNormalesMaximas=@horasNormalesMaximas WHERE idTipoHorario=@idTipoHorario; ";

            using (SqlCommand sqlCommand = new SqlCommand(strQuery, sqlConnection))
            {
                SqlParameter sqlParameter = new SqlParameter()
                {
                    ParameterName = "@Descripcion",
                    Value = Descripcion
                };
                sqlCommand.Parameters.Add(sqlParameter);
                sqlParameter = new SqlParameter()
                {
                    ParameterName = "@horasNormalesMaximas",
                    Value = horasNormalesMaximas
                };
                sqlCommand.Parameters.Add(sqlParameter);
                sqlParameter = new SqlParameter()
                {
                    ParameterName = "@idTipoHorario",
                    Value = idTipoHorario
                };
                sqlCommand.Parameters.Add(sqlParameter);
                sqlCommand.ExecuteNonQuery();
            }
        }
        public int createNewTipoHorario(string Descripcion = "", double horasNormalesMaximas = 8)
        {
            int id = -1;

            string strQuery = "INSERT INTO SESARCHETipoHorario(Descripcion, horasNormalesMaximas) VALUES (@Descripcion, @horasNormalesMaximas); SELECT cast(@@IDENTITY as int) as id ";

            using (SqlCommand sqlCommand = new SqlCommand(strQuery, sqlConnection))
            {
                SqlParameter sqlParameter = new SqlParameter()
                {
                    ParameterName = "@Descripcion",
                    Value = Descripcion
                };
                sqlCommand.Parameters.Add(sqlParameter);
                sqlParameter = new SqlParameter()
                {
                    ParameterName = "@horasNormalesMaximas",
                    Value = horasNormalesMaximas
                };
                sqlCommand.Parameters.Add(sqlParameter);
                id = (int)sqlCommand.ExecuteScalar();
            }
            return id;
        }
        public int createNewHorario(string Descripcion = "")
        {
            int id = -1;

            string strQuery = "INSERT INTO SESARCHEHorario(Descripcion) VALUES (@Descripcion); SELECT cast(@@IDENTITY as int) as id ";

            using (SqlCommand sqlCommand = new SqlCommand(strQuery, sqlConnection))
            {
                SqlParameter sqlParameter = new SqlParameter()
                {
                    ParameterName = "@Descripcion",
                    Value = Descripcion
                };
                sqlCommand.Parameters.Add(sqlParameter);
                id = (int)sqlCommand.ExecuteScalar();
            }
            return id;
        }

    }
}