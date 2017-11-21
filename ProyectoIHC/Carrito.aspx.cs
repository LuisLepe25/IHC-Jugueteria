using ProyectoIHC.Utils;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoIHC
{
    public partial class Carrito : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Producto> lst = Session["listaJuguetes"] as List<Producto>;
            GridView1.DataSource = lst;
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
            try
            {
                List<Producto> lst = Session["listaJuguetes"] as List<Producto>;
                mail.To.Add(TextBox2.Text);
                mail.From = new MailAddress("deilusiones.ihc@gmail.com", "Deilusiones SA de CV", System.Text.Encoding.UTF8);
                mail.Subject = "Cotizacion juguetes - DeIlusiones";
                mail.SubjectEncoding = System.Text.Encoding.UTF8;
                mail.Body = GetGridviewData(lst);
                mail.BodyEncoding = System.Text.Encoding.UTF8;
                mail.IsBodyHtml = true;
                mail.Priority = MailPriority.High;
                SmtpClient client = new SmtpClient();
                client.Credentials = new System.Net.NetworkCredential("deilusiones.ihc@gmail.com", "ihc12345678");
                client.Port = 587;
                client.Host = "smtp.gmail.com";
                client.EnableSsl = true;
                try
                {
                    client.Send(mail);
                    Page.RegisterStartupScript("UserMsg", "<script>alert('Se envio correctamente...');</script>");
                    Label1.Text = "Se mando...";
                }
                catch (Exception ex)
                {
                    Exception ex2 = ex;
                    string errorMessage = string.Empty;
                    while (ex2 != null)
                    {
                        errorMessage += ex2.ToString();
                        ex2 = ex2.InnerException;
                    }
                    Page.RegisterStartupScript("UserMsg", "<script>alert('Hubo un error no se pudo enviar su ...');</script>");
                    Label1.Text = "Hubo un error";
                }
            }
            catch(Exception ex)
            {
                Label1.Text = "Escriba un email valido por favor...";
                
            }
        }

        // This Method is used to render gridview control
        public string GetGridviewData(List<Producto> lst)
        {
            String msg;

            msg = "<html>";
            msg += "<head></head>";
            msg += "<body><table>";
            msg += "<tr>";
            msg += "<th>Nombre Producto</th>";
            msg += "<th>Precio</th>";
            msg += "</tr>";
            foreach (Producto p in lst){
                msg += "<tr>";
                msg += "<td>"+ p.nombreProducto +"</td>";
                msg += "<td>" + p.precio + "</td>";
                msg += "</tr>";
            }
            msg += "</table></body></html>";

            return msg;
        }
    }
    
}