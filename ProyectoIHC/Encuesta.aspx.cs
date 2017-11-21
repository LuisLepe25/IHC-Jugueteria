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
            String info = "";
            for (int i = 0; i < CheckBoxList1.Items.Count; i++)
            {
                if (CheckBoxList1.Items[i].Selected)
                {
                    if(info != "")
                    {
                        info += ", ";
                    }
                    info += (CheckBoxList1.Items[i].Value);
                }
            }

            { 
                bool genero1 = match_1.Checked;
                if (genero1)
                {
                    if (info != "")
                    {
                        info += ", ";
                    }
                    info += "1";
                }
                bool genero2 = match_2.Checked;
                if (genero2)
                {
                    if (info != "")
                    {
                        info += ", ";
                    }
                    info += "2";
                }

                bool edad1= rbtnjoven.Checked;
                if (edad1)
                {
                    if (info != "")
                    {
                        info += ", ";
                    }
                    info += "4";
                }
                bool edad2 = rbtnnino.Checked;//no hace nada esta
                bool edad3 = rbtnbebe.Checked;
                if (edad3)
                {
                    if (info != "")
                    {
                        info += ", ";
                    }
                    info += "3";
                }

                bool tamano1 = rbtngrande.Checked;
                if (tamano1)
                {
                    if (info != "")
                    {
                        info += ", ";
                    }
                    info += "22";
                }
                bool tamano2 = rbtnmediano.Checked;
                if (tamano2)
                {
                    if (info != "")
                    {
                        info += ", ";
                    }
                    info += "21";
                }
                bool tamano3 = rbtnpequeno.Checked;
                if (tamano3)
                {
                    if (info != "")
                    {
                        info += ", ";
                    }
                    info += "20";
                }
            }

            
            String c = slctRango.Items[slctRango.SelectedIndex].Value;
            String rango = "";
            switch (c)
            {
                case "0":
                    break;
                case "1":
                    rango = "AND j.precio BETWEEN 0 and 100";
                    break;
                case "2":
                    rango = "AND j.precio BETWEEN 0 and 500";
                    break;
                case "3":
                    rango = "AND j.precio BETWEEN 0 and 1000000";
                    break;
                default:
                    break;
            }
            String infoCompleta = info;
            this.Session["datosEncuesta"] = infoCompleta;
            this.Session["rangoPrecios"] = rango;
            Response.Redirect("/JuguetesRecomendados.aspx");
        }
                
    }
}