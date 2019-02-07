using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace Entidades
{
    public class Cartas
    {
        [Key]
        public int CartasId { get; set; }
        public int DestinatarioId { get; set; }
        public DateTime Fecha { get; set; }
        public string Cuerpo { get; set; }


        public Cartas()
        {
            CartasId = 0;
            DestinatarioId = 0;
            Fecha = DateTime.Now;
            Cuerpo = string.Empty;
        }
    }

}
