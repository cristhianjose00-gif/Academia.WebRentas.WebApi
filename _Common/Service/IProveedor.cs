using Academia.WebRentas.WebApi._Common.Dtos.SucursalDto;
using Academia.WebRentas.WebApi._Common.ProveedorDto;
using Farsiman.Application.Core.Standard.DTOs;

namespace Academia.WebRentas.WebApi._Common.Service
{
    public interface IProveedor
    {
        public Respuesta<List<ObtenerProveedorDto>> ObtenerProveedor();
    }
}
