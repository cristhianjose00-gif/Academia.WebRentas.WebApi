using FluentValidation;

namespace Academia.WebRentas.WebApi._Common.Dtos.ContratoRentaDto
{
    public class InsertarContratoDto
    {
        public int ProveedorID { get; set; }

        public int MonedaID { get; set; }

        public string NumeroContrato { get; set; } = null!;

        public decimal MontoContrato { get; set; }

        public decimal MontoMensual { get; set; }

        public decimal MontoTotal { get; set; }

        public DateTime FechaInicio { get; set; }

        public DateTime FechaFin { get; set; }

        public bool Activo { get; set; } = true;
        public string UsuarioAgrega { get; set; } = null!;
    }

}
