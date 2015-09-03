using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    public class Contacto
    {
        private string rut;
        private string nombre;
        private string apellido;
        private string ciudad;
        private string email;
        private string[] telefonos;
        //private List<Telefono> telefonos;

        //public List<Telefono> Telefonos
        public string[] Telefonos
        {
            get { return telefonos; }
            set { telefonos = value; }
        }
        private string tipoContacto;
       
        public string Rut
        {
            get { return rut; }
            set { rut = value; }
        }
        public string Nombre
        {
            get { return nombre; }
            set { nombre = value; }
        }
        public string Apellido
        {
            get { return apellido; }
            set { apellido = value; }
        }
        public string Ciudad
        {
            get { return ciudad; }
            set { ciudad = value; }
        }
        public string Email
        {
            get { return email; }
            set { email = value; }
        }
        //public string Telefono
        //{
        //    get { return telefono; }
        //    set { telefono = value; }
        //}

        public string TipoContacto
        {
            get { return tipoContacto; }
            set { tipoContacto = value; }
        }
        public Contacto()
        {
            this.Rut = "Sin Rut";
            this.Nombre = "Sin Nombre";
            this.Apellido = "Sin Apellido";
            this.Ciudad = "Sin Ciudad";
            this.Email = "Sin email";
            this.Telefonos = new string[99];
            //this.Telefonos = new List<Telefono>();
            //this.Telefono = "Sin Telefono";
            this.tipoContacto = "sin contacto";
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="r">RUT</param>
        /// <param name="n">Nombre</param>
        /// <param name="a">Apellido</param>
        /// <param name="c">Ciudad</param>
        /// <param name="e">Email</param>
        /// <param name="t">Telefono</param>
        /// <param name="tp">Tipo contacto</param>
        public Contacto(string r, string n, string a, string c, string e, string[] t, string tp)
        {
            this.Rut = r;
            this.Nombre = n;
            this.Apellido = a;
            this.Ciudad = c;
            this.Email = e;
            this.Telefonos = t;
            //this.Telefono = t;
            this.tipoContacto = tp;
        }

    }
}
