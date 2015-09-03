using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
namespace SistemaContactos
{
    public partial class agregar_telefonos_listas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public static string rutObtenido = "nada";
        public void agregarFonos()
        {
            List<Negocio.Contacto> listaContacto = (List<Negocio.Contacto>)Session["listaContacto"];
            List<Contacto> masNumero = new List<Contacto>();

            string rut = Request["txtRut"];
            if (Session["listaContacto"] != null)
            {
                for (int i = 0; i < listaContacto.Count; i++)
                {
                    if (listaContacto.ElementAt(i).Rut == rut)
                    {
                        Session["agregarNumeros"] = listaContacto;
                        rutObtenido = listaContacto.ElementAt(i).Rut;
                        Response.Redirect("agregar_numero_rick.aspx");
                    }
                }
            }

        }
    }
}