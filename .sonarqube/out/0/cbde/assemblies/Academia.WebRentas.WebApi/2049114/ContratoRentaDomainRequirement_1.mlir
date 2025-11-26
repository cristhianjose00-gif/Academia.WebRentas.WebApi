func @_Academia.WebRentas.WebApi._Common.DomainRequirement.ContratoRentaDomainRequirement.Fill$bool.bool.bool$(i1, i1, i1) -> none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\_Common\\DomainRequirement\\ContratoRentaDomainRequirement.cs" :10 :8) {
^entry (%_proveedorExiste : i1, %_monedaExiste : i1, %_numeroContratoUnico : i1):
%0 = cbde.alloca i1 loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\_Common\\DomainRequirement\\ContratoRentaDomainRequirement.cs" :11 :12)
cbde.store %_proveedorExiste, %0 : memref<i1> loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\_Common\\DomainRequirement\\ContratoRentaDomainRequirement.cs" :11 :12)
%1 = cbde.alloca i1 loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\_Common\\DomainRequirement\\ContratoRentaDomainRequirement.cs" :12 :12)
cbde.store %_monedaExiste, %1 : memref<i1> loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\_Common\\DomainRequirement\\ContratoRentaDomainRequirement.cs" :12 :12)
%2 = cbde.alloca i1 loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\_Common\\DomainRequirement\\ContratoRentaDomainRequirement.cs" :13 :12)
cbde.store %_numeroContratoUnico, %2 : memref<i1> loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\_Common\\DomainRequirement\\ContratoRentaDomainRequirement.cs" :13 :12)
br ^0

^0: // JumpBlock
%3 = cbde.unknown : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\_Common\\DomainRequirement\\ContratoRentaDomainRequirement.cs" :16 :19) // new ContratoRentaDomainRequirement              {                  ProveedorExiste = proveedorExiste,                  MonedaExiste = monedaExiste,                  NumeroContratoUnico = numeroContratoUnico              } (ObjectCreationExpression)
%4 = cbde.load %0 : memref<i1> loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\_Common\\DomainRequirement\\ContratoRentaDomainRequirement.cs" :18 :34)
%5 = cbde.load %1 : memref<i1> loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\_Common\\DomainRequirement\\ContratoRentaDomainRequirement.cs" :19 :31)
%6 = cbde.load %2 : memref<i1> loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\_Common\\DomainRequirement\\ContratoRentaDomainRequirement.cs" :20 :38)
return %3 : none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\_Common\\DomainRequirement\\ContratoRentaDomainRequirement.cs" :16 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_Academia.WebRentas.WebApi._Common.DomainRequirement.ContratoRentaDomainRequirement.ObtenerErrores$$() -> none loc("C:\\Users\\cjpineda\\Desktop\\Ejercicios c#\\ProyectoAcademia\\Academia.WebRentas.WebApi\\_Common\\DomainRequirement\\ContratoRentaDomainRequirement.cs" :24 :8) {
^entry :
br ^0

