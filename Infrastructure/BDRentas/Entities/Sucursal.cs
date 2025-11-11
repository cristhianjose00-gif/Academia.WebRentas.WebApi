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
    public class SucursalValidator : AbstractValidator<Sucursal>
    {
        public SucursalValidator()
        {
            RuleFor(x => x.NombreSucursal)
                .NotEmpty().WithMessage("El nombre de la sucursal es obligatorio.")
                .MaximumLength(100).WithMessage("El nombre de la sucursal no puede exceder los 100 caracteres.");

            RuleFor(x => x.Direccion)
                .MaximumLength(200).WithMessage("La dirección no puede exceder los 200 caracteres.")
                .NotEmpty().WithMessage("Debe ingresar una direccion válida.");

            RuleFor(x => x.ProveedorID)
                .GreaterThan(0).WithMessage("Debe seleccionar un proveedor válido.");

            RuleFor(x => x.ContratoID)
                .GreaterThan(0).WithMessage("Debe seleccionar un contrato válido.");
        }
    }
}

