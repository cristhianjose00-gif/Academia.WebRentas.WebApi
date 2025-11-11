using Academia.WebRentas.WebApi._Common;
using Microsoft.AspNetCore.Mvc;

namespace Academia.WebRentas.WebApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]

    public class CommonController : ControllerBase
    {

        private readonly CommonService _service;

        public CommonController(CommonService service)
        {
            _service = service;
        }

        [HttpGet("ObtenerMonedas")]

        public IActionResult ObtenerMonedas()
        {

            return Ok(_service.ObtenerMonedas());
        }

        [HttpGet("ObtenerColaboradores")]

        public IActionResult ObtenerColaboradores()
        {

            return Ok(_service.ObtenerColaboradores());
        }
        [HttpGet("ObtenerTasasDeCambio")]

        public IActionResult ObtenerTasasDeCambio()
        {

            return Ok(_service.ObtenerTasasDeCambio());
        }
        [HttpGet("ObtenerDocumentos")]

        public IActionResult ObtenerDocumentos()
        {

            return Ok(_service.ObtenerDocumento());
        }

    }


}
