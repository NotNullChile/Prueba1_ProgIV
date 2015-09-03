using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SistemaContactos
{
    public partial class busqueda_proovedor_ciudad : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
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
    }
}