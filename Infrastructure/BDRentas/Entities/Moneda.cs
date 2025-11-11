namespace Academia.WebRentas.WebApi.Infrastructure.BDRentas.Entities
{
    public class Moneda
    {
        public int MonedaID { get; set; }

        public string NombreMoneda { get; set; } = null!;

        public string Simbolo { get; set; } = null!;

        public string Codigo { get; set; } = null!;

        public bool Activo { get; set; }

        public int TasaDeCambioID { get; set; }

        public string UsuarioAgrega { get; set; } = null!;

        public DateTime FechaAgrega { get; set; }

        public string? UsuarioModifica { get; set; }

        public DateTime? FechaModifica { get; set; }

        public virtual ICollection<ContratoRenta> ContratosRenta { get; set; } = new List<ContratoRenta>();

        public virtual ICollection<Documento> Documentos { get; set; } = new List<Documento>();

        public virtual ICollection<PagoRenta> PagosRenta { get; set; } = new List<PagoRenta>();

        public virtual ICollection<Proveedor> Proveedores { get; set; } = new List<Proveedor>();

        public virtual TasaDeCambio? TasaDeCambio { get; set; }


    }
}
