using Academia.WebRentas.WebApi._Features.Servicios;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics.CodeAnalysis;

namespace Academia.WebRentas.WebApi.Controllers
{
    [ExcludeFromCodeCoverage]
    [Route("api/[controller]")]
    [ApiController]
    public class ServicioController : ControllerBase
    {
        private readonly ServicioService _service;
        public ServicioController(ServicioService service)
        {
            _service = service;
        }
        [HttpGet("ObtenerServicios")]

        public IActionResult ObtenerServicios()
        {

            return Ok(_service.ObtenerServicios());
        }
    }
}
