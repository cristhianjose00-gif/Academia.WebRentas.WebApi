using Academia.WebRentas.WebApi._Common.Dtos.SucursalDto;
using Farsiman.Application.Core.Standard.DTOs;

namespace Academia.WebRentas.WebApi._Common.Service
{
    public interface ISucursal
    {
        public Respuesta<List<ObtenerSucursalDTO>> ObtenerSucursales(int pagina, int tamanoPagina);
        public Respuesta<InsertarSucursalDto> InsertarSucursal(InsertarSucursalDto dto);
        public Respuesta<ActualizarSucursalDto> ActualizarSucursal(ActualizarSucursalDto dto);
        public Respuesta<DesactivarSucursalDto> InactivarSucursal(DesactivarSucursalDto dto);

    }
}
