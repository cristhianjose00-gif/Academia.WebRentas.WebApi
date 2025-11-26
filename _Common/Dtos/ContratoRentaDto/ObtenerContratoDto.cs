using System.Diagnostics.CodeAnalysis;

namespace Academia.WebRentas.WebApi._Common.Dtos.ContratoRentaDto
{
    [ExcludeFromCodeCoverage]
    public class ObtenerContratoDto
    {
        public int ContratoID { get; set; }
        public string NumeroContrato { get; set; } = string.Empty;
        public string NombreDeProveedor { get; set; } = string.Empty;
        public string MoneadaNombre { get; set; } = string.Empty;
        public decimal MontoContrato { get; set; }
        public decimal MontoMensual { get; set; }
        public decimal? MontoTotal { get; set; }
        public DateOnly FechaInicio { get; set; }
        public DateOnly FechaFin { get; set; }
    }
}

