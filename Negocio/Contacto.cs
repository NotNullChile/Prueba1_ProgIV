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
        private string telefono;

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
        public string Telefono
        {
            get { return telefono; }
            set { telefono = value; }
        }

        public Contacto()
        {
            this.Rut = "Sin Rut";
            this.Nombre = "Sin Nombre";
            this.Apellido = "Sin Apellido";
            this.Ciudad = "Sin Ciudad";
            this.Email = "Sin email";
            this.Telefono = "Sin Telefono";
        }

        public Contacto(string r, string n, string a, string c, string e, string t)
        {
            this.Rut = r;
            this.Nombre = n;
            this.Apellido = a;
            this.Ciudad = c;
            this.Email = e;
            this.Telefono = t;
        }

    }
}
