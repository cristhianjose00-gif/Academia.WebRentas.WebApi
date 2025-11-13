using System.Diagnostics.CodeAnalysis;

namespace Academia.WebRentas.WebApi._Common.Dtos.ContratoRentaDto
{
    [ExcludeFromCodeCoverage]
    public class InactivarContratoDto
    {
        public int ContratoID { get; set; }
        public string UsuarioModifica { get; set; } = null!;
    }
}
