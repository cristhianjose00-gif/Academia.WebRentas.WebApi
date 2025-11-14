using Academia.WebRentas.WebApi._Common;
using Academia.WebRentas.WebApi._Common.Dtos.SucursalDto;
using Academia.WebRentas.WebApi._Features.Sucursales;
using Farsiman.Application.Core.Standard.DTOs;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics.CodeAnalysis;

namespace Academia.WebRentas.WebApi.Controllers
{
    [ExcludeFromCodeCoverage]
    [Route("api/[controller]")]
    [ApiController]
    public class SucursalController : ControllerBase
    {
        private readonly SucursalService _service;
        public SucursalController(SucursalService service)
        {
            _service = service;
        }
        [HttpGet("ObtenerSucursales")]
        public IActionResult ObtenerSucursales([FromQuery] int pagina = 1)
        {
            const int tamanoPaginaFijo = 10;

            var respuestaPaginada = _service.ObtenerSucursales(pagina, tamanoPaginaFijo);

            if (respuestaPaginada.Ok)
            {
                return Ok(respuestaPaginada.Data);
            }

            return this.ActionResultFrom(respuestaPaginada);
        }

        [HttpPost("InsertarSucursal")]
        public IActionResult InsertarSucursal([FromBody] InsertarSucursalDto insertarSucursalDto)
        {
            Respuesta<InsertarSucursalDto> resultado = _service.InsertarSucursal(insertarSucursalDto);
            return this.ActionResultFrom(resultado);
        }

        [HttpPut("ActualizarSucursal")]
        public IActionResult ActualizarSucursal([FromBody] ActualizarSucursalDto actualizarSucursalDto)
        {
            if (!ModelState.IsValid)
                return BadRequest(ModelState);

            Respuesta<ActualizarSucursalDto> resultado = _service.ActualizarSucursal(actualizarSucursalDto);
            return this.ActionResultFrom(resultado);
        }

        [HttpPut("InactivarSucursal")]
        public IActionResult InactivarSucursal([FromQuery] int sucursalId)
        {
            DesactivarSucursalDto desactivarSucursalDto = new DesactivarSucursalDto
            {
                SucursalID = sucursalId
            };

            var resultado = _service.InactivarSucursal(desactivarSucursalDto);
            return this.ActionResultFrom(resultado);
        }


    }

}

