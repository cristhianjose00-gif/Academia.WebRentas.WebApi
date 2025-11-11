namespace Academia.WebRentas.WebApi.Infrastructure.BDRentas.Entities
{
    public class PagoRenta
    {
        public int PagoID { get; set; }

        public int ContratoID { get; set; }

        public DateOnly PeriodoDesde { get; set; }

        public DateOnly PeriodoHasta { get; set; }

        public decimal Monto { get; set; }

        public int MonedaID { get; set; }

        public bool IncluyeISV { get; set; }

        public int ServicioID { get; set; }

        public string EstadoDePago { get; set; } = null!;

        public string? Observaciones { get; set; }

        public string UsuarioAgrega { get; set; } = null!;

        public DateTime FechaAgrega { get; set; }

        public string? UsuarioModifica { get; set; }

        public DateTime? FechaModifica { get; set; }

        public virtual ContratoRenta Contrato { get; set; } = null!;

        public virtual Moneda Moneda { get; set; } = null!;

        public virtual Servicio Servicio { get; set; } = null!;
    }

}
