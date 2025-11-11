using EFCoreLab3.Infraestructura;

namespace Academia.WebRentas.WebApi.Infrastructure.BDRentas.Entities
{
    public class Documento
    {
        public int DocumentoID { get; set; }

        public int ProveedorID { get; set; }

        public int ContratoID { get; set; }

        public int TipoDocumentoID { get; set; }

        public bool IncluyeISV { get; set; }

        public int MonedaID { get; set; }

        public decimal MontoTotal { get; set; }

        public string Estado { get; set; } = null!;

        public string? Observaciones { get; set; }

        public string UsuarioAgrega { get; set; } = null!;

        public DateTime FechaAgrega { get; set; }

        public string? Servicios { get; set; }

        public virtual ContratoRenta Contrato { get; set; } = null!;

        public virtual ICollection<LogSincronizacion> LogSincronizacions { get; set; } = new List<LogSincronizacion>();

        public virtual Moneda Moneda { get; set; } = null!;

        public virtual Proveedor Proveedor { get; set; } = null!;

        public virtual TipoDocumento TipoDocumento { get; set; } = null!;

    }
}
