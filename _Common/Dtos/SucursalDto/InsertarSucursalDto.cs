using FluentValidation;

namespace Academia.WebRentas.WebApi._Common.Dtos.SucursalDto
{
    public class InsertarSucursalDto
    {
        public string NombreSucursal { get; set; } = null!;

        public string? Direccion { get; set; }

        public int ProveedorID { get; set; }

        public int ContratoID { get; set; }

        public bool Activo { get; set; }

        public string UsuarioAgrega { get; set; } = null!;
    }

}