using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoIHC
{
    public partial class CargadorDeImagenes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["ImageID"] != null)
            {
                using (DBManualConnection db = new DBManualConnection())
                {
                    int id = Convert.ToInt32(Request.QueryString["ImageID"]);
                    DataSet ds = db.getImagen(id);
                    if (ds != null)
                    {
                        Byte[] bytes = (Byte[]) ds.Tables[0].Rows[0]["imagen"];
                        Response.Buffer = true;
                        Response.Charset = "";
                        Response.Cache.SetCacheability(HttpCacheability.NoCache);
                        Response.ContentType = "image/jpeg";
                        Response.AddHeader("content-disposition", "attachment;filename=" + id);
                        Response.BinaryWrite(bytes);
                        try
                        {
                            Response.Flush();
                        }
                        catch (Exception ex)
                        {
                            Response.Write(ex);
                        }
                        Response.End();
                    }
                }
            }
        }
    }
}