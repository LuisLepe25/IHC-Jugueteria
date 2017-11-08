using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoIHC
{
    public partial class Encuesta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        
        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            if (match_1.Checked)
            {
                Response.Redirect("Niños_figurasaccion.aspx");
            }
            else
            {
                Response.Redirect("Niñas_Muñecas.aspx");
            }

        }
    }
}