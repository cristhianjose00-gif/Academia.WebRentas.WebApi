namespace Academia.WebRentas.WebApi._Common.Dtos.SucursalDto
{
    public class ActualizarSucursalDto
    {
        public int SucursalID { get; set; }

        public string NombreSucursal { get; set; } = null!;

        public string? Direccion { get; set; }

        public int ProveedorID { get; set; }

        public int ContratoID { get; set; }
        public string UsuarioModifica { get; set; } = null!;
    }
}
