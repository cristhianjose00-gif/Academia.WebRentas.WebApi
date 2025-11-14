using FluentValidation;

namespace Academia.WebRentas.WebApi.Infrastructure.BDRentas.Entities
{
    public class Sucursal
    {
        public int SucursalID { get; set; }

        public string NombreSucursal { get; set; } = null!;

        public string Direccion { get; set; } = null!;

        public int ProveedorID { get; set; }

        public int ContratoID { get; set; }

        public bool Activo { get; set; }

        public string UsuarioAgrega { get; set; } = null!;

        public DateTime FechaAgrega { get; set; }

        public string? UsuarioModifica { get; set; }

        public DateTime? FechaModifica { get; set; }

        public virtual ContratoRenta Contrato { get; set; } = null!;

        public virtual Proveedor Proveedor { get; set; } = null!;

    
    }
}

