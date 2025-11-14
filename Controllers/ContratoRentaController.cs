using Academia.WebRentas.WebApi._Common;
using Academia.WebRentas.WebApi._Common.Dtos.ContratoRentaDto;
using Academia.WebRentas.WebApi._Common.Service;
using Academia.WebRentas.WebApi._Features.ContratosRenta;
using Academia.WebRentas.WebApi.Infrastructure.BDRentas.Entities;
using Farsiman.Application.Core.Standard.DTOs;
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
        #region ObtenerContrato
        [HttpGet("ObtenerContratosRenta")]
        public IActionResult ObtenerContratosRenta(
           [FromQuery] int pagina = 1 
       )
        {
            const int tamanoPaginaFijo = 10;

            Respuesta<List<ObtenerContratoDto>> respuestaPaginada = _service.ObtenerContratoRenta(pagina, tamanoPaginaFijo);

            if (respuestaPaginada.Ok)
            {
                return Ok(respuestaPaginada.Data);
            }

            return this.ActionResultFrom(respuestaPaginada);
        }
        #endregion
        [HttpPost("InsertarContratoRenta")]
        public IActionResult InsertarContrato([FromBody] InsertarContratoDto insertarContratoDto)
        {

            Respuesta<InsertarContratoDto> resultado = _service.InsertarContrato(insertarContratoDto);
            return this.ActionResultFrom(resultado);
        }

        [HttpPut("ActualizarContratoRenta")]
        public IActionResult ActualizarContrato([FromBody] ActualizarContratoDto actualizarContratoDto)
        {
            if (!ModelState.IsValid)
                return BadRequest(ModelState);

            Respuesta<ActualizarContratoDto> resultado = _service.ActualizarContrato(actualizarContratoDto);
            return this.ActionResultFrom(resultado);
        }

        [HttpPut("InactivarContrato")]
        public IActionResult InactivarContrato([FromQuery] int contratoId)
        {
            InactivarContratoDto inactivarContratoDto = new InactivarContratoDto
            {
                ContratoID = contratoId,
            };

            Respuesta<InactivarContratoDto> resultado = _service.InactivarContrato(inactivarContratoDto);

            return this.ActionResultFrom(resultado);
        }




    }

}

