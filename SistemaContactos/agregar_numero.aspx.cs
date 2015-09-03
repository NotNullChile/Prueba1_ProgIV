using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace SistemaContactos
{
    public partial class agregar_numero_randy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["contactoSiendoModificado"] = new Contacto();
            if (Session["agregarNumeros"] != null)
            {
                List<Contacto> lc = (List<Contacto>)Session["agregarNumeros"];
                Contacto contacto = lc.ElementAt(0);
                Session["contactoSiendoModificado"] = contacto;
                lblRutGuardado.Text = contacto.Rut;
                lblNombreGuardado.Text = contacto.Nombre;
                lblApellidoGuardado.Text = contacto.Apellido;
                lblCiudadGuardada.Text = contacto.Ciudad;
                lblEmailGuardado.Text = contacto.Email;
                int maximo = contacto.Telefonos.Count();
                string listaTelefonos = String.Join("\r\n", contacto.Telefonos, 0, maximo);
                lblTelefonosGuardados.Text = listaTelefonos;
            }
            else
            {
                Response.Redirect("index.aspx");
            }
        }

        protected void btnAgregarTelefono_Click(object sender, EventArgs e)
        {
            string numero = null;
            if (ddlTipoFono.Text == "Fijo")
            {
                numero = "Fijo:" + txtTelefono.Text;
            }
            if (ddlTipoFono.Text == "Movil")
            {
                numero = "Movil:" + txtTelefono.Text;
            }
            Contacto contactoModificado = (Contacto)Session["ContactoSiendoModificado"];
            for (int i = 0; i < 99; i++)
			{
			    if (contactoModificado.Telefonos[i] != null)
	            {}
                else
	            {
                    contactoModificado.Telefonos[i] = numero;
                    break;
	            }
			}
            Response.Redirect("agregar_telefono.aspx");
        }
    }
}