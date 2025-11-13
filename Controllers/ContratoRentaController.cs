using Academia.WebRentas.WebApi._Common;
using Academia.WebRentas.WebApi._Common.Dtos.ContratoRentaDto;
using Academia.WebRentas.WebApi._Common.Service;
using Academia.WebRentas.WebApi._Features.ContratosRenta;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics.CodeAnalysis;

namespace Academia.WebRentas.WebApi.Controllers
{
    [ExcludeFromCodeCoverage]
    [Route("api/[controller]")]
    [ApiController]
    public class ContratoRentaController : ControllerBase
    {
        private readonly IContratoRenta _service;
        public ContratoRentaController(ContratoRentaService service)
        {
            _service = service;
        }

        [HttpGet("ObtenerContratosRenta")]
        public IActionResult ObtenerContratosRenta(
           [FromQuery] int pagina = 1 
       )
        {
            const int tamanoPaginaFijo = 10;

            var respuestaPaginada = _service.ObtenerContratoRenta(pagina, tamanoPaginaFijo);

            if (respuestaPaginada.Ok)
            {
                return Ok(respuestaPaginada.Data);
            }

            return StatusCode(500, respuestaPaginada.Mensaje);
        }

        [HttpPost("InsertarContratoRenta")]
        public IActionResult InsertarContrato([FromBody] InsertarContratoDto dto)
        {

            var resultado = _service.InsertarContrato(dto);
            return this.ActionResultFrom(resultado);
        }

        [HttpPut("ActualizarContratoRenta")]
        public IActionResult ActualizarContrato([FromBody] ActualizarContratoDto dto)
        {
            if (!ModelState.IsValid)
                return BadRequest(ModelState);

            var resultado = _service.ActualizarContrato(dto);
            return this.ActionResultFrom(resultado);
        }

        [HttpPut("InactivarContrato")]
        public IActionResult InactivarContrato([FromQuery] int contratoId)
        {
            var dto = new InactivarContratoDto
            {
                ContratoID = contratoId,
            };

            var resultado = _service.InactivarContrato(dto);

            return this.ActionResultFrom(resultado);
        }




    }

}

