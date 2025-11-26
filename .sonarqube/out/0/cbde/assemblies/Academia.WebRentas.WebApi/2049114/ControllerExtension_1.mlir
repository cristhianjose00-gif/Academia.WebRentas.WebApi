func @_Academia.WebRentas.WebApi._Common.ControllerExtension.ActionResultFrom$TData$$Microsoft.AspNetCore.Mvc.ControllerBase.Farsiman.Application.Core.Standard.DTOs.Respuesta$TData$$(none, none) -> none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\_Common\\ControllerExtension.cs" :10 :8) {
^entry (%_controller : none, %_respuesta : none):
%0 = cbde.alloca none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\_Common\\ControllerExtension.cs" :10 :60)
cbde.store %_controller, %0 : memref<none> loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\_Common\\ControllerExtension.cs" :10 :60)
%1 = cbde.alloca none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\_Common\\ControllerExtension.cs" :10 :92)
cbde.store %_respuesta, %1 : memref<none> loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\_Common\\ControllerExtension.cs" :10 :92)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\_Common\\ControllerExtension.cs" :12 :19) // Not a variable of known type: controller
%3 = cbde.unknown : i32 loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\_Common\\ControllerExtension.cs" :12 :41) // int (PredefinedType)
%4 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\_Common\\ControllerExtension.cs" :12 :51) // Not a variable of known type: respuesta
%5 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\_Common\\ControllerExtension.cs" :12 :51) // respuesta.Codigo (SimpleMemberAccessExpression)
%6 = cbde.unknown : i32 loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\_Common\\ControllerExtension.cs" :12 :41) // int.Parse(respuesta.Codigo) (InvocationExpression)
%7 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\_Common\\ControllerExtension.cs" :12 :70) // Not a variable of known type: respuesta
%8 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\_Common\\ControllerExtension.cs" :12 :19) // controller.StatusCode(int.Parse(respuesta.Codigo), respuesta) (InvocationExpression)
return %8 : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\_Common\\ControllerExtension.cs" :12 :12)

^1: // ExitBlock
cbde.unreachable

}
