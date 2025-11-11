using Academia.WebRentas.WebApi._Features.Proveedores;
using Microsoft.AspNetCore.Mvc;

namespace Academia.WebRentas.WebApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProveedorController : ControllerBase
    {
        private readonly ProveedorService _service;
        public ProveedorController(ProveedorService service)
        {
            _service = service;
        }
        [HttpGet("ObtenerProveedores")]

        public IActionResult ObtenerProveedores()
        {

            return Ok(_service.ObtenerProveedores());
        }

    }
}
