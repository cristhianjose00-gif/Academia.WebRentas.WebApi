namespace Academia.WebRentas.WebApi._Common.Dtos.SucursalDto
{
    public class ObtenerSucursalDTO
    {

        public string NombreSucursal { get; set; } = null!;

        public string? Direccion { get; set; }

        public string NombreProveedor { get; set; } = string.Empty;

        public string NumeroContrato { get; set; } = string.Empty;

        public bool Activo { get; set; }

    }
}

