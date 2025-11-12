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
            DateTime fechaAntiguedadLimite = DateTime.Today.AddYears(-3);
            DateTime FechaFuturaLimite = DateTime.Today.AddYears(+10);

            if (!contratoRentaDomainRequirement.EsValido())
                return Respuesta<ContratoRenta>.Fault(String.Join(" ", contratoRentaDomainRequirement.ObtenerErrores()),
                    ((int)EnumMensajesError.BadRequest).ToString(), new ContratoRenta());

            if (string.IsNullOrWhiteSpace(contratoRenta.NumeroContrato))
                return Respuesta<ContratoRenta>.Fault(Fallo.NumeroContratoRequerido,
                    ((int)EnumMensajesError.BadRequest).ToString(), new ContratoRenta());

            if (contratoRenta.NumeroContrato.Length > 20)
                return Respuesta<ContratoRenta>.Fault(Fallo.ExcesoCaracteres,
                    ((int)EnumMensajesError.BadRequest).ToString(), new ContratoRenta());

            if (contratoRenta.MontoContrato <= 0)
                return Respuesta<ContratoRenta>.Fault(Fallo.MontoValido,
                    ((int)EnumMensajesError.BadRequest).ToString(), new ContratoRenta());

            if (contratoRenta.MontoMensual <= 0)
                return Respuesta<ContratoRenta>.Fault(Fallo.MontoMensual,
                    ((int)EnumMensajesError.BadRequest).ToString(), new ContratoRenta());

            if (contratoRenta.MontoMensual > contratoRenta.MontoContrato)
                return Respuesta<ContratoRenta>.Fault(Fallo.MontosErroneos,
                    ((int)EnumMensajesError.BadRequest).ToString(), new ContratoRenta());

            if (contratoRenta.FechaInicio < fechaAntiguedadLimite)
                return Respuesta<ContratoRenta>.Fault(Fallo.FechaAntigua.Replace("@anio", fechaAntiguedadLimite.Year.ToString()),
                    ((int)EnumMensajesError.BadRequest).ToString(), new ContratoRenta());

            if (contratoRenta.FechaFin > FechaFuturaLimite)
                return Respuesta<ContratoRenta>.Fault(Fallo.FechaFutura.Replace("@anio", FechaFuturaLimite.Year.ToString()),
                    ((int)EnumMensajesError.BadRequest).ToString(), new ContratoRenta());


            if (contratoRenta.FechaInicio > contratoRenta.FechaFin)
                return Respuesta<ContratoRenta>.Fault(Fallo.FechasErroneas,
                    ((int)EnumMensajesError.BadRequest).ToString(), new ContratoRenta());

            if (contratoRenta.MontoTotal <= 0)
                return Respuesta<ContratoRenta>.Fault(Fallo.MontoNegativo,
                    ((int)EnumMensajesError.BadRequest).ToString(), new ContratoRenta());

            if (contratoRenta.MontoTotal < contratoRenta.MontoContrato)
                return Respuesta<ContratoRenta>.Fault(Fallo.MontosErroneosContrato,
                    ((int)EnumMensajesError.BadRequest).ToString(), new ContratoRenta());


            return Respuesta<ContratoRenta>.Success(contratoRenta,
                Exito.OperacionExitosa,
                ((int)EnumMensajesError.Succes).ToString());
        }

    }
}