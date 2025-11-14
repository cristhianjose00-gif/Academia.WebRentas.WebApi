using static Academia.WebRentas.WebApi._Common.Mensajes;

namespace Academia.WebRentas.WebApi._Common.DomainRequirement
{
    public class SucursalDomainRequirement
    {
        public bool ProveedorExiste { get; set; }
        public bool ContratoExiste { get; set; }
        public bool NombreUnico { get; set; }
        public bool DireccionUnica { get; set; }

        public static SucursalDomainRequirement Fill(
            bool proveedorExiste,
            bool contratoExiste,
            bool nombreUnico,
            bool direccionUnica
        )
        {
            return new SucursalDomainRequirement
            {
                ProveedorExiste = proveedorExiste,
                ContratoExiste = contratoExiste,
                NombreUnico = nombreUnico,
                DireccionUnica = direccionUnica
            };
        }

        public List<string> ObtenerErrores()
        {
            List<string> errores = new();

            if (!ProveedorExiste)
                errores.Add(Fallo.CampoValido.Replace("@Campo", "Proveedor"));

            if (!ContratoExiste)
                errores.Add(Fallo.CampoValido.Replace("@Campo", "Contrato"));

            if (!NombreUnico)
                errores.Add(Fallo.CampoRepetido.Replace("@Campo", "Nombre de Sucursal"));

            if (!DireccionUnica)
                errores.Add(Fallo.CampoRepetido.Replace("@Campo", "Dirección"));

            return errores;
        }

        public bool EsValido() => ObtenerErrores().Count == 0;
    }
}