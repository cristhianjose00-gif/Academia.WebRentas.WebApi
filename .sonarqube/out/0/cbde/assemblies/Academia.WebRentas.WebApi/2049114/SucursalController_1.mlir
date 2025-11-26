func @_Academia.WebRentas.WebApi.Controllers.SucursalController.ObtenerSucursales$int$(i32) -> none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\SucursalController.cs" :19 :8) {
^entry (%_pagina : i32):
%0 = cbde.alloca i32 loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\SucursalController.cs" :20 :47)
cbde.store %_pagina, %0 : memref<i32> loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\SucursalController.cs" :20 :47)
br ^0

^0: // BinaryBranchBlock
%1 = constant 10 : i32 loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\SucursalController.cs" :22 :41)
%2 = cbde.alloca i32 loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\SucursalController.cs" :22 :22) // tamanoPaginaFijo
cbde.store %1, %2 : memref<i32> loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\SucursalController.cs" :22 :22)
%3 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\SucursalController.cs" :24 :36) // Not a variable of known type: _service
%4 = cbde.load %0 : memref<i32> loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\SucursalController.cs" :24 :63)
%5 = cbde.load %2 : memref<i32> loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\SucursalController.cs" :24 :71)
%6 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\SucursalController.cs" :24 :36) // _service.ObtenerSucursales(pagina, tamanoPaginaFijo) (InvocationExpression)
%8 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\SucursalController.cs" :26 :16) // Not a variable of known type: respuestaPaginada
%9 = cbde.unknown : i1 loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\SucursalController.cs" :26 :16) // respuestaPaginada.Ok (SimpleMemberAccessExpression)
cond_br %9, ^1, ^2 loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\SucursalController.cs" :26 :16)

^1: // JumpBlock
// Entity from another assembly: Ok
%10 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\SucursalController.cs" :28 :26) // Not a variable of known type: respuestaPaginada
%11 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\SucursalController.cs" :28 :26) // respuestaPaginada.Data (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\SucursalController.cs" :28 :23) // Ok(respuestaPaginada.Data) (InvocationExpression)
return %12 : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\SucursalController.cs" :28 :16)

^2: // JumpBlock
%13 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\SucursalController.cs" :31 :19) // this (ThisExpression)
%14 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\SucursalController.cs" :31 :41) // Not a variable of known type: respuestaPaginada
%15 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\SucursalController.cs" :31 :19) // this.ActionResultFrom(respuestaPaginada) (InvocationExpression)
return %15 : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\SucursalController.cs" :31 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_Academia.WebRentas.WebApi.Controllers.SucursalController.InsertarSucursal$Academia.WebRentas.WebApi._Common.Dtos.SucursalDto.InsertarSucursalDto$(none) -> none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\SucursalController.cs" :34 :8) {
^entry (%_insertarSucursalDto : none):
%0 = cbde.alloca none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\SucursalController.cs" :35 :46)
cbde.store %_insertarSucursalDto, %0 : memref<none> loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\SucursalController.cs" :35 :46)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\SucursalController.cs" :37 :55) // Not a variable of known type: _service
%2 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\SucursalController.cs" :37 :81) // Not a variable of known type: insertarSucursalDto
%3 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\SucursalController.cs" :37 :55) // _service.InsertarSucursal(insertarSucursalDto) (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\SucursalController.cs" :38 :19) // this (ThisExpression)
%6 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\SucursalController.cs" :38 :41) // Not a variable of known type: resultado
%7 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\SucursalController.cs" :38 :19) // this.ActionResultFrom(resultado) (InvocationExpression)
return %7 : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\SucursalController.cs" :38 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_Academia.WebRentas.WebApi.Controllers.SucursalController.ActualizarSucursal$Academia.WebRentas.WebApi._Common.Dtos.SucursalDto.ActualizarSucursalDto$(none) -> none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\SucursalController.cs" :41 :8) {
^entry (%_actualizarSucursalDto : none):
%0 = cbde.alloca none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\SucursalController.cs" :42 :48)
cbde.store %_actualizarSucursalDto, %0 : memref<none> loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\SucursalController.cs" :42 :48)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\SucursalController.cs" :44 :17) // Identifier from another assembly: ModelState
%2 = cbde.unknown : i1 loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\SucursalController.cs" :44 :17) // ModelState.IsValid (SimpleMemberAccessExpression)
%3 = cbde.unknown : i1 loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\SucursalController.cs" :44 :16) // !ModelState.IsValid (LogicalNotExpression)
cond_br %3, ^1, ^2 loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\SucursalController.cs" :44 :16)

^1: // JumpBlock
// Entity from another assembly: BadRequest
%4 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\SucursalController.cs" :45 :34) // Identifier from another assembly: ModelState
%5 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\SucursalController.cs" :45 :23) // BadRequest(ModelState) (InvocationExpression)
return %5 : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\SucursalController.cs" :45 :16)

^2: // JumpBlock
%6 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\SucursalController.cs" :47 :57) // Not a variable of known type: _service
%7 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\SucursalController.cs" :47 :85) // Not a variable of known type: actualizarSucursalDto
%8 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\SucursalController.cs" :47 :57) // _service.ActualizarSucursal(actualizarSucursalDto) (InvocationExpression)
%10 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\SucursalController.cs" :48 :19) // this (ThisExpression)
%11 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\SucursalController.cs" :48 :41) // Not a variable of known type: resultado
%12 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\SucursalController.cs" :48 :19) // this.ActionResultFrom(resultado) (InvocationExpression)
return %12 : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\SucursalController.cs" :48 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_Academia.WebRentas.WebApi.Controllers.SucursalController.InactivarSucursal$int$(i32) -> none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\SucursalController.cs" :51 :8) {
^entry (%_sucursalId : i32):
%0 = cbde.alloca i32 loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\SucursalController.cs" :52 :47)
cbde.store %_sucursalId, %0 : memref<i32> loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\SucursalController.cs" :52 :47)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\SucursalController.cs" :54 :58) // new DesactivarSucursalDto              {                  SucursalID = sucursalId              } (ObjectCreationExpression)
%2 = cbde.load %0 : memref<i32> loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\SucursalController.cs" :56 :29)
%4 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\SucursalController.cs" :59 :28) // Not a variable of known type: _service
%5 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\SucursalController.cs" :59 :55) // Not a variable of known type: desactivarSucursalDto
%6 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\SucursalController.cs" :59 :28) // _service.InactivarSucursal(desactivarSucursalDto) (InvocationExpression)
%8 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\SucursalController.cs" :60 :19) // this (ThisExpression)
%9 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\SucursalController.cs" :60 :41) // Not a variable of known type: resultado
%10 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\SucursalController.cs" :60 :19) // this.ActionResultFrom(resultado) (InvocationExpression)
return %10 : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\Controllers\\SucursalController.cs" :60 :12)

^1: // ExitBlock
cbde.unreachable

}
