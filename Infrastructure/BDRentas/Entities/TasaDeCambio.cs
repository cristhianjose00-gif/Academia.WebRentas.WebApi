namespace Academia.WebRentas.WebApi.Infrastructure.BDRentas.Entities
{
    public class TasaDeCambio
    {
        public int TasaID { get; set; }

        public int Mes { get; set; }

        public int Anio { get; set; }

        public decimal TasaCompra { get; set; }

        public decimal TasaVenta { get; set; }

        public bool Activo { get; set; }

        public string UsuarioAgrega { get; set; } = null!;

        public DateTime FechaAgrega { get; set; }

        public string? UsuarioModifica { get; set; }

        public DateTime? FechaModifica { get; set; }

        public virtual ICollection<Moneda> Moneda { get; set; } = new List<Moneda>();

    }
}
