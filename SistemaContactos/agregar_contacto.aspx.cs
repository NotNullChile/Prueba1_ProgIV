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
                    numero = "Fijo:" + txtTelefono.Text;
                }
                if (ddlTipoFono.Text == "Movil")
                {
                    numero = "Movil:" + txtTelefono.Text;
                }
                bool existeRut = false;
                if (Session["listaContacto"] != null)
                {
                    listaContacto = (List<Contacto>)Session["listaContacto"];
                    for(int i = 0 ; i < listaContacto.Count ;i++)
                    {
                        if (listaContacto.ElementAt(i).Rut != txtRut.Text)
                        {
                            existeRut = false;
                        }
                        else
                        {
                            existeRut = true;
                            break;
                        }

                    }
                }
                //Creación teléfono

                Telefono t = new Telefono((numero));

                //Creación lista teléfonos
                //List<Telefono> telefonos = new List<Telefono>();
                string[] telefonos = new string[99];
                telefonos[0] = numero;
 
                //Creación persona
                if(existeRut == false)
                {
                    Contacto c = new Contacto(rut, nombre, apellido, ciudad, correo, telefonos, tipoPersona);

                    listaContacto.Add(c);

                    Session["listaContacto"] = listaContacto;

                    Response.Redirect("index.aspx");
                }
                else
                {
                    lblErrorRut.Text = "Rut ya existente en el sistema";
                }
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