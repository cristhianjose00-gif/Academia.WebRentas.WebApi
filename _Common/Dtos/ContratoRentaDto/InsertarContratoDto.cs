using System.Diagnostics.CodeAnalysis;

namespace Academia.WebRentas.WebApi._Common.Dtos.ContratoRentaDto
{
    [ExcludeFromCodeCoverage]
    public class InsertarContratoDto
    {
        public int ProveedorID { get; set; }

        public int MonedaID { get; set; }

        public string NumeroContrato { get; set; } = null!;

        public decimal MontoContrato { get; set; }

        public decimal MontoMensual { get; set; }

        public decimal MontoTotal { get; set; }

        public DateOnly FechaInicio { get; set; }

        public DateOnly FechaFin { get; set; }

        public string UsuarioAgrega { get; set; } = null!;
    }

}
