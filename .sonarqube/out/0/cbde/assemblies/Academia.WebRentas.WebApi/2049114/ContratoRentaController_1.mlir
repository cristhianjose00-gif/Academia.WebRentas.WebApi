func @_Academia.WebRentas.WebApi.Controllers.ContratoRentaController.ObtenerContratosRenta$int$(i32) -> none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\ContratoRentaController.cs" :22 :8) {
^entry (%_pagina : i32):
%0 = cbde.alloca i32 loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\ContratoRentaController.cs" :24 :11)
cbde.store %_pagina, %0 : memref<i32> loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\ContratoRentaController.cs" :24 :11)
br ^0

^0: // BinaryBranchBlock
%1 = constant 10 : i32 loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\ContratoRentaController.cs" :27 :41)
%2 = cbde.alloca i32 loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\ContratoRentaController.cs" :27 :22) // tamanoPaginaFijo
cbde.store %1, %2 : memref<i32> loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\ContratoRentaController.cs" :27 :22)
%3 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\ContratoRentaController.cs" :29 :68) // Not a variable of known type: _service
%4 = cbde.load %0 : memref<i32> loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\ContratoRentaController.cs" :29 :98)
%5 = cbde.load %2 : memref<i32> loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\ContratoRentaController.cs" :29 :106)
%6 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\ContratoRentaController.cs" :29 :68) // _service.ObtenerContratoRenta(pagina, tamanoPaginaFijo) (InvocationExpression)
%8 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\ContratoRentaController.cs" :31 :16) // Not a variable of known type: respuestaPaginada
%9 = cbde.unknown : i1 loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\ContratoRentaController.cs" :31 :16) // respuestaPaginada.Ok (SimpleMemberAccessExpression)
cond_br %9, ^1, ^2 loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\ContratoRentaController.cs" :31 :16)

^1: // JumpBlock
// Entity from another assembly: Ok
%10 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\ContratoRentaController.cs" :33 :26) // Not a variable of known type: respuestaPaginada
%11 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\ContratoRentaController.cs" :33 :26) // respuestaPaginada.Data (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\ContratoRentaController.cs" :33 :23) // Ok(respuestaPaginada.Data) (InvocationExpression)
return %12 : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\ContratoRentaController.cs" :33 :16)

^2: // JumpBlock
%13 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\ContratoRentaController.cs" :36 :19) // this (ThisExpression)
%14 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\ContratoRentaController.cs" :36 :41) // Not a variable of known type: respuestaPaginada
%15 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\ContratoRentaController.cs" :36 :19) // this.ActionResultFrom(respuestaPaginada) (InvocationExpression)
return %15 : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\ContratoRentaController.cs" :36 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_Academia.WebRentas.WebApi.Controllers.ContratoRentaController.InsertarContrato$Academia.WebRentas.WebApi._Common.Dtos.ContratoRentaDto.InsertarContratoDto$(none) -> none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\ContratoRentaController.cs" :39 :8) {
^entry (%_insertarContratoDto : none):
%0 = cbde.alloca none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\ContratoRentaController.cs" :40 :46)
cbde.store %_insertarContratoDto, %0 : memref<none> loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\ContratoRentaController.cs" :40 :46)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\ContratoRentaController.cs" :43 :55) // Not a variable of known type: _service
%2 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\ContratoRentaController.cs" :43 :81) // Not a variable of known type: insertarContratoDto
%3 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\ContratoRentaController.cs" :43 :55) // _service.InsertarContrato(insertarContratoDto) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\ContratoRentaController.cs" :44 :19) // this (ThisExpression)
%6 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\ContratoRentaController.cs" :44 :41) // Not a variable of known type: resultado
%7 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\ContratoRentaController.cs" :44 :19) // this.ActionResultFrom(resultado) (InvocationExpression)
return %7 : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\ContratoRentaController.cs" :44 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_Academia.WebRentas.WebApi.Controllers.ContratoRentaController.ActualizarContrato$Academia.WebRentas.WebApi._Common.Dtos.ContratoRentaDto.ActualizarContratoDto$(none) -> none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\ContratoRentaController.cs" :47 :8) {
^entry (%_actualizarContratoDto : none):
%0 = cbde.alloca none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\ContratoRentaController.cs" :48 :48)
cbde.store %_actualizarContratoDto, %0 : memref<none> loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\ContratoRentaController.cs" :48 :48)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\ContratoRentaController.cs" :50 :17) // Identifier from another assembly: ModelState
%2 = cbde.unknown : i1 loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\ContratoRentaController.cs" :50 :17) // ModelState.IsValid (SimpleMemberAccessExpression)
%3 = cbde.unknown : i1 loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\ContratoRentaController.cs" :50 :16) // !ModelState.IsValid (LogicalNotExpression)
cond_br %3, ^1, ^2 loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\ContratoRentaController.cs" :50 :16)

^1: // JumpBlock
// Entity from another assembly: BadRequest
%4 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\ContratoRentaController.cs" :51 :34) // Identifier from another assembly: ModelState
%5 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\ContratoRentaController.cs" :51 :23) // BadRequest(ModelState) (InvocationExpression)
return %5 : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\ContratoRentaController.cs" :51 :16)

^2: // JumpBlock
%6 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\ContratoRentaController.cs" :53 :57) // Not a variable of known type: _service
%7 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\ContratoRentaController.cs" :53 :85) // Not a variable of known type: actualizarContratoDto
%8 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\ContratoRentaController.cs" :53 :57) // _service.ActualizarContrato(actualizarContratoDto) (InvocationExpression)
%10 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\ContratoRentaController.cs" :54 :19) // this (ThisExpression)
%11 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\ContratoRentaController.cs" :54 :41) // Not a variable of known type: resultado
%12 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\ContratoRentaController.cs" :54 :19) // this.ActionResultFrom(resultado) (InvocationExpression)
return %12 : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\ContratoRentaController.cs" :54 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_Academia.WebRentas.WebApi.Controllers.ContratoRentaController.InactivarContrato$int$(i32) -> none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\ContratoRentaController.cs" :57 :8) {
^entry (%_contratoId : i32):
%0 = cbde.alloca i32 loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\ContratoRentaController.cs" :58 :47)
cbde.store %_contratoId, %0 : memref<i32> loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\ContratoRentaController.cs" :58 :47)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\ContratoRentaController.cs" :60 :56) // new InactivarContratoDto              {                  ContratoID = contratoId,              } (ObjectCreationExpression)
%2 = cbde.load %0 : memref<i32> loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\ContratoRentaController.cs" :62 :29)
%4 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\ContratoRentaController.cs" :65 :56) // Not a variable of known type: _service
%5 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\ContratoRentaController.cs" :65 :83) // Not a variable of known type: inactivarContratoDto
%6 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\ContratoRentaController.cs" :65 :56) // _service.InactivarContrato(inactivarContratoDto) (InvocationExpression)
%8 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\ContratoRentaController.cs" :67 :19) // this (ThisExpression)
%9 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\ContratoRentaController.cs" :67 :41) // Not a variable of known type: resultado
%10 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\ContratoRentaController.cs" :67 :19) // this.ActionResultFrom(resultado) (InvocationExpression)
return %10 : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\ContratoRentaController.cs" :67 :12)

^1: // ExitBlock
cbde.unreachable

}
