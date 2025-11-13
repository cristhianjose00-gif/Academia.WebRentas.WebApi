using System.Diagnostics.CodeAnalysis;

namespace Academia.WebRentas.WebApi._Common.Dtos.SucursalDto
{
    [ExcludeFromCodeCoverage]
    public class DesactivarSucursalDto
    {
        public int SucursalID { get; set; }
        public string UsuarioModifica { get; set; } = null!;
    }

}
