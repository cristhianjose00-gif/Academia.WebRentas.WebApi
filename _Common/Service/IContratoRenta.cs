using Academia.WebRentas.WebApi._Common.Dtos.ContratoRentaDto;
using Farsiman.Application.Core.Standard.DTOs;

namespace Academia.WebRentas.WebApi._Common.Service
{
    public interface IContratoRenta
    {
        public Respuesta<List<ObtenerContratoDto>> ObtenerContratoRenta();
        public Respuesta<InsertarContratoDto> InsertarContrato(InsertarContratoDto dto);
        public Respuesta<ActualizarContratoDto> ActualizarContrato(ActualizarContratoDto dto);
        public Respuesta<InactivarContratoDto> InactivarContrato(InactivarContratoDto dto);
    }
}
