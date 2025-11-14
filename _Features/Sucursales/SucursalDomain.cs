using Academia.WebRentas.WebApi._Common;
using Academia.WebRentas.WebApi._Common.DomainRequirement;
using Academia.WebRentas.WebApi.Infrastructure.BDRentas.Entities;
using Farsiman.Application.Core.Standard.DTOs;
using static Academia.WebRentas.WebApi._Common.Mensajes;

namespace Academia.WebRentas.WebApi._Features.Sucursales
{
    public class SucursalDomain
    {

        public Respuesta<Sucursal> ValidarSucursal(Sucursal sucursal, SucursalDomainRequirement sucursalDomainRequirement)
        {
            List<string> errores = new List<string>();

            if (sucursalDomainRequirement != null && !sucursalDomainRequirement.EsValido())
            {
                errores.Add(string.Join(" ", sucursalDomainRequirement.ObtenerErrores()));
            }

            if (string.IsNullOrWhiteSpace(sucursal.NombreSucursal))
            {
                errores.Add(Fallo.CamposRequerridos.Replace("@Campo", "Nombre de la sucursal"));
            }
            else if (sucursal.NombreSucursal.Length > 50)
            {
                errores.Add(Fallo.ExcesoDeCaracteresSucursal);
            }

            if (string.IsNullOrWhiteSpace(sucursal.Direccion))
            {
                errores.Add(Fallo.CamposRequerridos.Replace("@Campo", "Campo Direccion de la sucursal"));
            }
            else if (sucursal.Direccion.Length > 50)
            {
                errores.Add(Fallo.ExcesoDeCaracteresDireccion);
            }

            if (errores.Any())
            {
                string mensajeErroresConcatenados = string.Join(" ", errores);

                return Respuesta<Sucursal>.Fault(
                    mensajeErroresConcatenados,
                    ((int)EnumMensajesError.BadRequest).ToString(),
                    new Sucursal()
                );
            }

            return Respuesta<Sucursal>.Success(
                sucursal,
                Exito.OperacionExitosa,
                ((int)EnumMensajesError.Succes).ToString()
            );
        }
    }
}