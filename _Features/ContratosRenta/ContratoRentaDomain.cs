using Academia.WebRentas.WebApi._Common;
using Academia.WebRentas.WebApi._Common.DomainRequirement;
using Academia.WebRentas.WebApi.Infrastructure.BDRentas.Entities;
using Farsiman.Application.Core.Standard.DTOs;
using static Academia.WebRentas.WebApi._Common.Mensajes;

namespace Academia.WebRentas.WebApi._Features.ContratosRenta
{
    public class ContratoRentaDomain
    {
        public Respuesta<ContratoRenta> ValidarContrato(ContratoRenta contratoRenta, ContratoRentaDomainRequirement contratoRentaDomainRequirement)
        {
            List<string> errores = new List<string>();

            DateOnly fechaAntiguedadLimite = DateOnly.FromDateTime(DateTime.Today).AddYears(-3);
            DateOnly fechaFuturaLimite = DateOnly.FromDateTime(DateTime.Today).AddYears(10);

            if (!contratoRentaDomainRequirement.EsValido())
            {
                errores.Add(string.Join(" ", contratoRentaDomainRequirement.ObtenerErrores()));
            }

            if (string.IsNullOrWhiteSpace(contratoRenta.NumeroContrato))
            {
                errores.Add(Fallo.NumeroContratoRequerido);
            }
            else if (contratoRenta.NumeroContrato.Length > 20)
            {
                errores.Add(Fallo.ExcesoCaracteres);
            }

            if (contratoRenta.MontoContrato <= 0)
            {
                errores.Add(Fallo.MontoValido);
            }

            if (contratoRenta.MontoMensual <= 0)
            {
                errores.Add(Fallo.MontoMensual);
            }

            if (contratoRenta.MontoMensual > contratoRenta.MontoContrato)
            {
                errores.Add(Fallo.MontosErroneos);
            }

            if (contratoRenta.MontoTotal <= 0)
            {
                errores.Add(Fallo.MontoNegativo);
            }

            if (contratoRenta.MontoTotal < contratoRenta.MontoContrato)
            {
                errores.Add(Fallo.MontosErroneosContrato);
            }

            if (contratoRenta.FechaInicio < fechaAntiguedadLimite)
            {
                errores.Add(Fallo.FechaAntigua.Replace("@anio", fechaAntiguedadLimite.Year.ToString()));
            }

            if (contratoRenta.FechaFin > fechaFuturaLimite)
            {
                errores.Add(Fallo.FechaFutura.Replace("@anio", fechaFuturaLimite.Year.ToString()));
            }

            if (contratoRenta.FechaInicio > contratoRenta.FechaFin)
            {
                errores.Add(Fallo.FechasErroneas);
            }

            if (errores.Any())
            {
                string mensajeErroresConcatenados = string.Join(" ", errores);

                return Respuesta<ContratoRenta>.Fault(
                    mensajeErroresConcatenados,
                    ((int)EnumMensajesError.BadRequest).ToString(),
                    new ContratoRenta()
                );
            }

            return Respuesta<ContratoRenta>.Success(contratoRenta, Exito.OperacionExitosa,
                ((int)EnumMensajesError.Succes).ToString());
        }
    }
}