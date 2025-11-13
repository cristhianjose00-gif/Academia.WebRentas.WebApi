using Farsiman.Application.Core.Standard.DTOs;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics.CodeAnalysis;

namespace Academia.WebRentas.WebApi._Common
{
    [ExcludeFromCodeCoverage]
    public static class ControllerExtension
    {

        public static IActionResult ActionResultFrom<TData>(this ControllerBase controller, Respuesta<TData> respuesta)
        {
            return controller.StatusCode(int.Parse(respuesta.Codigo), respuesta);
        }
    }
}
