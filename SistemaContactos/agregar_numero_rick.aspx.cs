using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
namespace SistemaContactos
{
    public partial class agregar_numero_rick : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void agregarNumero()
        {
            List<Negocio.Contacto> listaContacto = (List<Contacto>)Session["listaContacto"]; 
            List<Negocio.Contacto> agregarNumeros = (List<Negocio.Contacto>)Session["agregarNumeros"];

            if (Session["listaContacto"] != null)
            {
                //for (int i = 0; i < agregarNumeros.Count; i++)
                //{
                //    if (agregarNumeros.ElementAt(i).Rut == SistemaContactos.agregar_telefonos_listas.rutObtenido)
                //    {
                //        listaContacto.RemoveAt(i);
                //    }
                //}

                for (int i = 0; i < agregarNumeros.Count; i++)
                {
                    if (agregarNumeros.ElementAt(i).Rut == SistemaContactos.agregar_telefonos_listas.rutObtenido)
                    {
                        int maximoNumeros = agregarNumeros.ElementAt(i).Telefonos.Count();
                        for (int j = 1; j < maximoNumeros; j++)
                        {
                            
                            int maximo = agregarNumeros.ElementAt(i).Telefonos.Count();
                            string listaTelefonos = String.Join("  ", agregarNumeros.ElementAt(i).Telefonos, j-1, maximo);
                            string[] telefonos = new string[99];
                            string s = Request["txtNumeros" + j];
                            telefonos[j] = (listaTelefonos + s);
                            Contacto c = new Contacto(agregarNumeros.ElementAt(i).Rut, agregarNumeros.ElementAt(i).Nombre, agregarNumeros.ElementAt(i).Apellido, agregarNumeros.ElementAt(i).Ciudad, agregarNumeros.ElementAt(i).Email, telefonos, agregarNumeros.ElementAt(i).TipoContacto);
                            listaContacto.Add(c);
                            Response.Redirect("agregar_numero_rick.aspx");
                            
                        }
                    }
                }
            }

                       
                    
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            agregarNumero();
        }
    }
}