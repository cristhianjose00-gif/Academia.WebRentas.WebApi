namespace Academia.WebRentas.WebApi.Infrastructure.BDRentas.Entities
{
    public class ContratoRenta
    {
        public int ContratoID { get; set; }

        public int ProveedorID { get; set; }

        public int MonedaID { get; set; }
        public string NumeroContrato { get; set; } = null!;

        public decimal MontoContrato { get; set; }

        public decimal MontoMensual { get; set; }

        public DateTime FechaInicio { get; set; }

        public DateTime FechaFin { get; set; }

        public bool Activo { get; set; }

        public string UsuarioAgrega { get; set; } = null!;

        public DateTime? FechaAgrega { get; set; }

        public string? UsuarioModifica { get; set; }

        public DateTime? FechaModifica { get; set; }

        public decimal MontoTotal { get; set; }

        public virtual ICollection<Documento> Documentos { get; set; } = new List<Documento>();

        public virtual Moneda Moneda { get; set; } = null!;

        public virtual ICollection<PagoRenta> PagosRenta { get; set; } = new List<PagoRenta>();

        public virtual Proveedor Proveedor { get; set; } = null!;

        public virtual ICollection<Sucursal> Sucursales { get; set; } = new List<Sucursal>();
    }

}
