using ProyectoIHC.Utils;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoIHC
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            actualizarCarrito();
        }

        protected void actualizarCarrito()
        {
            List<Producto> lst = this.Session["listaJuguetes"] as List<Producto>;
            if (lst.Count > 0)
            {
                carrito.Attributes.Add("class", carrito.Attributes["class"].ToString().Replace("empty", ""));
                conteo1.InnerHtml = lst.Count.ToString();
                conteo2.InnerHtml = (lst.Count + 1).ToString();
                int precioTotal = 0;
                foreach (Producto p in lst)
                {
                    String nombre = p.nombreProducto;
                    String precio = p.precio.ToString();
                    precioTotal += p.precio;
                    String id = p.id;
                    cuerpoCarrito.InnerHtml += "<li class='product'><div class='row'><div class='product-details'><h3><a>" + nombre + "</a></h3><span class='price'>$" + precio + "</span><div class='actions'><a data-id='" + id + "' data-name='" + nombre + "' data-price='" + precio + "' class='delete-item'>Delete</a></div></div></div></li>";
                }
                precioTotalSpan.InnerHtml = precioTotal.ToString();
            }
        }
    }
}