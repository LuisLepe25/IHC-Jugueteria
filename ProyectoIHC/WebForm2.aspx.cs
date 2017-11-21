using ProyectoIHC.Utils;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoIHC
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Producto> lst = Session["listaJuguetes"] as List<Producto>;
            Producto p;
            String id;
            String nombre;
            String precio;
            //CarritoChido.js manda llamar esta pagina con datos en el URL para agregar o quitar productos de la variable de sesion
            if (Request.QueryString["accion"] == "agregar")
            {
                id = Request.QueryString["id"];
                nombre = Request.QueryString["nombre"];
                precio = Request.QueryString["precio"];
                p = new Producto(id, nombre, precio);
                lst.Add(p);
            }
            else
            {
                id = Request.QueryString["id"];
                nombre = Request.QueryString["nombre"];
                precio = Request.QueryString["precio"];

                var item = lst.FirstOrDefault(pro => pro.id == id);
                lst.Remove(item);
            }
            
        } 
    }
}