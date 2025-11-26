namespace Academia.WebRentas.WebApi._Common.ProveedorDto
{
    public class ObtenerProveedorDto
    {
        public int ProveedorID { get; set; }

        public string NombreDeProveedor { get; set; } = null!;

        public string RTN { get; set; } = null!;

        public string Direccion { get; set; } = null!;

        public string Telefono { get; set; } = null!;

        public string Email { get; set; } = null!;

        public string TipoProveedor { get; set; } = null!;

        public string? CondicionesPago { get; set; }

        public string NombreMoneda { get; set; }
    }
}
