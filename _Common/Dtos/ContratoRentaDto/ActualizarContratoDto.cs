using System.Diagnostics.CodeAnalysis;

namespace Academia.WebRentas.WebApi._Common.Dtos.ContratoRentaDto
{
    [ExcludeFromCodeCoverage]

    public class ActualizarContratoDto
    {
        public int ContratoID { get; set; } 
        public int? ProveedorID { get; set; }
        public int? MonedaID { get; set; }
        public string? NumeroContrato { get; set; } = null!;
        public decimal? MontoContrato { get; set; }
        public decimal? MontoMensual { get; set; }
        public decimal? MontoTotal { get; set; }
        public DateOnly? FechaInicio { get; set; }
        public DateOnly? FechaFin { get; set; }
        public string? UsuarioModifica { get; set; } = null!;
    }
}
