namespace Academia.WebRentas.WebApi.Infrastructure.BDRentas.Entities
{
    public class Servicio
    {
        public int ServicioID { get; set; }

        public string NombreServicio { get; set; } = null!;

        public string CuentaContable { get; set; } = null!;

        public string TipoServicio { get; set; } = null!;

        public string? Descripcion { get; set; }

        public bool Activo { get; set; }

        public string UsuarioAgrega { get; set; } = null!;

        public DateTime FechaAgrega { get; set; }

        public string? UsuarioModifica { get; set; }

        public DateTime? FechaModifica { get; set; }

        public virtual ICollection<PagoRenta> PagosRenta { get; set; } = new List<PagoRenta>();

    }
}
