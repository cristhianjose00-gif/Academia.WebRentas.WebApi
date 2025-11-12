namespace Academia.WebRentas.WebApi.Infrastructure.BDRentas.Entities
{
    public class Proveedor
    {
        public int ProveedorID { get; set; }

        public string NombreDeProveedor { get; set; } = null!;

        public string RTN { get; set; } = null!;

        public string Direccion { get; set; } = null!;

        public string Telefono { get; set; } = null!;

        public string Email { get; set; } = null!;

        public bool Activo { get; set; }

        public string UsuarioAgrega { get; set; } = null!;

        public DateTime FechaAgrega { get; set; }

        public string? UsuarioModifica { get; set; }

        public DateTime? FechaModifica { get; set; }

        public string TipoProveedor { get; set; } = null!;

        public string? CondicionesPago { get; set; }

        public int MonedaID { get; set; }

        public virtual ICollection<ContratoRenta> ContratosRenta { get; set; } = new List<ContratoRenta>();

        public virtual ICollection<Documento> Documentos { get; set; } = new List<Documento>();

        public virtual Moneda Moneda { get; set; } = null!;

        public virtual ICollection<Sucursal> Sucursales { get; set; } = new List<Sucursal>();
    }

}

