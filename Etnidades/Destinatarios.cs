using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;
using System.Data.Entity;
using System.ComponentModel.DataAnnotations;

namespace Entidades
{
    public class Destinatarios
    {
        [Key]
        public int DestinatarioId { get; set; }
        public string Nombre { get; set; }
        public string Direccion { get; set; }
        public string Destinatario { get; set; }
        public decimal Total { get; set; }

        public Destinatarios()
        {
            DestinatarioId = 0;
            Nombre = string.Empty;
            Direccion = string.Empty;
            Destinatario = string.Empty;
            Total = 0;
        }

        public Destinatarios(int destinatarioId, string nombre, string direccion, string destinatario, decimal total)
        {
            DestinatarioId = destinatarioId;
            Nombre = nombre;
            Direccion = direccion;
            Destinatario = destinatario;
            Total = total;
        }
    }
}
