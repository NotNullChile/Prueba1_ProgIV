using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace SistemaContactos
{
    public partial class modificar_contacto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //cargar();
        }
        public void cargar()
        {
            //List<Negocio.Contacto> contactoModificado = (List<Contacto>)Session["modificarContacto"];
            //if (Session["modificarContacto"] != null)
            //{
            //    foreach(Contacto c in contactoModificado)
            //    {
            //        txtRut.Text = c.Rut;
            //        //ddlTipoContacto.Text = c.TipoContacto;
            //        txtNombre.Text = c.Nombre;
            //        txtApellido.Text = c.Apellido;
            //        txtCiudad.Text = c.Ciudad;
            //        txtCorreo.Text = c.Email;
            //        txtTelefono.Text = c.Telefono;
            //    }
            //}
            //else
            //{
            //    Response.Redirect("index.aspx");
            //}
        }
        public void modificar()
        {
            
            List<Negocio.Contacto> contactoModificado = (List<Contacto>)Session["modificarContacto"];
            List<Negocio.Contacto> listaContacto = (List<Negocio.Contacto>)Session["listaContacto"];
            string[] telefonos = new string[99];
            if(Session["modificarContacto"] != null)
            { 
                for(int i = 0; i < listaContacto.Count ; i++)
                {
                    if (listaContacto.ElementAt(i).Rut == contactoModificado.ElementAt(i).Rut)
                    {
                        telefonos = listaContacto.ElementAt(i).Telefonos;
                        listaContacto.RemoveAt(i);
                        break;
                    }
                }
                string rut = Request["txtRut"];
                string tipoPersona = Request["ddlTipoContacto"];
                string nombre = Request["txtNombre"];
                string apellido = Request["txtApellido"];
                string ciudad = Request["txtCiudad"];
                string correo = Request["txtCorreo"];
                string numero = null;

                
                Contacto c = new Contacto(rut, nombre, apellido, ciudad, correo, telefonos, tipoPersona);

                listaContacto.Add(c);

                Session["listaContacto"] = listaContacto;

                Response.Redirect("index.aspx");
            }
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            modificar();
        }
    }
}