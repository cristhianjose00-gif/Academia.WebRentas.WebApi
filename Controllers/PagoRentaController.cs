using Academia.WebRentas.WebApi._Common.Dtos;
using Academia.WebRentas.WebApi._Features.PagoRentas;
using Farsiman.Exceptions;
using Microsoft.AspNetCore.Mvc;

namespace Academia.WebRentas.WebApi.Controllers
{
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

