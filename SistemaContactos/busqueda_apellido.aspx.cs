using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
namespace SistemaContactos
{
    public partial class busqueda_apellido : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            mostrarContactosApellido();
        }
        public void mostrarContactosApellido()
        {
            //.Where(c => c.Apellido.ToUpper().Equals(txtApellidoBuscar.Text.ToUpper()))
            //Contacto c in listaContacto
            try
            {
                string algo = Request.Form["txtTipoContacto"];


            }
            catch (Exception)
            {
                
                
            }

        }
    }
}