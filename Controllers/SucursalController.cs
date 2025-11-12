using Academia.WebRentas.WebApi._Common.Dtos.SucursalDto;
using Academia.WebRentas.WebApi._Features.Sucursales;
using Microsoft.AspNetCore.Mvc;

namespace Academia.WebRentas.WebApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class SucursalController : ControllerBase
    {
        private readonly SucursalService _service;
        public SucursalController(SucursalService service)
        {
            _service = service;
        }
        [HttpGet("ObtenerSucursal")]

        public IActionResult ObtenerSucursal()
        {

            return Ok(_service.ObtenerSucursal());
        }
        [HttpPost("InsertarSucursal")]
        public IActionResult InsertarSucursal([FromBody] InsertarSucursalDto dto)
        {
            if (dto == null)
                return BadRequest("El cuerpo de la solicitud no puede ser nulo.");

            var resultado = _service.InsertarSucursal(dto);

            if (!resultado.Ok)
                return BadRequest(resultado);

            return Ok(resultado);
        }
        [HttpPut("ActualizarSucursal")]
        public IActionResult ActualizarSucursal([FromBody] ActualizarSucursalDto dto)
        {
            if (!ModelState.IsValid)
                return BadRequest(ModelState);

            var resultado = _service.ActualizarSucursal(dto);

            if (resultado.Ok)
                return Ok(resultado);

            return BadRequest(resultado);
        }


        [HttpPut("DesactivarSucursal")]
        public IActionResult InactivarSucursal([FromBody] DesactivarSucursalDto dto)
        {
            var respuesta = _service.InactivarSucursal(dto);
            if (!respuesta.Ok)
                return StatusCode(500, respuesta);

            return Ok(respuesta);
        }

    }

}

