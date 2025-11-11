using Academia.WebRentas.WebApi.Infrastructure.BDRentas.Entities;
using Farsiman.Application.Core.Standard.DTOs;
using static Academia.WebRentas.WebApi._Common.Mensajes;

namespace Academia.WebRentas.WebApi._Common.DomainRequirement
{
    public class ContratoRentaDomainRequirement
    {
        public bool ProveedorExiste { get; set; }
        public bool MonedaExiste { get; set; }
        public bool NumeroContratoUnico { get; set; }

        public static ContratoRentaDomainRequirement Fill(
            bool proveedorExiste,
            bool monedaExiste,
            bool numeroContratoUnico 
        )
        {
            return new ContratoRentaDomainRequirement
            {
                ProveedorExiste = proveedorExiste,
                MonedaExiste = monedaExiste,
                NumeroContratoUnico = numeroContratoUnico
            };
        }

        public List<string> ObtenerErrores()
        {
            List<string> errores = new();

            if (!ProveedorExiste)
                errores.Add(Fallo.CampoValido.Replace("@Campo", "Proveedor"));

            if (!MonedaExiste)
                errores.Add(Fallo.CampoValido.Replace("@Campo", "Moneda"));

            if (!NumeroContratoUnico)
                errores.Add(Fallo.CampoRepetido.Replace("@Campo", "Número de Contrato"));

            return errores;
        }

        public bool EsValido() => ObtenerErrores().Count == 0;  

        
    }
}
