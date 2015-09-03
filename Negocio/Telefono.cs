using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    public class Telefono
    {
        private string numero;

        public string Numero
        {
            get { return numero; }
            set { numero = value; }
        }

        public Telefono()
        {
            this.Numero = "0";
        }

        public Telefono(string n)
        {
            this.Numero = n;
        }
    }
}
