using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SistemaContactos
{
    public partial class busqueda_cliente_dominio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public static string rutModificar = "nada";
        protected void btnBuscar_Click(object sender, EventArgs e)
        {

        }
        public void eliminarContacto()
        {
            //.Where(c => c.Apellido.ToUpper().Equals(txtApellidoBuscar.Text.ToUpper()))
            //Contacto c in listaContacto
            try
            {
                string rut2 = Request["btnEliminar"];
                if (rut2 != null)
                {
                    List<Negocio.Contacto> listaContacto = (List<Negocio.Contacto>)Session["listaContacto"];
                    for (int i = 0; i < listaContacto.Count; i++)
                    {
                        if (listaContacto.ElementAt(i).Rut == rut2)
                        {
                            listaContacto.RemoveAt(i);
                            break;
                        }
                    }
                }

            }
            catch (Exception)
            {


            }

        }
        public void modificarContacto()
        {
            string rut2 = Request["btnModificar"];
            if (rut2 != null)
            {
                List<Negocio.Contacto> listaContacto = (List<Negocio.Contacto>)Session["listaContacto"];
                for (int i = 0; i < listaContacto.Count; i++)
                {
                    if (listaContacto.ElementAt(i).Rut == rut2)
                    {
                        Session["modificarContacto"] = listaContacto;
                        rutModificar = listaContacto.ElementAt(i).Rut;
                        Response.Redirect("modificar_contacto.aspx");
                        break;
                    }
                }
            }
        }
    }
}