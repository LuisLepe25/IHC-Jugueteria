using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProyectoIHC.Utils
{
    public class Producto
    {
        public String id { get; set; }
        public String nombreProducto { get; set; }
        public int precio { get; set; }

        public Producto(String id, String nombreProducto, String precio)
        {
            this.id = id;
            this.nombreProducto = nombreProducto;
            this.precio = int.Parse(precio);
        }
    }
}