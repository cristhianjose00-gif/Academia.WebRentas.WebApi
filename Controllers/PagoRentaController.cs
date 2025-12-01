using Academia.WebRentas.WebApi._Features.PagoRentas;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics.CodeAnalysis;

namespace Academia.WebRentas.WebApi.Controllers
{
    [ExcludeFromCodeCoverage]
    [Route("api/[controller]")]
    [ApiController]

    public class PagoRentaController : ControllerBase
    {
        private readonly PagoRentaService _service;
        public PagoRentaController(PagoRentaService service)
        {
            _service = service;
        }


        [HttpGet("ObtenerPagosRenta")]

        public IActionResult ObtenerPagosRenta()
        {

            return Ok(_service.ObtenerPagosRenta());
        }


    }
}

