using Academia.WebRentas.WebApi._Common;
using Academia.WebRentas.WebApi._Common.Service;
using Academia.WebRentas.WebApi._Features.Proveedores;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics.CodeAnalysis;

namespace Academia.WebRentas.WebApi.Controllers
{
    [ExcludeFromCodeCoverage]
    [Route("api/[controller]")]
    [ApiController]
    public class ProveedorController : ControllerBase
    {
        private readonly IProveedor _service;
        public ProveedorController(ProveedorService service)
        {
            _service = service;
        }
        [HttpGet("ObtenerProveedor")]
        public IActionResult ObtenerProveedor()
        {
            var respuesta = _service.ObtenerProveedor();
            return this.ActionResultFrom(respuesta);
        }


    }
}
