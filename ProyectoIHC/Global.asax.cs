using ProyectoIHC.Utils;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace ProyectoIHC
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            
        }
        protected void Session_Start(Object sender, EventArgs e)
        {
            Session["listaJuguetes"] = new List<Producto>();
        }

    }
}