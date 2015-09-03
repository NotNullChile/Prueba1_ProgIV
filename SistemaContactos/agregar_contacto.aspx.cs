using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
namespace SistemaContactos
{
    public partial class agregar_contacto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void ingresarClienteProveedor()
        {
            try
            {
                //Creación de la lista que guardará los datos
                List<Contacto> listaContacto = new List<Contacto>();
                //Recolección de datos de la página
                string rut = txtRut.Text;
                string tipoPersona = ddlTipoContacto.Text;
                string nombre = txtNombre.Text;
                string apellido = txtApellido.Text;
                string ciudad = txtCiudad.Text;
                string correo = txtCorreo.Text;
                string numero = null;
                if(ddlTipoFono.Text == "Fijo")
                {
                    numero = "0" + txtTelefono.Text;
                }
                if (ddlTipoFono.Text == "Movil")
                {
                    numero = "1" + txtTelefono.Text;
                }
                if (Session["listaContacto"] != null)
                {
                    listaContacto = (List<Contacto>)Session["listaContacto"];
                }

                //Creación persona
                Contacto c = new Contacto(rut, nombre, apellido, ciudad, correo, numero, tipoPersona);

                listaContacto.Add(c);

                Session["listaContacto"] = listaContacto;

                Response.Redirect("index.aspx");
            }
            catch (Exception e)
            {
                Response.Write("error: " + e.Message);

            }
        }

        protected void btnAgregarContacto_Click(object sender, EventArgs e)
        {
            ingresarClienteProveedor();
        } 
    }
}