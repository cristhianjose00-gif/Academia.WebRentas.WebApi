using System.Diagnostics.CodeAnalysis;

namespace Academia.WebRentas.WebApi._Common.Dtos.SucursalDto
{
    [ExcludeFromCodeCoverage]
    public class ObtenerSucursalDTO
    {
        public int SucursalID { get; set; }
        public string NombreSucursal { get; set; } = null!;

        public string? Direccion { get; set; }

        public string? NombreProveedor { get; set; }

        public string? NumeroContrato { get; set; }


    }
}

