Ï
rC:\Users\cjpineda\Desktop\Ejercicios c#\ProyectoAcademia\Academia.WebRentas.WebApi\Controllers\CommonController.cs
	namespace 	
Academia
 
. 
	WebRentas 
. 
WebApi #
.# $
Controllers$ /
{ 
[ #
ExcludeFromCodeCoverage 
] 
[ 
Route 

(
 
$str 
) 
] 
[		 
ApiController		 
]		 
public 

class 
CommonController !
:" #
ControllerBase$ 2
{ 
private 
readonly 
CommonService &
_service' /
;/ 0
public 
CommonController 
(  
CommonService  -
service. 5
)5 6
{ 	
_service 
= 
service 
; 
} 	
[ 	
HttpGet	 
( 
$str !
)! "
]" #
public 
IActionResult 
ObtenerMonedas +
(+ ,
), -
{ 	
return 
Ok 
( 
_service 
. 
ObtenerMonedas -
(- .
). /
)/ 0
;0 1
} 	
[ 	
HttpGet	 
( 
$str '
)' (
]( )
public 
IActionResult  
ObtenerColaboradores 1
(1 2
)2 3
{   	
return"" 
Ok"" 
("" 
_service"" 
.""  
ObtenerColaboradores"" 3
(""3 4
)""4 5
)""5 6
;""6 7
}## 	
[$$ 	
HttpGet$$	 
($$ 
$str$$ '
)$$' (
]$$( )
public&& 
IActionResult&&  
ObtenerTasasDeCambio&& 1
(&&1 2
)&&2 3
{'' 	
return)) 
Ok)) 
()) 
_service)) 
.))  
ObtenerTasasDeCambio)) 3
())3 4
)))4 5
)))5 6
;))6 7
}** 	
[++ 	
HttpGet++	 
(++ 
$str++ $
)++$ %
]++% &
public-- 
IActionResult-- 
ObtenerDocumentos-- .
(--. /
)--/ 0
{.. 	
return00 
Ok00 
(00 
_service00 
.00 
ObtenerDocumento00 /
(00/ 0
)000 1
)001 2
;002 3
}11 	
}33 
}66 ˙'
yC:\Users\cjpineda\Desktop\Ejercicios c#\ProyectoAcademia\Academia.WebRentas.WebApi\Controllers\ContratoRentaController.cs
	namespace

 	
Academia


 
.

 
	WebRentas

 
.

 
WebApi

 #
.

# $
Controllers

$ /
{ 
[ #
ExcludeFromCodeCoverage 
] 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class #
ContratoRentaController (
:) *
ControllerBase+ 9
{ 
private 
readonly 
IContratoRenta '
_service( 0
;0 1
public #
ContratoRentaController &
(& ' 
ContratoRentaService' ;
service< C
)C D
{ 	
_service 
= 
service 
; 
} 	
[ 	
HttpGet	 
( 
$str (
)( )
]) *
public 
IActionResult !
ObtenerContratosRenta 2
(2 3
[ 
	FromQuery 
] 
int 
pagina !
=" #
$num$ %
) 
{ 	
const 
int 
tamanoPaginaFijo &
=' (
$num) +
;+ ,
	Respuesta 
< 
List 
< 
ObtenerContratoDto -
>- .
>. /
respuestaPaginada0 A
=B C
_serviceD L
.L M 
ObtenerContratoRentaM a
(a b
paginab h
,h i
tamanoPaginaFijoj z
)z {
;{ |
if   
(   
respuestaPaginada   !
.  ! "
Ok  " $
)  $ %
{!! 
return"" 
Ok"" 
("" 
respuestaPaginada"" +
.""+ ,
Data"", 0
)""0 1
;""1 2
}## 
return%% 
this%% 
.%% 
ActionResultFrom%% (
(%%( )
respuestaPaginada%%) :
)%%: ;
;%%; <
}&& 	
[(( 	
HttpPost((	 
((( 
$str(( )
)(() *
]((* +
public)) 
IActionResult)) 
InsertarContrato)) -
())- .
[)). /
FromBody))/ 7
]))7 8
InsertarContratoDto))9 L
insertarContratoDto))M `
)))` a
{** 	
	Respuesta,, 
<,, 
InsertarContratoDto,, )
>,,) *
	resultado,,+ 4
=,,5 6
_service,,7 ?
.,,? @
InsertarContrato,,@ P
(,,P Q
insertarContratoDto,,Q d
),,d e
;,,e f
return-- 
this-- 
.-- 
ActionResultFrom-- (
(--( )
	resultado--) 2
)--2 3
;--3 4
}.. 	
[00 	
HttpPut00	 
(00 
$str00 *
)00* +
]00+ ,
public11 
IActionResult11 
ActualizarContrato11 /
(11/ 0
[110 1
FromBody111 9
]119 :!
ActualizarContratoDto11; P!
actualizarContratoDto11Q f
)11f g
{22 	
if33 
(33 
!33 

ModelState33 
.33 
IsValid33 #
)33# $
return44 

BadRequest44 !
(44! "

ModelState44" ,
)44, -
;44- .
	Respuesta66 
<66 !
ActualizarContratoDto66 +
>66+ ,
	resultado66- 6
=667 8
_service669 A
.66A B
ActualizarContrato66B T
(66T U!
actualizarContratoDto66U j
)66j k
;66k l
return77 
this77 
.77 
ActionResultFrom77 (
(77( )
	resultado77) 2
)772 3
;773 4
}88 	
[:: 	
HttpPut::	 
(:: 
$str:: $
)::$ %
]::% &
public;; 
IActionResult;; 
InactivarContrato;; .
(;;. /
[;;/ 0
	FromQuery;;0 9
];;9 :
int;;; >

contratoId;;? I
);;I J
{<< 	 
InactivarContratoDto==   
inactivarContratoDto==! 5
===6 7
new==8 ; 
InactivarContratoDto==< P
{>> 

ContratoID?? 
=?? 

contratoId?? '
,??' (
}@@ 
;@@ 
	RespuestaBB 
<BB  
InactivarContratoDtoBB *
>BB* +
	resultadoBB, 5
=BB6 7
_serviceBB8 @
.BB@ A
InactivarContratoBBA R
(BBR S 
inactivarContratoDtoBBS g
)BBg h
;BBh i
returnDD 
thisDD 
.DD 
ActionResultFromDD (
(DD( )
	resultadoDD) 2
)DD2 3
;DD3 4
}EE 	
}JJ 
}LL ñ
uC:\Users\cjpineda\Desktop\Ejercicios c#\ProyectoAcademia\Academia.WebRentas.WebApi\Controllers\PagoRentaController.cs
	namespace 	
Academia
 
. 
	WebRentas 
. 
WebApi #
.# $
Controllers$ /
{ 
[ #
ExcludeFromCodeCoverage 
] 
[ 
Route 

(
 
$str 
) 
] 
[		 
ApiController		 
]		 
public 

class 
PagoRentaController $
:% &
ControllerBase' 5
{ 
private 
readonly 
PagoRentaService )
_service* 2
;2 3
public 
PagoRentaController "
(" #
PagoRentaService# 3
service4 ;
); <
{ 	
_service 
= 
service 
; 
} 	
[ 	
HttpGet	 
( 
$str $
)$ %
]% &
public 
IActionResult 
ObtenerPagosRenta .
(. /
)/ 0
{ 	
return 
Ok 
( 
_service 
. 
ObtenerPagosRenta 0
(0 1
)1 2
)2 3
;3 4
} 	
} 
} ò
uC:\Users\cjpineda\Desktop\Ejercicios c#\ProyectoAcademia\Academia.WebRentas.WebApi\Controllers\ProveedorController.cs
	namespace 	
Academia
 
. 
	WebRentas 
. 
WebApi #
.# $
Controllers$ /
{ 
[ #
ExcludeFromCodeCoverage 
] 
[ 
Route 

(
 
$str 
) 
] 
[		 
ApiController		 
]		 
public

 

class

 
ProveedorController

 $
:

% &
ControllerBase

' 5
{ 
private 
readonly 
ProveedorService )
_service* 2
;2 3
public 
ProveedorController "
(" #
ProveedorService# 3
service4 ;
); <
{ 	
_service 
= 
service 
; 
} 	
[ 	
HttpGet	 
( 
$str %
)% &
]& '
public 
IActionResult 
ObtenerProveedores /
(/ 0
)0 1
{ 	
return 
Ok 
( 
_service 
. 
ObtenerProveedores 1
(1 2
)2 3
)3 4
;4 5
} 	
} 
} è
tC:\Users\cjpineda\Desktop\Ejercicios c#\ProyectoAcademia\Academia.WebRentas.WebApi\Controllers\ServicioController.cs
	namespace 	
Academia
 
. 
	WebRentas 
. 
WebApi #
.# $
Controllers$ /
{ 
[ #
ExcludeFromCodeCoverage 
] 
[ 
Route 

(
 
$str 
) 
] 
[		 
ApiController		 
]		 
public

 

class

 
ServicioController

 #
:

$ %
ControllerBase

& 4
{ 
private 
readonly 
ServicioService (
_service) 1
;1 2
public 
ServicioController !
(! "
ServicioService" 1
service2 9
)9 :
{ 	
_service 
= 
service 
; 
} 	
[ 	
HttpGet	 
( 
$str #
)# $
]$ %
public 
IActionResult 
ObtenerServicios -
(- .
). /
{ 	
return 
Ok 
( 
_service 
. 
ObtenerServicios /
(/ 0
)0 1
)1 2
;2 3
} 	
} 
} õ&
tC:\Users\cjpineda\Desktop\Ejercicios c#\ProyectoAcademia\Academia.WebRentas.WebApi\Controllers\SucursalController.cs
	namespace 	
Academia
 
. 
	WebRentas 
. 
WebApi #
.# $
Controllers$ /
{		 
[

 #
ExcludeFromCodeCoverage

 
]

 
[ 
Route 

(
 
$str 
) 
] 
[ 
ApiController 
] 
public 

class 
SucursalController #
:$ %
ControllerBase& 4
{ 
private 
readonly 
SucursalService (
_service) 1
;1 2
public 
SucursalController !
(! "
SucursalService" 1
service2 9
)9 :
{ 	
_service 
= 
service 
; 
} 	
[ 	
HttpGet	 
( 
$str $
)$ %
]% &
public 
IActionResult 
ObtenerSucursales .
(. /
[/ 0
	FromQuery0 9
]9 :
int; >
pagina? E
=F G
$numH I
)I J
{ 	
const 
int 
tamanoPaginaFijo &
=' (
$num) +
;+ ,
var 
respuestaPaginada !
=" #
_service$ ,
., -
ObtenerSucursales- >
(> ?
pagina? E
,E F
tamanoPaginaFijoG W
)W X
;X Y
if 
( 
respuestaPaginada !
.! "
Ok" $
)$ %
{ 
return 
Ok 
( 
respuestaPaginada +
.+ ,
Data, 0
)0 1
;1 2
} 
return   
this   
.   
ActionResultFrom   (
(  ( )
respuestaPaginada  ) :
)  : ;
;  ; <
}!! 	
[## 	
HttpPost##	 
(## 
$str## $
)##$ %
]##% &
public$$ 
IActionResult$$ 
InsertarSucursal$$ -
($$- .
[$$. /
FromBody$$/ 7
]$$7 8
InsertarSucursalDto$$9 L
insertarSucursalDto$$M `
)$$` a
{%% 	
	Respuesta&& 
<&& 
InsertarSucursalDto&& )
>&&) *
	resultado&&+ 4
=&&5 6
_service&&7 ?
.&&? @
InsertarSucursal&&@ P
(&&P Q
insertarSucursalDto&&Q d
)&&d e
;&&e f
return'' 
this'' 
.'' 
ActionResultFrom'' (
(''( )
	resultado'') 2
)''2 3
;''3 4
}(( 	
[** 	
HttpPut**	 
(** 
$str** %
)**% &
]**& '
public++ 
IActionResult++ 
ActualizarSucursal++ /
(++/ 0
[++0 1
FromBody++1 9
]++9 :!
ActualizarSucursalDto++; P!
actualizarSucursalDto++Q f
)++f g
{,, 	
if-- 
(-- 
!-- 

ModelState-- 
.-- 
IsValid-- #
)--# $
return.. 

BadRequest.. !
(..! "

ModelState.." ,
).., -
;..- .
	Respuesta00 
<00 !
ActualizarSucursalDto00 +
>00+ ,
	resultado00- 6
=007 8
_service009 A
.00A B
ActualizarSucursal00B T
(00T U!
actualizarSucursalDto00U j
)00j k
;00k l
return11 
this11 
.11 
ActionResultFrom11 (
(11( )
	resultado11) 2
)112 3
;113 4
}22 	
[44 	
HttpPut44	 
(44 
$str44 $
)44$ %
]44% &
public55 
IActionResult55 
InactivarSucursal55 .
(55. /
[55/ 0
	FromQuery550 9
]559 :
int55; >

sucursalId55? I
)55I J
{66 	!
DesactivarSucursalDto77 !!
desactivarSucursalDto77" 7
=778 9
new77: =!
DesactivarSucursalDto77> S
{88 

SucursalID99 
=99 

sucursalId99 '
}:: 
;:: 
var<< 
	resultado<< 
=<< 
_service<< $
.<<$ %
InactivarSucursal<<% 6
(<<6 7!
desactivarSucursalDto<<7 L
)<<L M
;<<M N
return== 
this== 
.== 
ActionResultFrom== (
(==( )
	resultado==) 2
)==2 3
;==3 4
}>> 	
}AA 
}CC ±,
}C:\Users\cjpineda\Desktop\Ejercicios c#\ProyectoAcademia\Academia.WebRentas.WebApi\Infrastructure\BDRentas\BDRentasContext.cs
	namespace 	
Academia
 
. 
	WebRentas 
. 
WebApi #
.# $
Infrastructure$ 2
.2 3
BDRentas3 ;
{ 
[		 #
ExcludeFromCodeCoverage		 
]		 
public

 

class

 
BDRentasContext

  
:

! "
	DbContext

# ,
{ 
public 
BDRentasContext 
( 
DbContextOptions /
</ 0
BDRentasContext0 ?
>? @
optionsA H
)H I
:J K
baseL P
(P Q
optionsQ X
)X Y
{ 	
} 	
public 
DbSet 
< 
Moneda 
> 
Monedas $
=>% '
Set( +
<+ ,
Moneda, 2
>2 3
(3 4
)4 5
;5 6
public 
DbSet 
< 
	Proveedor 
> 
Proveedores  +
=>, .
Set/ 2
<2 3
	Proveedor3 <
>< =
(= >
)> ?
;? @
public 
DbSet 
< 
Colaborador  
>  !
Colaboradores" /
=>0 2
Set3 6
<6 7
Colaborador7 B
>B C
(C D
)D E
;E F
public 
DbSet 
< 
TasaDeCambio !
>! "
TasasDeCambio# 0
=>1 3
Set4 7
<7 8
TasaDeCambio8 D
>D E
(E F
)F G
;G H
public 
DbSet 
< 
Servicio 
> 
	Servicios (
=>) +
Set, /
</ 0
Servicio0 8
>8 9
(9 :
): ;
;; <
public 
DbSet 
< 
	PagoRenta 
> 

PagosRenta  *
=>+ -
Set. 1
<1 2
	PagoRenta2 ;
>; <
(< =
)= >
;> ?
public 
DbSet 
< 
TipoDocumento "
>" #
TiposDocumento$ 2
=>3 5
Set6 9
<9 :
TipoDocumento: G
>G H
(H I
)I J
;J K
public 
DbSet 
< 
	Documento 
> 

Documentos  *
=>+ -
Set. 1
<1 2
	Documento2 ;
>; <
(< =
)= >
;> ?
public 
DbSet 
< 
Sucursal 
> 

Sucursales )
=>* ,
Set- 0
<0 1
Sucursal1 9
>9 :
(: ;
); <
;< =
public 
DbSet 
< 
LogSincronizacion &
>& '
ContratosRenta( 6
=>7 9
Set: =
<= >
LogSincronizacion> O
>O P
(P Q
)Q R
;R S
	protected 
override 
void 
OnModelCreating  /
(/ 0
ModelBuilder0 <
modelBuilder= I
)I J
{ 	
modelBuilder 
. 
ApplyConfiguration +
(+ ,
new, /
	MonedaMap0 9
(9 :
): ;
); <
;< =
modelBuilder   
.   
ApplyConfiguration   +
(  + ,
new  , /
ProveedorMap  0 <
(  < =
)  = >
)  > ?
;  ? @
modelBuilder!! 
.!! 
ApplyConfiguration!! +
(!!+ ,
new!!, /
ColaboradorMap!!0 >
(!!> ?
)!!? @
)!!@ A
;!!A B
modelBuilder"" 
."" 
ApplyConfiguration"" +
(""+ ,
new"", /
TasaDeCambioMap""0 ?
(""? @
)""@ A
)""A B
;""B C
modelBuilder## 
.## 
ApplyConfiguration## +
(##+ ,
new##, /
ContratoRentaMap##0 @
(##@ A
)##A B
)##B C
;##C D
modelBuilder$$ 
.$$ 
ApplyConfiguration$$ +
($$+ ,
new$$, /
ServicioMap$$0 ;
($$; <
)$$< =
)$$= >
;$$> ?
modelBuilder%% 
.%% 
ApplyConfiguration%% +
(%%+ ,
new%%, /
PagoRentaMap%%0 <
(%%< =
)%%= >
)%%> ?
;%%? @
modelBuilder&& 
.&& 
ApplyConfiguration&& +
(&&+ ,
new&&, /
TipoDocumentoMap&&0 @
(&&@ A
)&&A B
)&&B C
;&&C D
modelBuilder'' 
.'' 
ApplyConfiguration'' +
(''+ ,
new'', /
DocumentoMap''0 <
(''< =
)''= >
)''> ?
;''? @
modelBuilder(( 
.(( 
ApplyConfiguration(( +
(((+ ,
new((, /
SucursalMap((0 ;
(((; <
)((< =
)((= >
;((> ?
modelBuilder)) 
.)) 
ApplyConfiguration)) +
())+ ,
new)), / 
LogSincronizacionMap))0 D
())D E
)))E F
)))F G
;))G H
}** 	
}-- 
}.. ∫
ÇC:\Users\cjpineda\Desktop\Ejercicios c#\ProyectoAcademia\Academia.WebRentas.WebApi\Infrastructure\BDRentas\Entities\Colaborador.cs
	namespace 	
Academia
 
. 
	WebRentas 
. 
WebApi #
.# $
Infrastructure$ 2
.2 3
BDRentas3 ;
.; <
Entities< D
{ 
public 

class 
Colaborador 
{ 
public 
int 
ColaboradorID  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
NombreCompleto $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
string 
Correo 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Telefono 
{  
get! $
;$ %
set& )
;) *
}+ ,
public		 
bool		 
Activo		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
public

 
DateTime

 
FechaCreacion

 %
{

& '
get

( +
;

+ ,
set

- 0
;

0 1
}

2 3
public 
string 
UsuarioAgrega #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
DateTime 
? 
FechaModificacion *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
string 
? 
UsuarioModifica &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
Colaborador 
( 
) 
{ 	
NombreCompleto 
= 
string #
.# $
Empty$ )
;) *
Correo 
= 
string 
. 
Empty !
;! "
Telefono 
= 
string 
. 
Empty #
;# $
UsuarioAgrega 
= 
string "
." #
Empty# (
;( )
} 	
} 
} ´#
ÑC:\Users\cjpineda\Desktop\Ejercicios c#\ProyectoAcademia\Academia.WebRentas.WebApi\Infrastructure\BDRentas\Entities\ContratoRenta.cs
	namespace 	
Academia
 
. 
	WebRentas 
. 
WebApi #
.# $
Infrastructure$ 2
.2 3
BDRentas3 ;
.; <
Entities< D
{ 
public 

class 
ContratoRenta 
{ 
public 
int 

ContratoID 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 
ProveedorID 
{  
get! $
;$ %
set& )
;) *
}+ ,
public		 
int		 
MonedaID		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
string

 
NumeroContrato

 $
{

% &
get

' *
;

* +
set

, /
;

/ 0
}

1 2
=

3 4
null

5 9
!

9 :
;

: ;
public 
decimal 
MontoContrato $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
decimal 
MontoMensual #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
DateTime 
FechaInicio #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
DateTime 
FechaFin  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
bool 
Activo 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
UsuarioAgrega #
{$ %
get& )
;) *
set+ .
;. /
}0 1
=2 3
null4 8
!8 9
;9 :
public 
DateTime 
? 
FechaAgrega $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
string 
? 
UsuarioModifica &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTime 
? 
FechaModifica &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
decimal 

MontoTotal !
{" #
get$ '
;' (
set) ,
;, -
}. /
public   
virtual   
ICollection   "
<  " #
	Documento  # ,
>  , -

Documentos  . 8
{  9 :
get  ; >
;  > ?
set  @ C
;  C D
}  E F
=  G H
new  I L
List  M Q
<  Q R
	Documento  R [
>  [ \
(  \ ]
)  ] ^
;  ^ _
public"" 
virtual"" 
Moneda"" 
Moneda"" $
{""% &
get""' *
;""* +
set"", /
;""/ 0
}""1 2
=""3 4
null""5 9
!""9 :
;"": ;
public$$ 
virtual$$ 
ICollection$$ "
<$$" #
	PagoRenta$$# ,
>$$, -

PagosRenta$$. 8
{$$9 :
get$$; >
;$$> ?
set$$@ C
;$$C D
}$$E F
=$$G H
new$$I L
List$$M Q
<$$Q R
	PagoRenta$$R [
>$$[ \
($$\ ]
)$$] ^
;$$^ _
public&& 
virtual&& 
	Proveedor&&  
	Proveedor&&! *
{&&+ ,
get&&- 0
;&&0 1
set&&2 5
;&&5 6
}&&7 8
=&&9 :
null&&; ?
!&&? @
;&&@ A
public(( 
virtual(( 
ICollection(( "
<((" #
Sucursal((# +
>((+ ,

Sucursales((- 7
{((8 9
get((: =
;((= >
set((? B
;((B C
}((D E
=((F G
new((H K
List((L P
<((P Q
Sucursal((Q Y
>((Y Z
(((Z [
)(([ \
;((\ ]
})) 
}++ Õ
ÄC:\Users\cjpineda\Desktop\Ejercicios c#\ProyectoAcademia\Academia.WebRentas.WebApi\Infrastructure\BDRentas\Entities\Documento.cs
	namespace 	
Academia
 
. 
	WebRentas 
. 
WebApi #
.# $
Infrastructure$ 2
.2 3
BDRentas3 ;
.; <
Entities< D
{ 
public 

class 
	Documento 
{ 
public 
int 
DocumentoID 
{  
get! $
;$ %
set& )
;) *
}+ ,
public		 
int		 
ProveedorID		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
public 
int 

ContratoID 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 
TipoDocumentoID "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
bool 

IncluyeISV 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
int 
MonedaID 
{ 
get !
;! "
set# &
;& '
}( )
public 
decimal 

MontoTotal !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
Estado 
{ 
get "
;" #
set$ '
;' (
}) *
=+ ,
null- 1
!1 2
;2 3
public 
string 
? 
Observaciones $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
string 
UsuarioAgrega #
{$ %
get& )
;) *
set+ .
;. /
}0 1
=2 3
null4 8
!8 9
;9 :
public 
DateTime 
FechaAgrega #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
? 
	Servicios  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
virtual 
ContratoRenta $
Contrato% -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
=< =
null> B
!B C
;C D
public!! 
virtual!! 
ICollection!! "
<!!" #
LogSincronizacion!!# 4
>!!4 5
LogSincronizacions!!6 H
{!!I J
get!!K N
;!!N O
set!!P S
;!!S T
}!!U V
=!!W X
new!!Y \
List!!] a
<!!a b
LogSincronizacion!!b s
>!!s t
(!!t u
)!!u v
;!!v w
public## 
virtual## 
Moneda## 
Moneda## $
{##% &
get##' *
;##* +
set##, /
;##/ 0
}##1 2
=##3 4
null##5 9
!##9 :
;##: ;
public%% 
virtual%% 
	Proveedor%%  
	Proveedor%%! *
{%%+ ,
get%%- 0
;%%0 1
set%%2 5
;%%5 6
}%%7 8
=%%9 :
null%%; ?
!%%? @
;%%@ A
public'' 
virtual'' 
TipoDocumento'' $
TipoDocumento''% 2
{''3 4
get''5 8
;''8 9
set'': =
;''= >
}''? @
=''A B
null''C G
!''G H
;''H I
})) 
}** ¢
àC:\Users\cjpineda\Desktop\Ejercicios c#\ProyectoAcademia\Academia.WebRentas.WebApi\Infrastructure\BDRentas\Entities\LogSincronizacion.cs
	namespace 	

EFCoreLab3
 
. 
Infraestructura $
;$ %
public 
class 
LogSincronizacion 
{ 
public 

int 
LogID 
{ 
get 
; 
set 
;  
}! "
public		 

int		 
DocumentoID		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
public 

DateTime 
FechaIntento  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 

string 
Estado 
{ 
get 
; 
set  #
;# $
}% &
=' (
null) -
!- .
;. /
public 

string 
? 
MensajeError 
{  !
get" %
;% &
set' *
;* +
}, -
public 

string 
UsuarioAgrega 
{  !
get" %
;% &
set' *
;* +
}, -
=. /
null0 4
!4 5
;5 6
public 

DateTime 
FechaAgrega 
{  !
get" %
;% &
set' *
;* +
}, -
public 

virtual 
	Documento 
	Documento &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
=5 6
null7 ;
!; <
;< =
} ˝
}C:\Users\cjpineda\Desktop\Ejercicios c#\ProyectoAcademia\Academia.WebRentas.WebApi\Infrastructure\BDRentas\Entities\Moneda.cs
	namespace 	
Academia
 
. 
	WebRentas 
. 
WebApi #
.# $
Infrastructure$ 2
.2 3
BDRentas3 ;
.; <
Entities< D
{ 
public 

class 
Moneda 
{ 
public 
int 
MonedaID 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
NombreMoneda "
{# $
get% (
;( )
set* -
;- .
}/ 0
=1 2
null3 7
!7 8
;8 9
public		 
string		 
Simbolo		 
{		 
get		  #
;		# $
set		% (
;		( )
}		* +
=		, -
null		. 2
!		2 3
;		3 4
public 
string 
Codigo 
{ 
get "
;" #
set$ '
;' (
}) *
=+ ,
null- 1
!1 2
;2 3
public 
bool 
Activo 
{ 
get  
;  !
set" %
;% &
}' (
public 
int 
TasaDeCambioID !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
UsuarioAgrega #
{$ %
get& )
;) *
set+ .
;. /
}0 1
=2 3
null4 8
!8 9
;9 :
public 
DateTime 
FechaAgrega #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
? 
UsuarioModifica &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTime 
? 
FechaModifica &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
virtual 
ICollection "
<" #
ContratoRenta# 0
>0 1
ContratosRenta2 @
{A B
getC F
;F G
setH K
;K L
}M N
=O P
newQ T
ListU Y
<Y Z
ContratoRentaZ g
>g h
(h i
)i j
;j k
public 
virtual 
ICollection "
<" #
	Documento# ,
>, -

Documentos. 8
{9 :
get; >
;> ?
set@ C
;C D
}E F
=G H
newI L
ListM Q
<Q R
	DocumentoR [
>[ \
(\ ]
)] ^
;^ _
public 
virtual 
ICollection "
<" #
	PagoRenta# ,
>, -

PagosRenta. 8
{9 :
get; >
;> ?
set@ C
;C D
}E F
=G H
newI L
ListM Q
<Q R
	PagoRentaR [
>[ \
(\ ]
)] ^
;^ _
public 
virtual 
ICollection "
<" #
	Proveedor# ,
>, -
Proveedores. 9
{: ;
get< ?
;? @
setA D
;D E
}F G
=H I
newJ M
ListN R
<R S
	ProveedorS \
>\ ]
(] ^
)^ _
;_ `
public!! 
virtual!! 
TasaDeCambio!! #
?!!# $
TasaDeCambio!!% 1
{!!2 3
get!!4 7
;!!7 8
set!!9 <
;!!< =
}!!> ?
}$$ 
}%% ç
ÄC:\Users\cjpineda\Desktop\Ejercicios c#\ProyectoAcademia\Academia.WebRentas.WebApi\Infrastructure\BDRentas\Entities\PagoRenta.cs
	namespace 	
Academia
 
. 
	WebRentas 
. 
WebApi #
.# $
Infrastructure$ 2
.2 3
BDRentas3 ;
.; <
Entities< D
{ 
public 

class 
	PagoRenta 
{ 
public 
int 
PagoID 
{ 
get 
;  
set! $
;$ %
}& '
public 
int 

ContratoID 
{ 
get  #
;# $
set% (
;( )
}* +
public		 
DateOnly		 
PeriodoDesde		 $
{		% &
get		' *
;		* +
set		, /
;		/ 0
}		1 2
public 
DateOnly 
PeriodoHasta $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
decimal 
Monto 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 
MonedaID 
{ 
get !
;! "
set# &
;& '
}( )
public 
bool 

IncluyeISV 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
int 

ServicioID 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
EstadoDePago "
{# $
get% (
;( )
set* -
;- .
}/ 0
=1 2
null3 7
!7 8
;8 9
public 
string 
? 
Observaciones $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
string 
UsuarioAgrega #
{$ %
get& )
;) *
set+ .
;. /
}0 1
=2 3
null4 8
!8 9
;9 :
public 
DateTime 
FechaAgrega #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
? 
UsuarioModifica &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTime 
? 
FechaModifica &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public!! 
virtual!! 
ContratoRenta!! $
Contrato!!% -
{!!. /
get!!0 3
;!!3 4
set!!5 8
;!!8 9
}!!: ;
=!!< =
null!!> B
!!!B C
;!!C D
public## 
virtual## 
Moneda## 
Moneda## $
{##% &
get##' *
;##* +
set##, /
;##/ 0
}##1 2
=##3 4
null##5 9
!##9 :
;##: ;
public%% 
virtual%% 
Servicio%% 
Servicio%%  (
{%%) *
get%%+ .
;%%. /
set%%0 3
;%%3 4
}%%5 6
=%%7 8
null%%9 =
!%%= >
;%%> ?
}&& 
}(( Í#
ÄC:\Users\cjpineda\Desktop\Ejercicios c#\ProyectoAcademia\Academia.WebRentas.WebApi\Infrastructure\BDRentas\Entities\Proveedor.cs
	namespace 	
Academia
 
. 
	WebRentas 
. 
WebApi #
.# $
Infrastructure$ 2
.2 3
BDRentas3 ;
.; <
Entities< D
{ 
public 

class 
	Proveedor 
{ 
public 
int 
ProveedorID 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
NombreDeProveedor '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
=6 7
null8 <
!< =
;= >
public		 
string		 
RTN		 
{		 
get		 
;		  
set		! $
;		$ %
}		& '
=		( )
null		* .
!		. /
;		/ 0
public 
string 
	Direccion 
{  !
get" %
;% &
set' *
;* +
}, -
=. /
null0 4
!4 5
;5 6
public 
string 
Telefono 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
null/ 3
!3 4
;4 5
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
=* +
null, 0
!0 1
;1 2
public 
bool 
Activo 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
UsuarioAgrega #
{$ %
get& )
;) *
set+ .
;. /
}0 1
=2 3
null4 8
!8 9
;9 :
public 
DateTime 
FechaAgrega #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
? 
UsuarioModifica &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTime 
? 
FechaModifica &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
string 
TipoProveedor #
{$ %
get& )
;) *
set+ .
;. /
}0 1
=2 3
null4 8
!8 9
;9 :
public 
string 
? 
CondicionesPago &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
int 
MonedaID 
{ 
get !
;! "
set# &
;& '
}( )
public!! 
virtual!! 
ICollection!! "
<!!" #
ContratoRenta!!# 0
>!!0 1
ContratosRenta!!2 @
{!!A B
get!!C F
;!!F G
set!!H K
;!!K L
}!!M N
=!!O P
new!!Q T
List!!U Y
<!!Y Z
ContratoRenta!!Z g
>!!g h
(!!h i
)!!i j
;!!j k
public## 
virtual## 
ICollection## "
<##" #
	Documento### ,
>##, -

Documentos##. 8
{##9 :
get##; >
;##> ?
set##@ C
;##C D
}##E F
=##G H
new##I L
List##M Q
<##Q R
	Documento##R [
>##[ \
(##\ ]
)##] ^
;##^ _
public%% 
virtual%% 
Moneda%% 
Moneda%% $
{%%% &
get%%' *
;%%* +
set%%, /
;%%/ 0
}%%1 2
=%%3 4
null%%5 9
!%%9 :
;%%: ;
public'' 
virtual'' 
ICollection'' "
<''" #
Sucursal''# +
>''+ ,

Sucursales''- 7
{''8 9
get'': =
;''= >
set''? B
;''B C
}''D E
=''F G
new''H K
List''L P
<''P Q
Sucursal''Q Y
>''Y Z
(''Z [
)''[ \
;''\ ]
}(( 
}** «
C:\Users\cjpineda\Desktop\Ejercicios c#\ProyectoAcademia\Academia.WebRentas.WebApi\Infrastructure\BDRentas\Entities\Servicio.cs
	namespace 	
Academia
 
. 
	WebRentas 
. 
WebApi #
.# $
Infrastructure$ 2
.2 3
BDRentas3 ;
.; <
Entities< D
{ 
public 

class 
Servicio 
{ 
public 
int 

ServicioID 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
NombreServicio $
{% &
get' *
;* +
set, /
;/ 0
}1 2
=3 4
null5 9
!9 :
;: ;
public		 
string		 
CuentaContable		 $
{		% &
get		' *
;		* +
set		, /
;		/ 0
}		1 2
=		3 4
null		5 9
!		9 :
;		: ;
public 
string 
TipoServicio "
{# $
get% (
;( )
set* -
;- .
}/ 0
=1 2
null3 7
!7 8
;8 9
public 
string 
? 
Descripcion "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
bool 
Activo 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
UsuarioAgrega #
{$ %
get& )
;) *
set+ .
;. /
}0 1
=2 3
null4 8
!8 9
;9 :
public 
DateTime 
FechaAgrega #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
? 
UsuarioModifica &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTime 
? 
FechaModifica &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
virtual 
ICollection "
<" #
	PagoRenta# ,
>, -

PagosRenta. 8
{9 :
get; >
;> ?
set@ C
;C D
}E F
=G H
newI L
ListM Q
<Q R
	PagoRentaR [
>[ \
(\ ]
)] ^
;^ _
} 
} ÷
C:\Users\cjpineda\Desktop\Ejercicios c#\ProyectoAcademia\Academia.WebRentas.WebApi\Infrastructure\BDRentas\Entities\Sucursal.cs
	namespace 	
Academia
 
. 
	WebRentas 
. 
WebApi #
.# $
Infrastructure$ 2
.2 3
BDRentas3 ;
.; <
Entities< D
{ 
public 

class 
Sucursal 
{ 
public 
int 

SucursalID 
{ 
get  #
;# $
set% (
;( )
}* +
public		 
string		 
NombreSucursal		 $
{		% &
get		' *
;		* +
set		, /
;		/ 0
}		1 2
=		3 4
null		5 9
!		9 :
;		: ;
public 
string 
	Direccion 
{  !
get" %
;% &
set' *
;* +
}, -
=. /
null0 4
!4 5
;5 6
public 
int 
ProveedorID 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
int 

ContratoID 
{ 
get  #
;# $
set% (
;( )
}* +
public 
bool 
Activo 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
UsuarioAgrega #
{$ %
get& )
;) *
set+ .
;. /
}0 1
=2 3
null4 8
!8 9
;9 :
public 
DateTime 
FechaAgrega #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
? 
UsuarioModifica &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTime 
? 
FechaModifica &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
virtual 
ContratoRenta $
Contrato% -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
=< =
null> B
!B C
;C D
public 
virtual 
	Proveedor  
	Proveedor! *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
=9 :
null; ?
!? @
;@ A
}   
}!! Ÿ
ÉC:\Users\cjpineda\Desktop\Ejercicios c#\ProyectoAcademia\Academia.WebRentas.WebApi\Infrastructure\BDRentas\Entities\TasaDeCambio.cs
	namespace 	
Academia
 
. 
	WebRentas 
. 
WebApi #
.# $
Infrastructure$ 2
.2 3
BDRentas3 ;
.; <
Entities< D
{ 
public 

class 
TasaDeCambio 
{ 
public 
int 
TasaID 
{ 
get 
;  
set! $
;$ %
}& '
public 
int 
Mes 
{ 
get 
; 
set !
;! "
}# $
public		 
int		 
Anio		 
{		 
get		 
;		 
set		 "
;		" #
}		$ %
public 
decimal 

TasaCompra !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
decimal 
	TasaVenta  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
bool 
Activo 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
UsuarioAgrega #
{$ %
get& )
;) *
set+ .
;. /
}0 1
=2 3
null4 8
!8 9
;9 :
public 
DateTime 
FechaAgrega #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
? 
UsuarioModifica &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DateTime 
? 
FechaModifica &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
virtual 
ICollection "
<" #
Moneda# )
>) *
Moneda+ 1
{2 3
get4 7
;7 8
set9 <
;< =
}> ?
=@ A
newB E
ListF J
<J K
MonedaK Q
>Q R
(R S
)S T
;T U
} 
} ñ
ÑC:\Users\cjpineda\Desktop\Ejercicios c#\ProyectoAcademia\Academia.WebRentas.WebApi\Infrastructure\BDRentas\Entities\TipoDocumento.cs
	namespace 	
Academia
 
. 
	WebRentas 
. 
WebApi #
.# $
Infrastructure$ 2
.2 3
BDRentas3 ;
.; <
Entities< D
{ 
public 

class 
TipoDocumento 
{ 
public 
int 
TipoDocumentoID "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
NombreDocumento %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
=4 5
null6 :
!: ;
;; <
public		 
string		 
?		 
Descripcion		 "
{		# $
get		% (
;		( )
set		* -
;		- .
}		/ 0
public 
bool 
Activo 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
AgenteAgrega "
{# $
get% (
;( )
set* -
;- .
}/ 0
=1 2
null3 7
!7 8
;8 9
public 
DateTime 
FechaAgrega #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
? 
AgenteModifica %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
DateTime 
? 
FechaModifica &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
virtual 
ICollection "
<" #
	Documento# ,
>, -

Documentos. 8
{9 :
get; >
;> ?
set@ C
;C D
}E F
=G H
newI L
ListM Q
<Q R
	DocumentoR [
>[ \
(\ ]
)] ^
;^ _
} 
} Å
ÅC:\Users\cjpineda\Desktop\Ejercicios c#\ProyectoAcademia\Academia.WebRentas.WebApi\Infrastructure\BDRentas\Maps\ColaboradorMap.cs
	namespace 	
Academia
 
. 
	WebRentas 
. 
WebApi #
.# $
Infrastructure$ 2
.2 3
BDRentas3 ;
.; <
Maps< @
{ 
[ #
ExcludeFromCodeCoverage 
] 
public		 

class		 
ColaboradorMap		 
:		  !$
IEntityTypeConfiguration		" :
<		: ;
Colaborador		; F
>		F G
{

 
public 
void 
	Configure 
( 
EntityTypeBuilder /
</ 0
Colaborador0 ;
>; <
builder= D
)D E
{ 	
builder 
. 
ToTable 
( 
$str +
)+ ,
;, -
builder 
. 
HasKey 
( 
x 
=> 
x  !
.! "
ColaboradorID" /
)/ 0
;0 1
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
ColaboradorID$ 1
)1 2
.2 3
HasColumnName3 @
(@ A
$strA P
)P Q
;Q R
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
NombreCompleto$ 2
)2 3
.3 4
HasColumnName4 A
(A B
$strB R
)R S
;S T
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
Correo$ *
)* +
.+ ,
HasColumnName, 9
(9 :
$str: B
)B C
;C D
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
Telefono$ ,
), -
.- .
HasColumnName. ;
(; <
$str< F
)F G
;G H
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
Activo$ *
)* +
.+ ,
HasColumnName, 9
(9 :
$str: B
)B C
;C D
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
FechaCreacion$ 1
)1 2
.2 3
HasColumnName3 @
(@ A
$strA P
)P Q
;Q R
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
UsuarioAgrega$ 1
)1 2
.2 3
HasColumnName3 @
(@ A
$strA P
)P Q
;Q R
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
FechaModificacion$ 5
)5 6
.6 7
HasColumnName7 D
(D E
$strE X
)X Y
;Y Z
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
UsuarioModifica$ 3
)3 4
.4 5
HasColumnName5 B
(B C
$strC T
)T U
;U V
} 	
} 
} Ó1
ÉC:\Users\cjpineda\Desktop\Ejercicios c#\ProyectoAcademia\Academia.WebRentas.WebApi\Infrastructure\BDRentas\Maps\ContratoRentaMap.cs
	namespace 	
Academia
 
. 
	WebRentas 
. 
WebApi #
.# $
Infrastructure$ 2
.2 3
BDRentas3 ;
.; <
Maps< @
{ 
[ #
ExcludeFromCodeCoverage 
] 
public		 

class		 
ContratoRentaMap		 !
:		" #$
IEntityTypeConfiguration		$ <
<		< =
ContratoRenta		= J
>		J K
{

 
public 
void 
	Configure 
( 
EntityTypeBuilder /
</ 0
ContratoRenta0 =
>= >
builder? F
)F G
{ 	
builder 
. 
ToTable 
( 
$str ,
), -
;- .
builder 
. 
HasKey 
( 
x 
=> 
x  !
.! "

ContratoID" ,
), -
;- .
builder 
. 
Property 
( 
x 
=> !
x" #
.# $

ContratoID$ .
). /
./ 0
HasColumnName0 =
(= >
$str> J
)J K
;K L
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
ProveedorID$ /
)/ 0
.0 1
HasColumnName1 >
(> ?
$str? L
)L M
;M N
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
NumeroContrato$ 2
)2 3
.3 4
HasColumnName4 A
(A B
$strB R
)R S
;S T
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
MonedaID$ ,
), -
.- .
HasColumnName. ;
(; <
$str< F
)F G
;G H
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
MontoContrato$ 1
)1 2
.2 3
HasColumnName3 @
(@ A
$strA P
)P Q
;Q R
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
MontoMensual$ 0
)0 1
.1 2
HasColumnName2 ?
(? @
$str@ N
)N O
;O P
builder 
. 
Property 
( 
x 
=> !
x" #
.# $

MontoTotal$ .
). /
./ 0
HasColumnName0 =
(= >
$str> J
)J K
;K L
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
FechaInicio$ /
)/ 0
.0 1
HasColumnName1 >
(> ?
$str? L
)L M
;M N
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
FechaFin$ ,
), -
.- .
HasColumnName. ;
(; <
$str< F
)F G
;G H
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
Activo$ *
)* +
.+ ,
HasColumnName, 9
(9 :
$str: B
)B C
;C D
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
UsuarioAgrega$ 1
)1 2
.2 3
HasColumnName3 @
(@ A
$strA P
)P Q
;Q R
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
FechaAgrega$ /
)/ 0
.0 1
HasColumnName1 >
(> ?
$str? L
)L M
;M N
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
UsuarioModifica$ 3
)3 4
.4 5
HasColumnName5 B
(B C
$strC T
)T U
;U V
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
FechaModifica$ 1
)1 2
.2 3
HasColumnName3 @
(@ A
$strA P
)P Q
;Q R
builder 
. 
HasOne 
( 
x 
=> 
x  !
.! "
Moneda" (
)( )
.) *
WithMany* 2
(2 3
m3 4
=>5 7
m8 9
.9 :
ContratosRenta: H
)H I
.I J
HasForeignKeyJ W
(W X
xX Y
=>Z \
x] ^
.^ _
MonedaID_ g
)g h
.h i
OnDeletei q
(q r
DeleteBehavior	r Ä
.
Ä Å
Restrict
Å â
)
â ä
;
ä ã
builder 
. 
HasOne 
( 
x 
=> 
x  !
.! "
	Proveedor" +
)+ ,
., -
WithMany- 5
(5 6
m6 7
=>8 :
m; <
.< =
ContratosRenta= K
)K L
.L M
HasForeignKeyM Z
(Z [
x[ \
=>] _
x` a
.a b
ProveedorIDb m
)m n
.n o
OnDeleteo w
(w x
DeleteBehavior	x Ü
.
Ü á
Restrict
á è
)
è ê
;
ê ë
}   	
}!! 
}"" Ÿ
C:\Users\cjpineda\Desktop\Ejercicios c#\ProyectoAcademia\Academia.WebRentas.WebApi\Infrastructure\BDRentas\Maps\DocumentoMap.cs
	namespace 	
Academia
 
. 
	WebRentas 
. 
WebApi #
.# $
Infrastructure$ 2
.2 3
BDRentas3 ;
.; <
Maps< @
{ 
[ #
ExcludeFromCodeCoverage 
] 
public		 

class		 
DocumentoMap		 
:		 $
IEntityTypeConfiguration		  8
<		8 9
	Documento		9 B
>		B C
{

 
public 
void 
	Configure 
( 
EntityTypeBuilder /
</ 0
	Documento0 9
>9 :
builder; B
)B C
{ 	
builder 
. 
ToTable 
( 
$str (
)( )
;) *
builder 
. 
HasKey 
( 
x 
=> 
x  !
.! "
DocumentoID" -
)- .
;. /
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
ProveedorID$ /
)/ 0
.0 1
HasColumnName1 >
(> ?
$str? L
)L M
;M N
builder 
. 
Property 
( 
x 
=> !
x" #
.# $

ContratoID$ .
). /
./ 0
HasColumnName0 =
(= >
$str> J
)J K
;K L
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
TipoDocumentoID$ 3
)3 4
.4 5
HasColumnName5 B
(B C
$strC T
)T U
;U V
builder 
. 
Property 
( 
x 
=> !
x" #
.# $

IncluyeISV$ .
). /
./ 0
HasColumnName0 =
(= >
$str> J
)J K
;K L
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
MonedaID$ ,
), -
.- .
HasColumnName. ;
(; <
$str< F
)F G
;G H
builder 
. 
Property 
( 
x 
=> !
x" #
.# $

MontoTotal$ .
). /
./ 0
HasColumnName0 =
(= >
$str> J
)J K
;K L
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
UsuarioAgrega$ 1
)1 2
.2 3
HasColumnName3 @
(@ A
$strA P
)P Q
;Q R
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
FechaAgrega$ /
)/ 0
.0 1
HasColumnName1 >
(> ?
$str? L
)L M
;M N
} 	
} 
} ÷
áC:\Users\cjpineda\Desktop\Ejercicios c#\ProyectoAcademia\Academia.WebRentas.WebApi\Infrastructure\BDRentas\Maps\LogSincronizacionMap.cs
	namespace 	
Academia
 
. 
	WebRentas 
. 
WebApi #
.# $
Infrastructure$ 2
.2 3
BDRentas3 ;
.; <
Maps< @
{ 
[ #
ExcludeFromCodeCoverage 
] 
public		 

class		  
LogSincronizacionMap		 %
:		& '$
IEntityTypeConfiguration		( @
<		@ A
LogSincronizacion		A R
>		R S
{

 
public 
void 
	Configure 
( 
EntityTypeBuilder /
</ 0
LogSincronizacion0 A
>A B
builderC J
)J K
{ 	
builder 
. 
ToTable 
( 
$str /
)/ 0
;0 1
builder 
. 
HasKey 
( 
x 
=> 
x  !
.! "
LogID" '
)' (
;( )
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
LogID$ )
)) *
.* +
HasColumnName+ 8
(8 9
$str9 @
)@ A
;A B
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
DocumentoID$ /
)/ 0
.0 1
HasColumnName1 >
(> ?
$str? L
)L M
;M N
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
FechaIntento$ 0
)0 1
.1 2
HasColumnName2 ?
(? @
$str@ N
)N O
;O P
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
Estado$ *
)* +
.+ ,
HasColumnName, 9
(9 :
$str: B
)B C
;C D
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
MensajeError$ 0
)0 1
.1 2
HasColumnName2 ?
(? @
$str@ N
)N O
;O P
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
UsuarioAgrega$ 1
)1 2
.2 3
HasColumnName3 @
(@ A
$strA P
)P Q
;Q R
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
FechaAgrega$ /
)/ 0
.0 1
HasColumnName1 >
(> ?
$str? N
)N O
;O P
} 	
} 
} Ò#
|C:\Users\cjpineda\Desktop\Ejercicios c#\ProyectoAcademia\Academia.WebRentas.WebApi\Infrastructure\BDRentas\Maps\MonedaMap.cs
	namespace 	
Academia
 
. 
	WebRentas 
. 
WebApi #
.# $
Infrastructure$ 2
.2 3
BDRentas3 ;
.; <
Maps< @
{ 
[ #
ExcludeFromCodeCoverage 
] 
public		 

class		 
	MonedaMap		 
:		 $
IEntityTypeConfiguration		 5
<		5 6
Moneda		6 <
>		< =
{

 
public 
void 
	Configure 
( 
EntityTypeBuilder /
</ 0
Moneda0 6
>6 7
builder8 ?
)? @
{ 	
builder 
. 
ToTable 
( 
$str %
)% &
;& '
builder 
. 
HasKey 
( 
x 
=> 
x  !
.! "
MonedaID" *
)* +
;+ ,
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
MonedaID$ ,
), -
.- .
HasColumnName. ;
(; <
$str< F
)F G
;G H
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
NombreMoneda$ 0
)0 1
.1 2
HasColumnName2 ?
(? @
$str@ N
)N O
;O P
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
Simbolo$ +
)+ ,
., -
HasColumnName- :
(: ;
$str; D
)D E
;E F
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
Codigo$ *
)* +
.+ ,
HasColumnName, 9
(9 :
$str: B
)B C
;C D
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
Activo$ *
)* +
.+ ,
HasColumnName, 9
(9 :
$str: B
)B C
;C D
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
TasaDeCambioID$ 2
)2 3
.3 4
HasColumnName4 A
(A B
$strB R
)R S
;S T
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
UsuarioAgrega$ 1
)1 2
.2 3
HasColumnName3 @
(@ A
$strA P
)P Q
;Q R
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
FechaAgrega$ /
)/ 0
.0 1
HasColumnName1 >
(> ?
$str? L
)L M
;M N
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
UsuarioModifica$ 3
)3 4
.4 5
HasColumnName5 B
(B C
$strC T
)T U
;U V
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
FechaModifica$ 1
)1 2
.2 3
HasColumnName3 @
(@ A
$strA P
)P Q
;Q R
builder 
. 
HasOne 
( 
x 
=> 
x  !
.! "
TasaDeCambio" .
). /
./ 0
WithMany0 8
(8 9
x9 :
=>; =
x> ?
.? @
Moneda@ F
)F G
.G H
HasForeignKeyH U
(U V
xV W
=>X Z
x[ \
.\ ]
TasaDeCambioID] k
)k l
.l m
OnDeletem u
(u v
DeleteBehavior	v Ñ
.
Ñ Ö
Restrict
Ö ç
)
ç é
;
é è
} 	
} 
} »%
C:\Users\cjpineda\Desktop\Ejercicios c#\ProyectoAcademia\Academia.WebRentas.WebApi\Infrastructure\BDRentas\Maps\PagoRentaMap.cs
	namespace 	
Academia
 
. 
	WebRentas 
. 
WebApi #
.# $
Infrastructure$ 2
.2 3
BDRentas3 ;
.; <
Maps< @
{ 
[ #
ExcludeFromCodeCoverage 
] 
public		 

class		 
PagoRentaMap		 
:		 $
IEntityTypeConfiguration		  8
<		8 9
	PagoRenta		9 B
>		B C
{

 
public 
void 
	Configure 
( 
EntityTypeBuilder /
</ 0
	PagoRenta0 9
>9 :
builder; B
)B C
{ 	
builder 
. 
ToTable 
( 
$str (
)( )
;) *
builder 
. 
HasKey 
( 
x 
=> 
x  !
.! "
PagoID" (
)( )
;) *
builder 
. 
Property 
( 
x 
=> !
x" #
.# $

ContratoID$ .
). /
./ 0
HasColumnName0 =
(= >
$str> J
)J K
;K L
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
PeriodoDesde$ 0
)0 1
.1 2
HasColumnName2 ?
(? @
$str@ N
)N O
;O P
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
PeriodoHasta$ 0
)0 1
.1 2
HasColumnName2 ?
(? @
$str@ N
)N O
;O P
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
Monto$ )
)) *
.* +
HasColumnName+ 8
(8 9
$str9 @
)@ A
;A B
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
MonedaID$ ,
), -
.- .
HasColumnName. ;
(; <
$str< F
)F G
;G H
builder 
. 
Property 
( 
x 
=> !
x" #
.# $

IncluyeISV$ .
). /
./ 0
HasColumnName0 =
(= >
$str> J
)J K
;K L
builder 
. 
Property 
( 
x 
=> !
x" #
.# $

ServicioID$ .
). /
./ 0
HasColumnName0 =
(= >
$str> J
)J K
;K L
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
EstadoDePago$ 0
)0 1
.1 2
HasColumnName2 ?
(? @
$str@ N
)N O
;O P
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
Observaciones$ 1
)1 2
.2 3
HasColumnName3 @
(@ A
$strA P
)P Q
;Q R
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
UsuarioAgrega$ 1
)1 2
.2 3
HasColumnName3 @
(@ A
$strA P
)P Q
;Q R
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
FechaAgrega$ /
)/ 0
.0 1
HasColumnName1 >
(> ?
$str? L
)L M
;M N
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
UsuarioModifica$ 3
)3 4
.4 5
HasColumnName5 B
(B C
$strC T
)T U
;U V
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
FechaModifica$ 1
)1 2
.2 3
HasColumnName3 @
(@ A
$strA P
)P Q
;Q R
} 	
} 
} ≥#
C:\Users\cjpineda\Desktop\Ejercicios c#\ProyectoAcademia\Academia.WebRentas.WebApi\Infrastructure\BDRentas\Maps\ProveedorMap.cs
	namespace 	
Academia
 
. 
	WebRentas 
. 
WebApi #
.# $
Infrastructure$ 2
.2 3
BDRentas3 ;
.; <
Maps< @
{ 
[ #
ExcludeFromCodeCoverage 
] 
public		 

class		 
ProveedorMap		 
:		 $
IEntityTypeConfiguration		  8
<		8 9
	Proveedor		9 B
>		B C
{

 
public 
void 
	Configure 
( 
EntityTypeBuilder /
</ 0
	Proveedor0 9
>9 :
builder; B
)B C
{ 	
builder 
. 
ToTable 
( 
$str )
)) *
;* +
builder 
. 
HasKey 
( 
x 
=> 
x  !
.! "
ProveedorID" -
)- .
;. /
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
NombreDeProveedor$ 5
)5 6
.6 7
HasColumnName7 D
(D E
$strE X
)X Y
;Y Z
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
RTN$ '
)' (
.( )
HasColumnName) 6
(6 7
$str7 <
)< =
;= >
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
	Direccion$ -
)- .
.. /
HasColumnName/ <
(< =
$str= H
)H I
;I J
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
Telefono$ ,
), -
.- .
HasColumnName. ;
(; <
$str< F
)F G
;G H
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
Email$ )
)) *
.* +
HasColumnName+ 8
(8 9
$str9 @
)@ A
;A B
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
UsuarioAgrega$ 1
)1 2
.2 3
HasColumnName3 @
(@ A
$strA P
)P Q
;Q R
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
FechaAgrega$ /
)/ 0
.0 1
HasColumnName1 >
(> ?
$str? L
)L M
;M N
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
UsuarioModifica$ 3
)3 4
.4 5
HasColumnName5 B
(B C
$strC T
)T U
;U V
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
FechaModifica$ 1
)1 2
.2 3
HasColumnName3 @
(@ A
$strA P
)P Q
;Q R
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
TipoProveedor$ 1
)1 2
.2 3
HasColumnName3 @
(@ A
$strA P
)P Q
;Q R
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
CondicionesPago$ 3
)3 4
.4 5
HasColumnName5 B
(B C
$strC T
)T U
;U V
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
MonedaID$ ,
), -
.- .
HasColumnName. ;
(; <
$str< F
)F G
;G H
} 	
} 
} ı
~C:\Users\cjpineda\Desktop\Ejercicios c#\ProyectoAcademia\Academia.WebRentas.WebApi\Infrastructure\BDRentas\Maps\ServicioMap.cs
	namespace 	
Academia
 
. 
	WebRentas 
. 
WebApi #
.# $
Infrastructure$ 2
.2 3
BDRentas3 ;
.; <
Maps< @
{ 
[ #
ExcludeFromCodeCoverage 
] 
public		 

class		 
ServicioMap		 
:		 $
IEntityTypeConfiguration		 7
<		7 8
Servicio		8 @
>		@ A
{

 
public 
void 
	Configure 
( 
EntityTypeBuilder /
</ 0
Servicio0 8
>8 9
builder: A
)A B
{ 	
builder 
. 
ToTable 
( 
$str '
)' (
;( )
builder 
. 
HasKey 
( 
x 
=> 
x  !
.! "

ServicioID" ,
), -
;- .
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
NombreServicio$ 2
)2 3
.3 4
HasColumnName4 A
(A B
$strB R
)R S
;S T
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
CuentaContable$ 2
)2 3
.3 4
HasColumnName4 A
(A B
$strB R
)R S
;S T
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
TipoServicio$ 0
)0 1
.1 2
HasColumnName2 ?
(? @
$str@ N
)N O
;O P
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
Descripcion$ /
)/ 0
.0 1
HasColumnName1 >
(> ?
$str? L
)L M
;M N
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
Activo$ *
)* +
.+ ,
HasColumnName, 9
(9 :
$str: B
)B C
;C D
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
UsuarioAgrega$ 1
)1 2
.2 3
HasColumnName3 @
(@ A
$strA P
)P Q
;Q R
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
FechaAgrega$ /
)/ 0
.0 1
HasColumnName1 >
(> ?
$str? L
)L M
;M N
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
UsuarioModifica$ 3
)3 4
.4 5
HasColumnName5 B
(B C
$strC T
)T U
;U V
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
FechaModifica$ 1
)1 2
.2 3
HasColumnName3 @
(@ A
$strA P
)P Q
;Q R
} 	
} 
} ‰&
~C:\Users\cjpineda\Desktop\Ejercicios c#\ProyectoAcademia\Academia.WebRentas.WebApi\Infrastructure\BDRentas\Maps\SucursalMap.cs
	namespace 	
Academia
 
. 
	WebRentas 
. 
WebApi #
.# $
Infrastructure$ 2
.2 3
BDRentas3 ;
.; <
Maps< @
{ 
[ #
ExcludeFromCodeCoverage 
] 
public		 

class		 
SucursalMap		 
:		 $
IEntityTypeConfiguration		 7
<		7 8
Sucursal		8 @
>		@ A
{

 
public 
void 
	Configure 
( 
EntityTypeBuilder /
</ 0
Sucursal0 8
>8 9
builder: A
)A B
{ 	
builder 
. 
ToTable 
( 
$str (
)( )
;) *
builder 
. 
HasKey 
( 
x 
=> 
x  !
.! "

SucursalID" ,
), -
;- .
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
NombreSucursal$ 2
)2 3
.3 4
HasColumnName4 A
(A B
$strB R
)R S
;S T
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
	Direccion$ -
)- .
.. /
HasColumnName/ <
(< =
$str= H
)H I
;I J
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
ProveedorID$ /
)/ 0
.0 1
HasColumnName1 >
(> ?
$str? L
)L M
;M N
builder 
. 
Property 
( 
x 
=> !
x" #
.# $

ContratoID$ .
). /
./ 0
HasColumnName0 =
(= >
$str> J
)J K
;K L
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
Activo$ *
)* +
.+ ,
HasColumnName, 9
(9 :
$str: B
)B C
;C D
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
UsuarioAgrega$ 1
)1 2
.2 3
HasColumnName3 @
(@ A
$strA P
)P Q
;Q R
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
FechaAgrega$ /
)/ 0
.0 1
HasColumnName1 >
(> ?
$str? L
)L M
;M N
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
UsuarioModifica$ 3
)3 4
.4 5
HasColumnName5 B
(B C
$strC T
)T U
;U V
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
FechaModifica$ 1
)1 2
.2 3
HasColumnName3 @
(@ A
$strA P
)P Q
;Q R
builder 
. 
HasOne 
( 
x 
=> 
x  !
.! "
	Proveedor" +
)+ ,
., -
WithMany- 5
(5 6
m6 7
=>8 :
m; <
.< =

Sucursales= G
)G H
.H I
HasForeignKeyI V
(V W
xW X
=>Y [
x\ ]
.] ^
ProveedorID^ i
)i j
.j k
OnDeletek s
(s t
DeleteBehavior	t Ç
.
Ç É
Restrict
É ã
)
ã å
;
å ç
builder 
. 
HasOne 
( 
x 
=> 
x  !
.! "
Contrato" *
)* +
.+ ,
WithMany, 4
(4 5
m5 6
=>7 9
m: ;
.; <

Sucursales< F
)F G
.G H
HasForeignKeyH U
(U V
xV W
=>X Z
x[ \
.\ ]

ContratoID] g
)g h
.h i
OnDeletei q
(q r
DeleteBehavior	r Ä
.
Ä Å
Restrict
Å â
)
â ä
;
ä ã
} 	
} 
} ˚
ÇC:\Users\cjpineda\Desktop\Ejercicios c#\ProyectoAcademia\Academia.WebRentas.WebApi\Infrastructure\BDRentas\Maps\TasaDeCambioMap.cs
	namespace 	
Academia
 
. 
	WebRentas 
. 
WebApi #
.# $
Infrastructure$ 2
.2 3
BDRentas3 ;
.; <
Maps< @
{ 
[ #
ExcludeFromCodeCoverage 
] 
public		 

class		 
TasaDeCambioMap		  
:		! "$
IEntityTypeConfiguration		# ;
<		; <
TasaDeCambio		< H
>		H I
{

 
public 
void 
	Configure 
( 
EntityTypeBuilder /
</ 0
TasaDeCambio0 <
>< =
builder> E
)E F
{ 	
builder 
. 
ToTable 
( 
$str +
)+ ,
;, -
builder 
. 
HasKey 
( 
x 
=> 
x  !
.! "
TasaID" (
)( )
;) *
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
TasaID$ *
)* +
.+ ,
HasColumnName, 9
(9 :
$str: B
)B C
;C D
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
Mes$ '
)' (
.( )
HasColumnName) 6
(6 7
$str7 <
)< =
;= >
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
Anio$ (
)( )
.) *
HasColumnName* 7
(7 8
$str8 >
)> ?
;? @
builder 
. 
Property 
( 
x 
=> !
x" #
.# $

TasaCompra$ .
). /
./ 0
HasColumnName0 =
(= >
$str> J
)J K
;K L
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
	TasaVenta$ -
)- .
.. /
HasColumnName/ <
(< =
$str= H
)H I
;I J
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
Activo$ *
)* +
.+ ,
HasColumnName, 9
(9 :
$str: B
)B C
;C D
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
UsuarioAgrega$ 1
)1 2
.2 3
HasColumnName3 @
(@ A
$strA P
)P Q
;Q R
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
FechaAgrega$ /
)/ 0
.0 1
HasColumnName1 >
(> ?
$str? L
)L M
;M N
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
UsuarioModifica$ 3
)3 4
.4 5
HasColumnName5 B
(B C
$strC T
)T U
;U V
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
FechaModifica$ 1
)1 2
.2 3
HasColumnName3 @
(@ A
$strA P
)P Q
;Q R
} 	
} 
} ‹
ÉC:\Users\cjpineda\Desktop\Ejercicios c#\ProyectoAcademia\Academia.WebRentas.WebApi\Infrastructure\BDRentas\Maps\TipoDocumentoMap.cs
	namespace 	
Academia
 
. 
	WebRentas 
. 
WebApi #
.# $
Infrastructure$ 2
.2 3
BDRentas3 ;
.; <
Maps< @
{ 
[ #
ExcludeFromCodeCoverage 
] 
public		 

class		 
TipoDocumentoMap		 !
:		" #$
IEntityTypeConfiguration		$ <
<		< =
TipoDocumento		= J
>		J K
{

 
public 
void 
	Configure 
( 
EntityTypeBuilder /
</ 0
TipoDocumento0 =
>= >
builder? F
)F G
{ 	
builder 
. 
ToTable 
( 
$str -
)- .
;. /
builder 
. 
HasKey 
( 
x 
=> 
x  !
.! "
TipoDocumentoID" 1
)1 2
;2 3
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
NombreDocumento$ 3
)3 4
.4 5
HasColumnName5 B
(B C
$strC T
)T U
;U V
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
Descripcion$ /
)/ 0
.0 1
HasColumnName1 >
(> ?
$str? L
)L M
;M N
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
Activo$ *
)* +
.+ ,
HasColumnName, 9
(9 :
$str: B
)B C
;C D
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
AgenteAgrega$ 0
)0 1
.1 2
HasColumnName2 ?
(? @
$str@ N
)N O
;O P
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
FechaAgrega$ /
)/ 0
.0 1
HasColumnName1 >
(> ?
$str? L
)L M
;M N
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
AgenteModifica$ 2
)2 3
.3 4
HasColumnName4 A
(A B
$strB R
)R S
;S T
builder 
. 
Property 
( 
x 
=> !
x" #
.# $
FechaModifica$ 1
)1 2
.2 3
HasColumnName3 @
(@ A
$strA P
)P Q
;Q R
} 	
} 
} §
vC:\Users\cjpineda\Desktop\Ejercicios c#\ProyectoAcademia\Academia.WebRentas.WebApi\Infrastructure\UnitOfWorkBuilder.cs
	namespace 	
Academia
 
. 
	WebRentas 
. 
WebApi #
.# $
Infrastructure$ 2
{ 
[		 #
ExcludeFromCodeCoverage		 
]		 
public

 

class

 
UnitOfWorkBuilder

 "
{ 
readonly 
IServiceProvider !
_serviceProvider" 2
;2 3
public 
UnitOfWorkBuilder  
(  !
IServiceProvider! 1
serviceProvider2 A
)A B
{ 	
_serviceProvider 
= 
serviceProvider .
;. /
} 	
public 
IUnitOfWork 
BuilderRentas (
(( )
)) *
{ 	
	DbContext 
	dbContext 
=  !
_serviceProvider" 2
.2 3

GetService3 =
<= >
BDRentasContext> M
>M N
(N O
)O P
??Q S
throwT Y
newZ ]%
InvalidOperationException^ w
(w x
)x y
;y z
return 
new 

UnitOfWork !
(! "
	dbContext" +
)+ ,
;, -
} 	
} 
} ë-
]C:\Users\cjpineda\Desktop\Ejercicios c#\ProyectoAcademia\Academia.WebRentas.WebApi\Program.cs
var 
builder 
= 
WebApplication 
. 
CreateBuilder *
(* +
args+ /
)/ 0
;0 1
builder 
. 
Services 
. 
AddCors 
( 
options  
=>! #
{ 
options 
. 
	AddPolicy 
( 
$str +
,+ ,
corsBuilder 
=> 
{ 	
corsBuilder 
. 
SetIsOriginAllowed 
(  
_  !
=>" $
true% )
)) *
. 
AllowAnyHeader 
( 
) 
. 
AllowAnyMethod 
( 
) 
.   
AllowCredentials   
(   
)   
;    
}!! 	
)!!	 

;!!
 
}## 
)## 
;## 
builder%% 
.%% 
Services%% 
.%% 
AddControllers%% 
(%%  
)%%  !
;%%! "
builder'' 
.'' 
Services'' 
.'' 
AddSwaggerGen'' 
('' 
)''  
;''  !
builder(( 
.(( 
Services(( 
.(( 
AddAutoMapper(( 
((( 
typeof(( %
(((% &
AutomapperProfiles((& 8
)((8 9
)((9 :
;((: ;
string22 
cnx22 

=22 
builder22 
.22 
Configuration22 "
.22" #&
GetConnectionStringFromENV22# =
(22= >
$str22> H
)22H I
;22I J
builder33 
.33 
Services33 
.33 
AddDbContext33 
<33 
BDRentasContext33 -
>33- .
(33. /
options33/ 6
=>337 9
options33: A
.33A B
UseMySql33B J
(33J K
cnx33K N
,33N O
ServerVersion33P ]
.33] ^

AutoDetect33^ h
(33h i
cnx33i l
)33l m
)33m n
)33n o
;33o p
builder66 
.66 
Services66 
.66 
AddTransient66 
<66 
UnitOfWorkBuilder66 /
,66/ 0
UnitOfWorkBuilder661 B
>66B C
(66C D
)66D E
;66E F
builder77 
.77 
Services77 
.77 
AddTransient77 
<77 
CommonService77 +
>77+ ,
(77, -
)77- .
;77. /
builder88 
.88 
Services88 
.88 
AddTransient88 
<88 
PagoRentaService88 .
>88. /
(88/ 0
)880 1
;881 2
builder99 
.99 
Services99 
.99 
AddTransient99 
<99 
ProveedorService99 .
>99. /
(99/ 0
)990 1
;991 2
builder:: 
.:: 
Services:: 
.:: 
AddTransient:: 
<::  
ContratoRentaService:: 2
>::2 3
(::3 4
)::4 5
;::5 6
builder;; 
.;; 
Services;; 
.;; 
AddTransient;; 
<;; 
ServicioService;; -
>;;- .
(;;. /
);;/ 0
;;;0 1
builder<< 
.<< 
Services<< 
.<< 
AddTransient<< 
<<< 
SucursalService<< -
><<- .
(<<. /
)<</ 0
;<<0 1
builder== 
.== 
Services== 
.== 
AddTransient== 
<== 
IContratoRenta== ,
,==, - 
ContratoRentaService==. B
>==B C
(==C D
)==D E
;==E F
builder>> 
.>> 
Services>> 
.>> 
AddTransient>> 
<>> 
	ISucursal>> '
,>>' (
SucursalService>>) 8
>>>8 9
(>>9 :
)>>: ;
;>>; <
builder?? 
.?? 
Services?? 
.?? 
AddTransient?? 
<?? 
ContratoRentaDomain?? 1
>??1 2
(??2 3
)??3 4
;??4 5
builder@@ 
.@@ 
Services@@ 
.@@ 
AddTransient@@ 
<@@ 
SucursalDomain@@ ,
>@@, -
(@@- .
)@@. /
;@@/ 0
varCC 
appCC 
=CC 	
builderCC
 
.CC 
BuildCC 
(CC 
)CC 
;CC 
appEE 
.EE 

UseSwaggerEE 
(EE 
)EE 
;EE 
ifFF 
(FF 
appFF 
.FF 
EnvironmentFF 
.FF 
IsDevelopmentFF !
(FF! "
)FF" #
)FF# $
{GG 
appII 
.II 
UseSwaggerUIII 
(II 
)II 
;II 
}LL 
appPP 
.PP 
UseCorsPP 
(PP 
$strPP !
)PP! "
;PP" #
appRR 
.RR 
UseAuthorizationRR 
(RR 
)RR 
;RR 
appTT 
.TT 
MapControllersTT 
(TT 
)TT 
;TT 
appVV 
.VV 
RunVV 
(VV 
)VV 	
;VV	 

[XX #
ExcludeFromCodeCoverageXX 
]XX 
publicYY 
partialYY 
classYY 
ProgramYY 
{YY 
}YY  ˆ+
pC:\Users\cjpineda\Desktop\Ejercicios c#\ProyectoAcademia\Academia.WebRentas.WebApi\_Common\AutomapperProfiles.cs
	namespace 	
Academia
 
. 
	WebRentas 
. 
WebApi #
.# $
_Common$ +
{ 
[		 #
ExcludeFromCodeCoverage		 
]		 
public

 

class

 
AutomapperProfiles

 #
:

$ %
Profile

& -
{ 
public 
AutomapperProfiles !
(! "
)" #
{ 	
	CreateMap 
< !
ActualizarContratoDto +
,+ ,
ContratoRenta- :
>: ;
(; <
)< =
. 
ForAllMembers 
( 
opts 
=>  "
opts# '
.' (
	Condition( 1
(1 2
(2 3
src3 6
,6 7
dest8 <
,< =
	srcMember> G
)G H
=>I K
	srcMemberL U
!=V X
nullY ]
)] ^
)^ _
;_ `
	CreateMap 
< 
ContratoRenta #
,# $
ObtenerContratoDto% 7
>7 8
(8 9
)9 :
.: ;
	ForMember; D
(D E

entidadDtoE O
=>P R

entidadDtoS ]
.] ^
NombreDeProveedor^ o
,o p
entidadq x
=>y {
entidad	| É
.
É Ñ
MapFrom
Ñ ã
(
ã å
x
å ç
=>
é ê
x
ë í
.
í ì
	Proveedor
ì ú
.
ú ù
NombreDeProveedor
ù Æ
)
Æ Ø
)
Ø ∞
. 
	ForMember 
( 

entidadDto %
=>& (

entidadDto) 3
.3 4
MoneadaNombre4 A
,A B
entidadC J
=>K M
entidadN U
.U V
MapFromV ]
(] ^
x^ _
=>` b
xc d
.d e
Monedae k
.k l
NombreMonedal x
)x y
)y z
.z {

ReverseMap	{ Ö
(
Ö Ü
)
Ü á
;
á à
	CreateMap 
< 
InsertarContratoDto )
,) *
ContratoRenta+ 8
>8 9
(9 :
): ;
. 
	ForMember 
( 
dest 
=> 
dest #
.# $
FechaAgrega$ /
,/ 0
opt1 4
=>5 7
opt8 ;
.; <
MapFrom< C
(C D
srcD G
=>H J
DateTimeK S
.S T
NowT W
)W X
)X Y
. 
	ForMember 
( 
dest 
=> 
dest #
.# $
Activo$ *
,* +
opt, /
=>0 2
opt3 6
.6 7
MapFrom7 >
(> ?
src? B
=>C E
trueF J
)J K
)K L
;L M
	CreateMap 
< !
ActualizarSucursalDto +
,+ ,
Sucursal- 5
>5 6
(6 7
)7 8
;8 9
	CreateMap 
< 
InsertarSucursalDto )
,) *
Sucursal+ 3
>3 4
(4 5
)5 6
. 
	ForMember 
( 
dest 
=>  "
dest# '
.' (
Activo( .
,. /
opt0 3
=>4 6
opt7 :
.: ;
MapFrom; B
(B C
srcC F
=>G I
trueJ N
)N O
)O P
. 
	ForMember 
( 
dest 
=>  "
dest# '
.' (
FechaAgrega( 3
,3 4
opt5 8
=>9 ;
opt< ?
.? @
MapFrom@ G
(G H
srcH K
=>L N
DateTimeO W
.W X
NowX [
)[ \
)\ ]
;] ^
	CreateMap 
< 
Sucursal 
, 
ObtenerSucursalDTO  2
>2 3
(3 4
)4 5
.
 
	ForMember 
( 
dest 
=> 
dest !
.! "
NombreProveedor" 1
,1 2
opt3 6
=>7 9
opt: =
.= >
MapFrom> E
(E F
xF G
=>H J
xK L
.L M
	ProveedorM V
!=W Y
nullZ ^
?_ `
xa b
.b c
	Proveedorc l
.l m
NombreDeProveedorm ~
:	 Ä
null
Å Ö
)
Ö Ü
)
Ü á
.
 
	ForMember 
( 
dest 
=> 
dest !
.! "
NumeroContrato" 0
,0 1
opt2 5
=>6 8
opt9 <
.< =
MapFrom= D
(D E
xE F
=>G I
xJ K
.K L
ContratoL T
!=U W
nullX \
?] ^
x_ `
.` a
Contratoa i
.i j
NumeroContratoj x
:y z
null{ 
)	 Ä
)
Ä Å
.
 

ReverseMap 
( 
) 
; 
} 	
} 
}   %
kC:\Users\cjpineda\Desktop\Ejercicios c#\ProyectoAcademia\Academia.WebRentas.WebApi\_Common\CommonService.cs
	namespace 	
Academia
 
. 
	WebRentas 
. 
WebApi #
.# $
_Common$ +
{ 
[		 #
ExcludeFromCodeCoverage		 
]		 
public

 

class

 
CommonService

 
{ 
private 
readonly 
BDRentasContext (
_bdRenta) 1
;1 2
public 
CommonService 
( 
BDRentasContext ,
bdRenta- 4
)4 5
{ 	
_bdRenta 
= 
bdRenta 
; 
} 	
public 
List 
< 
Moneda 
> 
ObtenerMonedas *
(* +
)+ ,
{ 	
try 
{ 
List 
< 
Moneda 
> 
monedas $
=% &
_bdRenta' /
./ 0
Monedas0 7
.7 8
AsQueryable8 C
(C D
)D E
.E F
AsNoTrackingF R
(R S
)S T
.T U
ToListU [
([ \
)\ ]
;] ^
return 
monedas 
; 
} 
catch 
( 
	Exception 
ex 
)  
{ 
throw 
new -
!FsDataTransferObjectNullException ;
(; <
$str< Y
+Z [
ex\ ^
.^ _
Message_ f
)f g
;g h
} 
} 	
public!! 
List!! 
<!! 
Colaborador!! 
>!!   
ObtenerColaboradores!!! 5
(!!5 6
)!!6 7
{"" 	
try## 
{$$ 
List%% 
<%% 
Colaborador%%  
>%%  !
colaboradores%%" /
=%%0 1
_bdRenta%%2 :
.%%: ;
Colaboradores%%; H
.%%H I
AsQueryable%%I T
(%%T U
)%%U V
.%%V W
AsNoTracking%%W c
(%%c d
)%%d e
.%%e f
ToList%%f l
(%%l m
)%%m n
;%%n o
return&& 
colaboradores&& $
;&&$ %
}'' 
catch(( 
((( 
	Exception(( 
ex(( 
)((  
{)) 
throw** 
new** -
!FsDataTransferObjectNullException** ;
(**; <
$str**< Y
+**Z [
ex**\ ^
.**^ _
Message**_ f
)**f g
;**g h
}++ 
},, 	
public-- 
List-- 
<-- 
TasaDeCambio--  
>--  ! 
ObtenerTasasDeCambio--" 6
(--6 7
)--7 8
{.. 	
try// 
{00 
List11 
<11 
TasaDeCambio11 !
>11! "
tasasDeCambio11# 0
=111 2
_bdRenta113 ;
.11; <
TasasDeCambio11< I
.11I J
AsQueryable11J U
(11U V
)11V W
.11W X
AsNoTracking11X d
(11d e
)11e f
.11f g
ToList11g m
(11m n
)11n o
;11o p
return22 
tasasDeCambio22 $
;22$ %
}33 
catch44 
(44 
	Exception44 
ex44 
)44  
{55 
throw66 
new66 -
!FsDataTransferObjectNullException66 ;
(66; <
$str66< Y
+66Z [
ex66\ ^
.66^ _
Message66_ f
)66f g
;66g h
}77 
}:: 	
public;; 
List;; 
<;; 
	Documento;; 
>;; 
ObtenerDocumento;; /
(;;/ 0
);;0 1
{<< 	
try== 
{>> 
List?? 
<?? 
	Documento?? 
>?? 

documentos??  *
=??+ ,
_bdRenta??- 5
.??5 6

Documentos??6 @
.??@ A
AsQueryable??A L
(??L M
)??M N
.??N O
AsNoTracking??O [
(??[ \
)??\ ]
.??] ^
ToList??^ d
(??d e
)??e f
;??f g
return@@ 

documentos@@ !
;@@! "
}AA 
catchBB 
(BB 
	ExceptionBB 
exBB 
)BB  
{CC 
throwDD 
newDD -
!FsDataTransferObjectNullExceptionDD ;
(DD; <
$strDD< Y
+DDZ [
exDD\ ^
.DD^ _
MessageDD_ f
)DDf g
;DDg h
}EE 
}GG 	
}II 
}JJ ï	
qC:\Users\cjpineda\Desktop\Ejercicios c#\ProyectoAcademia\Academia.WebRentas.WebApi\_Common\ControllerExtension.cs
	namespace 	
Academia
 
. 
	WebRentas 
. 
WebApi #
.# $
_Common$ +
{ 
[ #
ExcludeFromCodeCoverage 
] 
public 

static 
class 
ControllerExtension +
{		 
public 
static 
IActionResult #
ActionResultFrom$ 4
<4 5
TData5 :
>: ;
(; <
this< @
ControllerBaseA O

controllerP Z
,Z [
	Respuesta\ e
<e f
TDataf k
>k l
	respuestam v
)v w
{ 	
return 

controller 
. 

StatusCode (
(( )
int) ,
., -
Parse- 2
(2 3
	respuesta3 <
.< =
Codigo= C
)C D
,D E
	respuestaF O
)O P
;P Q
} 	
} 
} Ÿ
éC:\Users\cjpineda\Desktop\Ejercicios c#\ProyectoAcademia\Academia.WebRentas.WebApi\_Common\DomainRequirement\ContratoRentaDomainRequirement.cs
	namespace 	
Academia
 
. 
	WebRentas 
. 
WebApi #
.# $
_Common$ +
.+ ,
DomainRequirement, =
{ 
public 

class *
ContratoRentaDomainRequirement /
{ 
public 
bool 
ProveedorExiste #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
bool 
MonedaExiste  
{! "
get# &
;& '
set( +
;+ ,
}- .
public		 
bool		 
NumeroContratoUnico		 '
{		( )
get		* -
;		- .
set		/ 2
;		2 3
}		4 5
public 
static *
ContratoRentaDomainRequirement 4
Fill5 9
(9 :
bool 
proveedorExiste  
,  !
bool 
monedaExiste 
, 
bool 
numeroContratoUnico $
) 	
{ 	
return 
new *
ContratoRentaDomainRequirement 5
{ 
ProveedorExiste 
=  !
proveedorExiste" 1
,1 2
MonedaExiste 
= 
monedaExiste +
,+ ,
NumeroContratoUnico #
=$ %
numeroContratoUnico& 9
} 
; 
} 	
public 
List 
< 
string 
> 
ObtenerErrores *
(* +
)+ ,
{ 	
List 
< 
string 
> 
errores  
=! "
new# &
(& '
)' (
;( )
if 
( 
! 
ProveedorExiste  
)  !
errores 
. 
Add 
( 
Fallo !
.! "
CampoValido" -
.- .
Replace. 5
(5 6
$str6 >
,> ?
$str@ K
)K L
)L M
;M N
if   
(   
!   
MonedaExiste   
)   
errores!! 
.!! 
Add!! 
(!! 
Fallo!! !
.!!! "
CampoValido!!" -
.!!- .
Replace!!. 5
(!!5 6
$str!!6 >
,!!> ?
$str!!@ H
)!!H I
)!!I J
;!!J K
if## 
(## 
!## 
NumeroContratoUnico## $
)##$ %
errores$$ 
.$$ 
Add$$ 
($$ 
Fallo$$ !
.$$! "
CampoRepetido$$" /
.$$/ 0
Replace$$0 7
($$7 8
$str$$8 @
,$$@ A
$str$$B V
)$$V W
)$$W X
;$$X Y
return&& 
errores&& 
;&& 
}'' 	
public)) 
bool)) 
EsValido)) 
()) 
))) 
=>)) !
ObtenerErrores))" 0
())0 1
)))1 2
.))2 3
Count))3 8
==))9 ;
$num))< =
;))= >
},, 
}-- «
âC:\Users\cjpineda\Desktop\Ejercicios c#\ProyectoAcademia\Academia.WebRentas.WebApi\_Common\DomainRequirement\SucursalDomainRequirement.cs
	namespace 	
Academia
 
. 
	WebRentas 
. 
WebApi #
.# $
_Common$ +
.+ ,
DomainRequirement, =
{ 
public 

class %
SucursalDomainRequirement *
{ 
public 
bool 
ProveedorExiste #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
bool 
ContratoExiste "
{# $
get% (
;( )
set* -
;- .
}/ 0
public		 
bool		 
NombreUnico		 
{		  !
get		" %
;		% &
set		' *
;		* +
}		, -
public

 
bool

 
DireccionUnica

 "
{

# $
get

% (
;

( )
set

* -
;

- .
}

/ 0
public 
static %
SucursalDomainRequirement /
Fill0 4
(4 5
bool 
proveedorExiste  
,  !
bool 
contratoExiste 
,  
bool 
nombreUnico 
, 
bool 
direccionUnica 
) 	
{ 	
return 
new %
SucursalDomainRequirement 0
{ 
ProveedorExiste 
=  !
proveedorExiste" 1
,1 2
ContratoExiste 
=  
contratoExiste! /
,/ 0
NombreUnico 
= 
nombreUnico )
,) *
DireccionUnica 
=  
direccionUnica! /
} 
; 
} 	
public 
List 
< 
string 
> 
ObtenerErrores *
(* +
)+ ,
{ 	
List 
< 
string 
> 
errores  
=! "
new# &
(& '
)' (
;( )
if   
(   
!   
ProveedorExiste    
)    !
errores!! 
.!! 
Add!! 
(!! 
Fallo!! !
.!!! "
CampoValido!!" -
.!!- .
Replace!!. 5
(!!5 6
$str!!6 >
,!!> ?
$str!!@ K
)!!K L
)!!L M
;!!M N
if## 
(## 
!## 
ContratoExiste## 
)##  
errores$$ 
.$$ 
Add$$ 
($$ 
Fallo$$ !
.$$! "
CampoValido$$" -
.$$- .
Replace$$. 5
($$5 6
$str$$6 >
,$$> ?
$str$$@ J
)$$J K
)$$K L
;$$L M
if&& 
(&& 
!&& 
NombreUnico&& 
)&& 
errores'' 
.'' 
Add'' 
('' 
Fallo'' !
.''! "
CampoRepetido''" /
.''/ 0
Replace''0 7
(''7 8
$str''8 @
,''@ A
$str''B V
)''V W
)''W X
;''X Y
if)) 
()) 
!)) 
DireccionUnica)) 
)))  
errores** 
.** 
Add** 
(** 
Fallo** !
.**! "
CampoRepetido**" /
.**/ 0
Replace**0 7
(**7 8
$str**8 @
,**@ A
$str**B M
)**M N
)**N O
;**O P
return,, 
errores,, 
;,, 
}-- 	
public// 
bool// 
EsValido// 
(// 
)// 
=>// !
ObtenerErrores//" 0
(//0 1
)//1 2
.//2 3
Count//3 8
==//9 ;
$num//< =
;//= >
}00 
}11 Ú
âC:\Users\cjpineda\Desktop\Ejercicios c#\ProyectoAcademia\Academia.WebRentas.WebApi\_Common\Dtos\ContratoRentaDto\ActualizarContratoDto.cs
	namespace 	
Academia
 
. 
	WebRentas 
. 
WebApi #
.# $
_Common$ +
.+ ,
Dtos, 0
.0 1
ContratoRentaDto1 A
{ 
[ #
ExcludeFromCodeCoverage 
] 
public 

class !
ActualizarContratoDto &
{ 
public		 
int		 

ContratoID		 
{		 
get		  #
;		# $
set		% (
;		( )
}		* +
public

 
int

 
?

 
ProveedorID

 
{

  !
get

" %
;

% &
set

' *
;

* +
}

, -
public 
int 
? 
MonedaID 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
? 
NumeroContrato %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
=4 5
null6 :
!: ;
;; <
public 
decimal 
? 
MontoContrato %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
decimal 
? 
MontoMensual $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
decimal 
? 

MontoTotal "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
DateTime 
? 
FechaInicio $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
DateTime 
? 
FechaFin !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
? 
UsuarioModifica &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
=5 6
null7 ;
!; <
;< =
} 
} ≤
àC:\Users\cjpineda\Desktop\Ejercicios c#\ProyectoAcademia\Academia.WebRentas.WebApi\_Common\Dtos\ContratoRentaDto\InactivarContratoDto.cs
	namespace 	
Academia
 
. 
	WebRentas 
. 
WebApi #
.# $
_Common$ +
.+ ,
Dtos, 0
.0 1
ContratoRentaDto1 A
{ 
[ #
ExcludeFromCodeCoverage 
] 
public 

class  
InactivarContratoDto %
{ 
public 
int 

ContratoID 
{ 
get  #
;# $
set% (
;( )
}* +
public		 
string		 
UsuarioModifica		 %
{		& '
get		( +
;		+ ,
set		- 0
;		0 1
}		2 3
=		4 5
null		6 :
!		: ;
;		; <
}

 
}  
áC:\Users\cjpineda\Desktop\Ejercicios c#\ProyectoAcademia\Academia.WebRentas.WebApi\_Common\Dtos\ContratoRentaDto\InsertarContratoDto.cs
	namespace 	
Academia
 
. 
	WebRentas 
. 
WebApi #
.# $
_Common$ +
.+ ,
Dtos, 0
.0 1
ContratoRentaDto1 A
{ 
[ #
ExcludeFromCodeCoverage 
] 
public 

class 
InsertarContratoDto $
{ 
public 
int 
ProveedorID 
{  
get! $
;$ %
set& )
;) *
}+ ,
public

 
int

 
MonedaID

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
public 
string 
NumeroContrato $
{% &
get' *
;* +
set, /
;/ 0
}1 2
=3 4
null5 9
!9 :
;: ;
public 
decimal 
MontoContrato $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
decimal 
MontoMensual #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
decimal 

MontoTotal !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
DateTime 
FechaInicio #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
DateTime 
FechaFin  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
UsuarioAgrega #
{$ %
get& )
;) *
set+ .
;. /
}0 1
=2 3
null4 8
!8 9
;9 :
} 
} ≈
ÜC:\Users\cjpineda\Desktop\Ejercicios c#\ProyectoAcademia\Academia.WebRentas.WebApi\_Common\Dtos\ContratoRentaDto\ObtenerContratoDto.cs
	namespace 	
Academia
 
. 
	WebRentas 
. 
WebApi #
.# $
_Common$ +
.+ ,
Dtos, 0
.0 1
ContratoRentaDto1 A
{ 
[ #
ExcludeFromCodeCoverage 
] 
public 

class 
ObtenerContratoDto #
{ 
public 
string 
NumeroContrato $
{% &
get' *
;* +
set, /
;/ 0
}1 2
=3 4
string5 ;
.; <
Empty< A
;A B
public		 
string		 
NombreDeProveedor		 '
{		( )
get		* -
;		- .
set		/ 2
;		2 3
}		4 5
=		6 7
string		8 >
.		> ?
Empty		? D
;		D E
public

 
string

 
MoneadaNombre

 #
{

$ %
get

& )
;

) *
set

+ .
;

. /
}

0 1
=

2 3
string

4 :
.

: ;
Empty

; @
;

@ A
public 
decimal 
MontoContrato $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
decimal 
MontoMensual #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
decimal 
? 

MontoTotal "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
DateTime 
FechaInicio #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
DateTime 
FechaFin  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} Ó
ÑC:\Users\cjpineda\Desktop\Ejercicios c#\ProyectoAcademia\Academia.WebRentas.WebApi\_Common\Dtos\SucursalDto\ActualizarSucursalDto.cs
	namespace 	
Academia
 
. 
	WebRentas 
. 
WebApi #
.# $
_Common$ +
.+ ,
Dtos, 0
.0 1
SucursalDto1 <
{ 
[ #
ExcludeFromCodeCoverage 
] 
public 

class !
ActualizarSucursalDto &
{ 
public 
int 

SucursalID 
{ 
get  #
;# $
set% (
;( )
}* +
public

 
string

 
NombreSucursal

 $
{

% &
get

' *
;

* +
set

, /
;

/ 0
}

1 2
=

3 4
null

5 9
!

9 :
;

: ;
public 
string 
? 
	Direccion  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
int 
ProveedorID 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
int 

ContratoID 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
UsuarioModifica %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
=4 5
null6 :
!: ;
;; <
} 
} ™
ÑC:\Users\cjpineda\Desktop\Ejercicios c#\ProyectoAcademia\Academia.WebRentas.WebApi\_Common\Dtos\SucursalDto\DesactivarSucursalDto.cs
	namespace 	
Academia
 
. 
	WebRentas 
. 
WebApi #
.# $
_Common$ +
.+ ,
Dtos, 0
.0 1
SucursalDto1 <
{ 
[ #
ExcludeFromCodeCoverage 
] 
public 

class !
DesactivarSucursalDto &
{ 
public 
int 

SucursalID 
{ 
get  #
;# $
set% (
;( )
}* +
public		 
string		 
UsuarioModifica		 %
{		& '
get		( +
;		+ ,
set		- 0
;		0 1
}		2 3
=		4 5
null		6 :
!		: ;
;		; <
}

 
} Õ
ÇC:\Users\cjpineda\Desktop\Ejercicios c#\ProyectoAcademia\Academia.WebRentas.WebApi\_Common\Dtos\SucursalDto\InsertarSucursalDto.cs
	namespace 	
Academia
 
. 
	WebRentas 
. 
WebApi #
.# $
_Common$ +
.+ ,
Dtos, 0
.0 1
SucursalDto1 <
{ 
[ #
ExcludeFromCodeCoverage 
] 
public 

class 
InsertarSucursalDto $
{ 
public 
string 
NombreSucursal $
{% &
get' *
;* +
set, /
;/ 0
}1 2
=3 4
null5 9
!9 :
;: ;
public

 
string

 
?

 
	Direccion

  
{

! "
get

# &
;

& '
set

( +
;

+ ,
}

- .
public 
int 
ProveedorID 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
int 

ContratoID 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
UsuarioAgrega #
{$ %
get& )
;) *
set+ .
;. /
}0 1
=2 3
null4 8
!8 9
;9 :
} 
} π
ÅC:\Users\cjpineda\Desktop\Ejercicios c#\ProyectoAcademia\Academia.WebRentas.WebApi\_Common\Dtos\SucursalDto\ObtenerSucursalDTO.cs
	namespace 	
Academia
 
. 
	WebRentas 
. 
WebApi #
.# $
_Common$ +
.+ ,
Dtos, 0
.0 1
SucursalDto1 <
{ 
[ #
ExcludeFromCodeCoverage 
] 
public 

class 
ObtenerSucursalDTO #
{ 
public		 
string		 
NombreSucursal		 $
{		% &
get		' *
;		* +
set		, /
;		/ 0
}		1 2
=		3 4
null		5 9
!		9 :
;		: ;
public 
string 
? 
	Direccion  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
NombreProveedor %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
=4 5
string6 <
.< =
Empty= B
;B C
public 
string 
NumeroContrato $
{% &
get' *
;* +
set, /
;/ 0
}1 2
=3 4
string5 ;
.; <
Empty< A
;A B
public 
bool 
Activo 
{ 
get  
;  !
set" %
;% &
}' (
} 
} ö
oC:\Users\cjpineda\Desktop\Ejercicios c#\ProyectoAcademia\Academia.WebRentas.WebApi\_Common\EnumMensajesError.cs
	namespace 	
Academia
 
. 
	WebRentas 
. 
WebApi #
.# $
_Common$ +
{ 
public 

enum 
EnumMensajesError !
{ 
Succes 
= 
$num 
, 

BadRequest 
= 
$num 
, 
InternarServerError 
= 
$num !
,! "
NotFound 
= 
$num 
}		 
}

 Ò#
fC:\Users\cjpineda\Desktop\Ejercicios c#\ProyectoAcademia\Academia.WebRentas.WebApi\_Common\Mensajes.cs
	namespace 	
Academia
 
. 
	WebRentas 
. 
WebApi #
.# $
_Common$ +
{ 
[ #
ExcludeFromCodeCoverage 
] 
public 

static 
class 
Mensajes  
{ 
public 
class 
Exito 
{		 	
public

 
const

 
string

 
OperacionExitosa

  0
=

1 2
$str

3 V
;

V W
public 
const 
string 
Creado  &
=' (
$str) @
;@ A
public 
const 
string 
Actualizado  +
=, -
$str. J
;J K
public 
const 
string 
	Eliminado  )
=* +
$str, R
;R S
public 
const 
string 
Autenticado  +
=, -
$str. E
;E F
} 	
public 
class 
Fallo 
{ 	
public 
const 
string 
OperacionFallida  0
=1 2
$str3 V
;V W
public 
const 
string 
CreacionFallida  /
=0 1
$str2 P
;P Q
public 
const 
string  
ActualizacionFallida  4
=5 6
$str7 Z
;Z [
public 
const 
string 
EliminacionFallida  2
=3 4
$str5 V
;V W
public 
const 
string  
AutenticacionFallida  4
=5 6
$str7 R
;R S
public 
const 
string  
RegistroNoEncontrado  4
=5 6
$str7 N
;N O
public 
const 
string 
DatosInvalidos  .
=/ 0
$str1 Z
;Z [
public 
const 
string 
ErrorInterno  ,
=- .
$str/ X
;X Y
public 
const 
string #
NumeroContratoRequerido  7
=8 9
$str: _
;_ `
public 
const 
string 
ExcesoCaracteres  0
=1 2
$str3 m
;m n
public 
const 
string 
CampoValido  +
=, -
$str. R
;R S
public 
const 
string 
MontoValido  +
=, -
$str. ^
;^ _
public 
const 
string 
MontoMensual  ,
=- .
$str/ Z
;Z [
public   
const   
string   
MontosErroneos    .
=  / 0
$str  1 s
;  s t
public!! 
const!! 
string!! 
FechaAntigua!!  ,
=!!- .
$str!!/ c
;!!c d
public"" 
const"" 
string"" 
FechaFutura""  +
="", -
$str"". ^
;""^ _
public## 
const## 
string## 
FechasErroneas##  .
=##/ 0
$str##1 h
;##h i
public$$ 
const$$ 
string$$ 
MontoNegativo$$  -
=$$. /
$str$$0 Y
;$$Y Z
public%% 
const%% 
string%% "
MontosErroneosContrato%%  6
=%%7 8
$str%%9 w
;%%w x
public&& 
const&& 
string&& 
CampoRepetido&&  -
=&&. /
$str&&0 E
;&&E F
public'' 
const'' 
string'' 
CamposRequerridos''  1
=''2 3
$str''4 L
;''L M
public(( 
const(( 
string(( 
RegistroYaInactivo((  2
=((3 4
$str((5 \
;((\ ]
public)) 
const)) 
string)) &
ExcesoDeCaracteresSucursal))  :
=)); <
$str))= z
;))z {
public** 
const** 
string** '
ExcesoDeCaracteresDireccion**  ;
=**< =
$str**> ~
;**~ 
}22 	
}44 
}55 Ñ
nC:\Users\cjpineda\Desktop\Ejercicios c#\ProyectoAcademia\Academia.WebRentas.WebApi\_Common\PaginacionHelper.cs
	namespace 	
Academia
 
. 
	WebRentas 
. 
WebApi #
.# $
_Common$ +
{ 
public 

static 
class 
PaginacionHelper (
{ 
public 
static 
int 
CalcularSkip &
(& '
int' *
pagina+ 1
,1 2
int3 6
tamanoPagina7 C
)C D
=> 
( 
pagina 
- 
$num 
) 
* 
tamanoPagina *
;* +
} 
} ∂
tC:\Users\cjpineda\Desktop\Ejercicios c#\ProyectoAcademia\Academia.WebRentas.WebApi\_Common\Service\IContratoRenta.cs
	namespace 	
Academia
 
. 
	WebRentas 
. 
WebApi #
.# $
_Common$ +
.+ ,
Service, 3
{ 
public 

	interface 
IContratoRenta #
{ 
public		 
	Respuesta		 
<		 
List		 
<		 
ObtenerContratoDto		 0
>		0 1
>		1 2 
ObtenerContratoRenta		3 G
(		G H
int		H K
pagina		L R
,		R S
int		T W
tamanoPagina		X d
)		d e
;		e f
public

 
	Respuesta

 
<

 
InsertarContratoDto

 ,
>

, -
InsertarContrato

. >
(

> ?
InsertarContratoDto

? R
dto

S V
)

V W
;

W X
public 
	Respuesta 
< !
ActualizarContratoDto .
>. /
ActualizarContrato0 B
(B C!
ActualizarContratoDtoC X
dtoY \
)\ ]
;] ^
public 
	Respuesta 
<  
InactivarContratoDto -
>- .
InactivarContrato/ @
(@ A 
InactivarContratoDtoA U
dtoV Y
)Y Z
;Z [
} 
} ´
oC:\Users\cjpineda\Desktop\Ejercicios c#\ProyectoAcademia\Academia.WebRentas.WebApi\_Common\Service\ISucursal.cs
	namespace 	
Academia
 
. 
	WebRentas 
. 
WebApi #
.# $
_Common$ +
.+ ,
Service, 3
{ 
public 

	interface 
	ISucursal 
{ 
public 
	Respuesta 
< 
List 
< 
ObtenerSucursalDTO 0
>0 1
>1 2
ObtenerSucursales3 D
(D E
intE H
paginaI O
,O P
intQ T
tamanoPaginaU a
)a b
;b c
public		 
	Respuesta		 
<		 
InsertarSucursalDto		 ,
>		, -
InsertarSucursal		. >
(		> ?
InsertarSucursalDto		? R
dto		S V
)		V W
;		W X
public

 
	Respuesta

 
<

 !
ActualizarSucursalDto

 .
>

. /
ActualizarSucursal

0 B
(

B C!
ActualizarSucursalDto

C X
dto

Y \
)

\ ]
;

] ^
public 
	Respuesta 
< !
DesactivarSucursalDto .
>. /
InactivarSucursal0 A
(A B!
DesactivarSucursalDtoB W
dtoX [
)[ \
;\ ]
} 
} ª;
ÇC:\Users\cjpineda\Desktop\Ejercicios c#\ProyectoAcademia\Academia.WebRentas.WebApi\_Features\ContratosRenta\ContratoRentaDomain.cs
	namespace 	
Academia
 
. 
	WebRentas 
. 
WebApi #
.# $
	_Features$ -
.- .
ContratosRenta. <
{		 
public

 

class

 
ContratoRentaDomain

 $
{ 
public 
	Respuesta 
< 
ContratoRenta &
>& '
ValidarContrato( 7
(7 8
ContratoRenta8 E
contratoRentaF S
,S T*
ContratoRentaDomainRequirementU s+
contratoRentaDomainRequirement	t í
)
í ì
{ 	
List 
< 
string 
> 
errores  
=! "
new# &
List' +
<+ ,
string, 2
>2 3
(3 4
)4 5
;5 6
DateTime !
fechaAntiguedadLimite *
=+ ,
DateTime- 5
.5 6
Today6 ;
.; <
AddYears< D
(D E
-E F
$numF G
)G H
;H I
DateTime 
fechaFuturaLimite &
=' (
DateTime) 1
.1 2
Today2 7
.7 8
AddYears8 @
(@ A
$numA C
)C D
;D E
if 
( 
! *
contratoRentaDomainRequirement /
./ 0
EsValido0 8
(8 9
)9 :
): ;
{ 
errores 
. 
Add 
( 
string "
." #
Join# '
(' (
$str( +
,+ ,*
contratoRentaDomainRequirement- K
.K L
ObtenerErroresL Z
(Z [
)[ \
)\ ]
)] ^
;^ _
} 
if 
( 
string 
. 
IsNullOrWhiteSpace )
() *
contratoRenta* 7
.7 8
NumeroContrato8 F
)F G
)G H
{ 
errores 
. 
Add 
( 
Fallo !
.! "#
NumeroContratoRequerido" 9
)9 :
;: ;
} 
else 
if 
( 
contratoRenta "
." #
NumeroContrato# 1
.1 2
Length2 8
>9 :
$num; =
)= >
{ 
errores 
. 
Add 
( 
Fallo !
.! "
ExcesoCaracteres" 2
)2 3
;3 4
} 
if!! 
(!! 
contratoRenta!! 
.!! 
MontoContrato!! +
<=!!, .
$num!!/ 0
)!!0 1
{"" 
errores## 
.## 
Add## 
(## 
Fallo## !
.##! "
MontoValido##" -
)##- .
;##. /
}$$ 
if&& 
(&& 
contratoRenta&& 
.&& 
MontoMensual&& *
<=&&+ -
$num&&. /
)&&/ 0
{'' 
errores(( 
.(( 
Add(( 
((( 
Fallo(( !
.((! "
MontoMensual((" .
)((. /
;((/ 0
})) 
if++ 
(++ 
contratoRenta++ 
.++ 
MontoMensual++ *
>+++ ,
contratoRenta++- :
.++: ;
MontoContrato++; H
)++H I
{,, 
errores-- 
.-- 
Add-- 
(-- 
Fallo-- !
.--! "
MontosErroneos--" 0
)--0 1
;--1 2
}.. 
if00 
(00 
contratoRenta00 
.00 

MontoTotal00 (
<=00) +
$num00, -
)00- .
{11 
errores22 
.22 
Add22 
(22 
Fallo22 !
.22! "
MontoNegativo22" /
)22/ 0
;220 1
}33 
if55 
(55 
contratoRenta55 
.55 

MontoTotal55 (
<55) *
contratoRenta55+ 8
.558 9
MontoContrato559 F
)55F G
{66 
errores77 
.77 
Add77 
(77 
Fallo77 !
.77! ""
MontosErroneosContrato77" 8
)778 9
;779 :
}88 
if:: 
(:: 
contratoRenta:: 
.:: 
FechaInicio:: )
<::* +!
fechaAntiguedadLimite::, A
)::A B
{;; 
errores<< 
.<< 
Add<< 
(<< 
Fallo<< !
.<<! "
FechaAntigua<<" .
.<<. /
Replace<</ 6
(<<6 7
$str<<7 >
,<<> ?!
fechaAntiguedadLimite<<@ U
.<<U V
Year<<V Z
.<<Z [
ToString<<[ c
(<<c d
)<<d e
)<<e f
)<<f g
;<<g h
}== 
if?? 
(?? 
contratoRenta?? 
.?? 
FechaFin?? &
>??' (
fechaFuturaLimite??) :
)??: ;
{@@ 
erroresAA 
.AA 
AddAA 
(AA 
FalloAA !
.AA! "
FechaFuturaAA" -
.AA- .
ReplaceAA. 5
(AA5 6
$strAA6 =
,AA= >
fechaFuturaLimiteAA? P
.AAP Q
YearAAQ U
.AAU V
ToStringAAV ^
(AA^ _
)AA_ `
)AA` a
)AAa b
;AAb c
}BB 
ifDD 
(DD 
contratoRentaDD 
.DD 
FechaInicioDD )
>DD* +
contratoRentaDD, 9
.DD9 :
FechaFinDD: B
)DDB C
{EE 
erroresFF 
.FF 
AddFF 
(FF 
FalloFF !
.FF! "
FechasErroneasFF" 0
)FF0 1
;FF1 2
}GG 
ifII 
(II 
erroresII 
.II 
AnyII 
(II 
)II 
)II 
{JJ 
stringKK &
mensajeErroresConcatenadosKK 1
=KK2 3
stringKK4 :
.KK: ;
JoinKK; ?
(KK? @
$strKK@ C
,KKC D
erroresKKE L
)KKL M
;KKM N
returnMM 
	RespuestaMM  
<MM  !
ContratoRentaMM! .
>MM. /
.MM/ 0
FaultMM0 5
(MM5 6&
mensajeErroresConcatenadosNN .
,NN. /
(OO 
(OO 
intOO 
)OO 
EnumMensajesErrorOO +
.OO+ ,

BadRequestOO, 6
)OO6 7
.OO7 8
ToStringOO8 @
(OO@ A
)OOA B
,OOB C
newPP 
ContratoRentaPP %
(PP% &
)PP& '
)QQ 
;QQ 
}RR 
returnTT 
	RespuestaTT 
<TT 
ContratoRentaTT *
>TT* +
.TT+ ,
SuccessTT, 3
(TT3 4
contratoRentaTT4 A
,TTA B
ExitoTTC H
.TTH I
OperacionExitosaTTI Y
,TTY Z
(UU 
(UU 
intUU 
)UU 
EnumMensajesErrorUU '
.UU' (
SuccesUU( .
)UU. /
.UU/ 0
ToStringUU0 8
(UU8 9
)UU9 :
)UU: ;
;UU; <
}VV 	
}WW 
}XX ßÕ
ÉC:\Users\cjpineda\Desktop\Ejercicios c#\ProyectoAcademia\Academia.WebRentas.WebApi\_Features\ContratosRenta\ContratoRentaService.cs
	namespace 	
Academia
 
. 
	WebRentas 
. 
WebApi #
.# $
	_Features$ -
.- .
ContratosRenta. <
{ 
[ #
ExcludeFromCodeCoverage 
] 
public 

class  
ContratoRentaService %
:& '
IContratoRenta( 6
{ 
private 
readonly 
IUnitOfWork $
_unitOfWork% 0
;0 1
private 
readonly 
IMapper  
_mapper! (
;( )
private 
readonly 
ContratoRentaDomain ,
_rentaDomain- 9
;9 :
public  
ContratoRentaService #
(# $
UnitOfWorkBuilder$ 5
unitOfWorkBuilder6 G
,G H
IMapperI P
mapperQ W
,W X
ContratoRentaDomainY l 
contratoRentaDomain	m Ä
)
Ä Å
{ 	
_unitOfWork 
= 
unitOfWorkBuilder +
.+ ,
BuilderRentas, 9
(9 :
): ;
;; <
_mapper 
= 
mapper 
; 
_rentaDomain 
= 
contratoRentaDomain .
;. /
} 	
public 
	Respuesta 
< 
List 
< 
ObtenerContratoDto 0
>0 1
>1 2 
ObtenerContratoRenta3 G
(G H
intH K
paginaL R
,R S
intT W
tamanoPaginaX d
)d e
{ 	
try 
{   
int"" 
skip"" 
="" 
PaginacionHelper"" +
.""+ ,
CalcularSkip"", 8
(""8 9
pagina""9 ?
,""? @
tamanoPagina""A M
)""M N
;""N O

IQueryable%% 
<%% 
ContratoRenta%% (
>%%( )
query%%* /
=%%0 1#
ConstruirQueryContratos%%2 I
(%%I J
)%%J K
.&& 
Skip&& 
(&& 
skip&& 
)&& 
.'' 
Take'' 
('' 
tamanoPagina'' %
)''% &
;''& '
List)) 
<)) 
ContratoRenta)) "
>))" #
contratoRentas))$ 2
=))3 4
query))5 :
.)): ;
ToList)); A
())A B
)))B C
;))C D
List++ 
<++ 
ObtenerContratoDto++ '
>++' (
contratoRentasDto++) :
=++; <
_mapper++= D
.++D E
Map++E H
<++H I
List++I M
<++M N
ObtenerContratoDto++N `
>++` a
>++a b
(++b c
contratoRentas++c q
)++q r
;++r s
return.. 
	Respuesta..  
...  !
Success..! (
(..( )
contratoRentasDto..) :
,..: ;
Exito..< A
...A B
OperacionExitosa..B R
,..R S
EnumMensajesError..T e
...e f
Succes..f l
...l m
ToString..m u
(..u v
)..v w
)..w x
;..x y
}// 
catch00 
(00 
	Exception00 
)00 
{11 
return22 
	Respuesta22  
.22  !
Fault22! &
<22& '
List22' +
<22+ ,
ObtenerContratoDto22, >
>22> ?
>22? @
(22@ A
Fallo22A F
.22F G
OperacionFallida22G W
,22W X
EnumMensajesError22Y j
.22j k
InternarServerError22k ~
.22~ 
ToString	22 á
(
22á à
)
22à â
)
22â ä
;
22ä ã
}33 
}44 	
public66 
	Respuesta66 
<66 
InsertarContratoDto66 ,
>66, -
InsertarContrato66. >
(66> ?
InsertarContratoDto66? R
insertarContratoDto66S f
)66f g
{77 	
try88 
{99 
ContratoRenta:: 
contrato:: &
=::' (
_mapper::) 0
.::0 1
Map::1 4
<::4 5
ContratoRenta::5 B
>::B C
(::C D
insertarContratoDto::D W
)::W X
;::X Y*
ContratoRentaDomainRequirement<< .
requirements<</ ;
=<<< =#
CrearRequisitosContrato<<> U
(<<U V
insertarContratoDto<<V i
)<<i j
;<<j k
	Respuesta>> 
<>> 
ContratoRenta>> '
>>>' (

validacion>>) 3
=>>4 5
_rentaDomain>>6 B
.>>B C
ValidarContrato>>C R
(>>R S
contrato>>S [
,>>[ \
requirements>>] i
)>>i j
;>>j k
if@@ 
(@@ 
!@@ 

validacion@@ 
.@@  
Ok@@  "
)@@" #
{AA 
returnBB 
	RespuestaBB $
.BB$ %
FaultBB% *
<BB* +
InsertarContratoDtoBB+ >
>BB> ?
(BB? @

validacionCC "
.CC" #
MensajeCC# *
,CC* +
(DD 
(DD 
intDD 
)DD 
EnumMensajesErrorDD /
.DD/ 0

BadRequestDD0 :
)DD: ;
.DD; <
ToStringDD< D
(DDD E
)DDE F
)EE 
;EE 
}FF 
_unitOfWorkHH 
.HH 

RepositoryHH &
<HH& '
ContratoRentaHH' 4
>HH4 5
(HH5 6
)HH6 7
.HH7 8
AddHH8 ;
(HH; <
contratoHH< D
)HHD E
;HHE F
ifKK 
(KK 
!KK 
_unitOfWorkKK  
.KK  !
SaveChangesKK! ,
(KK, -
)KK- .
)KK. /
{LL 
returnMM 
	RespuestaMM $
.MM$ %
FaultMM% *
<MM* +
InsertarContratoDtoMM+ >
>MM> ?
(MM? @
FalloNN 
.NN 
CreacionFallidaNN )
,NN) *
(OO 
(OO 
intOO 
)OO 
EnumMensajesErrorOO +
.OO+ ,
InternarServerErrorOO, ?
)OO? @
.OO@ A
ToStringOOA I
(OOI J
)OOJ K
)OOK L
;OOL M
}PP 
returnRR 
	RespuestaRR  
.RR  !
SuccessRR! (
(RR( )
insertarContratoDtoRR) <
,RR< =
ExitoRR> C
.RRC D
CreadoRRD J
,RRJ K
(RRL M
(RRM N
intRRN Q
)RRQ R
EnumMensajesErrorRRR c
.RRc d
SuccesRRd j
)RRj k
.RRk l
ToStringRRl t
(RRt u
)RRu v
)RRv w
;RRw x
}SS 
catchTT 
(TT 
	ExceptionTT 
)TT 
{UU 
returnWW 
	RespuestaWW  
.WW  !
FaultWW! &
<WW& '
InsertarContratoDtoWW' :
>WW: ;
(WW; <
FalloXX 
.XX 
CreacionFallidaXX )
,XX) *
(YY 
(YY 
intYY 
)YY 
EnumMensajesErrorYY +
.YY+ ,
InternarServerErrorYY, ?
)YY? @
.YY@ A
ToStringYYA I
(YYI J
)YYJ K
)ZZ 
;ZZ 
}[[ 
}\\ 	
public^^ 
	Respuesta^^ 
<^^ !
ActualizarContratoDto^^ .
>^^. /
ActualizarContrato^^0 B
(^^B C!
ActualizarContratoDto^^C X!
actualizarContratoDto^^Y n
)^^n o
{__ 	
try`` 
{aa 
	Respuestabb 
<bb 
ContratoRentabb '
>bb' (

validacionbb) 3
=bb4 5%
ValidarExistenciaContratobb6 O
(bbO P!
actualizarContratoDtobbP e
.bbe f

ContratoIDbbf p
)bbp q
;bbq r
ifdd 
(dd 
!dd 

validaciondd 
.dd  
Okdd  "
)dd" #
returnee 
	Respuestaee $
.ee$ %
Faultee% *
<ee* +!
ActualizarContratoDtoee+ @
>ee@ A
(eeA B

validacionff "
.ff" #
Mensajeff# *
,ff* +
(gg 
(gg 
intgg 
)gg 
EnumMensajesErrorgg /
.gg/ 0
NotFoundgg0 8
)gg8 9
.gg9 :
ToStringgg: B
(ggB C
)ggC D
)hh 
;hh 
ContratoRentajj 
?jj 
contratojj '
=jj( )

validacionjj* 4
.jj4 5
Datajj5 9
!jj9 :
;jj: ;
_mapperkk 
.kk 
Mapkk 
(kk !
actualizarContratoDtokk 1
,kk1 2
contratokk3 ;
)kk; <
;kk< =*
ContratoRentaDomainRequirementmm .
requirementsmm/ ;
=mm< =-
!CrearRequisitosContratoActualizarmm> _
(mm_ `!
actualizarContratoDtomm` u
)mmu v
;mmv w
	Respuestann 
<nn 
ContratoRentann '
>nn' (
validacionDominionn) :
=nn; <
_rentaDomainnn= I
.nnI J
ValidarContratonnJ Y
(nnY Z
contratonnZ b
,nnb c
requirementsnnd p
)nnp q
;nnq r
ifpp 
(pp 
!pp 
validacionDominiopp &
.pp& '
Okpp' )
)pp) *
{qq 
returnrr 
	Respuestarr $
.rr$ %
Faultrr% *
<rr* +!
ActualizarContratoDtorr+ @
>rr@ A
(rrA B
validacionDominioss )
.ss) *
Mensajess* 1
,ss1 2
(tt 
(tt 
inttt 
)tt 
EnumMensajesErrortt /
.tt/ 0

BadRequesttt0 :
)tt: ;
.tt; <
ToStringtt< D
(ttD E
)ttE F
)uu 
;uu 
}vv 
boolxx 
guardadoxx 
=xx 
_unitOfWorkxx  +
.xx+ ,
SaveChangesxx, 7
(xx7 8
)xx8 9
;xx9 :
ifyy 
(yy 
!yy 
guardadoyy 
)yy 
{zz 
return{{ 
	Respuesta{{ $
.{{$ %
Fault{{% *
<{{* +!
ActualizarContratoDto{{+ @
>{{@ A
({{A B
Fallo|| 
.||  
ActualizacionFallida|| 2
,||2 3
(}} 
(}} 
int}} 
)}} 
EnumMensajesError}} /
.}}/ 0
InternarServerError}}0 C
)}}C D
.}}D E
ToString}}E M
(}}M N
)}}N O
)~~ 
;~~ 
} 
return
ÅÅ 
	Respuesta
ÅÅ  
.
ÅÅ  !
Success
ÅÅ! (
(
ÅÅ( )#
actualizarContratoDto
ÇÇ )
,
ÇÇ) *
Exito
ÉÉ 
.
ÉÉ 
OperacionExitosa
ÉÉ *
,
ÉÉ* +
(
ÑÑ 
(
ÑÑ 
int
ÑÑ 
)
ÑÑ 
EnumMensajesError
ÑÑ +
.
ÑÑ+ ,
Succes
ÑÑ, 2
)
ÑÑ2 3
.
ÑÑ3 4
ToString
ÑÑ4 <
(
ÑÑ< =
)
ÑÑ= >
)
ÖÖ 
;
ÖÖ 
}
ÜÜ 
catch
áá 
(
áá 
	Exception
áá 
)
áá 
{
àà 
return
ââ 
	Respuesta
ââ  
.
ââ  !
Fault
ââ! &
<
ââ& '#
ActualizarContratoDto
ââ' <
>
ââ< =
(
ââ= >
Fallo
ää 
.
ää "
ActualizacionFallida
ää .
,
ää. /
(
ãã 
(
ãã 
int
ãã 
)
ãã 
EnumMensajesError
ãã +
.
ãã+ ,!
InternarServerError
ãã, ?
)
ãã? @
.
ãã@ A
ToString
ããA I
(
ããI J
)
ããJ K
)
åå 
;
åå 
}
çç 
}
éé 	
public
ëë 
	Respuesta
ëë 
<
ëë "
InactivarContratoDto
ëë -
>
ëë- .
InactivarContrato
ëë/ @
(
ëë@ A"
InactivarContratoDto
ëëA U"
inactivarContratoDto
ëëV j
)
ëëj k
{
íí 	
try
ìì 
{
îî 
	Respuesta
ïï 
<
ïï 
ContratoRenta
ïï '
>
ïï' (

validacion
ïï) 3
=
ïï4 5*
ValidarContratoParaInactivar
ïï6 R
(
ïïR S"
inactivarContratoDto
ïïS g
.
ïïg h

ContratoID
ïïh r
)
ïïr s
;
ïïs t
if
óó 
(
óó 
!
óó 

validacion
óó 
.
óó  
Ok
óó  "
)
óó" #
return
òò 
	Respuesta
òò $
.
òò$ %
Fault
òò% *
<
òò* +"
InactivarContratoDto
òò+ ?
>
òò? @
(
òò@ A

validacion
ôô "
.
ôô" #
Mensaje
ôô# *
,
ôô* +
(
öö 
(
öö 
int
öö 
)
öö 
EnumMensajesError
öö /
.
öö/ 0

BadRequest
öö0 :
)
öö: ;
.
öö; <
ToString
öö< D
(
ööD E
)
ööE F
)
õõ 
;
õõ 
ContratoRenta
ùù 
?
ùù 
contrato
ùù '
=
ùù( )

validacion
ùù* 4
.
ùù4 5
Data
ùù5 9
!
ùù9 :
;
ùù: ;
if
üü 
(
üü 
!
üü 
_unitOfWork
üü  
.
üü  !
SaveChanges
üü! ,
(
üü, -
)
üü- .
)
üü. /
return
†† 
	Respuesta
†† $
.
††$ %
Fault
††% *
<
††* +"
InactivarContratoDto
††+ ?
>
††? @
(
††@ A
Fallo
°° 
.
°° 
OperacionFallida
°° .
,
°°. /
(
¢¢ 
(
¢¢ 
int
¢¢ 
)
¢¢ 
EnumMensajesError
¢¢ /
.
¢¢/ 0!
InternarServerError
¢¢0 C
)
¢¢C D
.
¢¢D E
ToString
¢¢E M
(
¢¢M N
)
¢¢N O
)
££ 
;
££ 
return
•• 
	Respuesta
••  
.
••  !
Success
••! (
(
••( )"
inactivarContratoDto
¶¶ (
,
¶¶( )
Exito
ßß 
.
ßß 
	Eliminado
ßß #
,
ßß# $
(
®® 
(
®® 
int
®® 
)
®® 
EnumMensajesError
®® +
.
®®+ ,
Succes
®®, 2
)
®®2 3
.
®®3 4
ToString
®®4 <
(
®®< =
)
®®= >
)
©© 
;
©© 
}
™™ 
catch
´´ 
(
´´ 
	Exception
´´ 
)
´´ 
{
¨¨ 
return
≠≠ 
	Respuesta
≠≠  
.
≠≠  !
Fault
≠≠! &
<
≠≠& '"
InactivarContratoDto
≠≠' ;
>
≠≠; <
(
≠≠< =
Fallo
ÆÆ 
.
ÆÆ 
OperacionFallida
ÆÆ *
,
ÆÆ* +
(
ØØ 
(
ØØ 
int
ØØ 
)
ØØ 
EnumMensajesError
ØØ +
.
ØØ+ ,!
InternarServerError
ØØ, ?
)
ØØ? @
.
ØØ@ A
ToString
ØØA I
(
ØØI J
)
ØØJ K
)
∞∞ 
;
∞∞ 
}
±± 
}
≤≤ 	
private
¥¥ ,
ContratoRentaDomainRequirement
¥¥ .%
CrearRequisitosContrato
¥¥/ F
(
¥¥F G!
InsertarContratoDto
¥¥G Z!
insertarContratoDto
¥¥[ n
)
¥¥n o
{
µµ 	
bool
∂∂ 
proveedorExiste
∂∂  
=
∂∂! "
_unitOfWork
∂∂# .
.
∂∂. /

Repository
∂∂/ 9
<
∂∂9 :
	Proveedor
∂∂: C
>
∂∂C D
(
∂∂D E
)
∂∂E F
.
∑∑ 
AsQueryable
∑∑ 
(
∑∑ 
)
∑∑ 
.
∏∏ 
Any
∏∏ 
(
∏∏ 
p
∏∏ 
=>
∏∏ 
p
∏∏ 
.
∏∏ 
ProveedorID
∏∏ '
==
∏∏( *!
insertarContratoDto
∏∏+ >
.
∏∏> ?
ProveedorID
∏∏? J
)
∏∏J K
;
∏∏K L
bool
∫∫ 
monedaExiste
∫∫ 
=
∫∫ 
_unitOfWork
∫∫  +
.
∫∫+ ,

Repository
∫∫, 6
<
∫∫6 7
Moneda
∫∫7 =
>
∫∫= >
(
∫∫> ?
)
∫∫? @
.
ªª 
AsQueryable
ªª 
(
ªª 
)
ªª 
.
ºº 
Any
ºº 
(
ºº 
m
ºº 
=>
ºº 
m
ºº 
.
ºº 
MonedaID
ºº $
==
ºº% '!
insertarContratoDto
ºº( ;
.
ºº; <
MonedaID
ºº< D
)
ººD E
;
ººE F
bool
ææ !
numeroContratoUnico
ææ $
=
ææ% &
!
ææ' (
_unitOfWork
ææ( 3
.
ææ3 4

Repository
ææ4 >
<
ææ> ?
ContratoRenta
ææ? L
>
ææL M
(
ææM N
)
ææN O
.
øø 
AsQueryable
øø 
(
øø 
)
øø 
.
¿¿ 
Any
¿¿ 
(
¿¿ 
c
¿¿ 
=>
¿¿ 
c
¿¿ 
.
¿¿ 
NumeroContrato
¿¿ *
==
¿¿+ -!
insertarContratoDto
¿¿. A
.
¿¿A B
NumeroContrato
¿¿B P
)
¿¿P Q
;
¿¿Q R
return
¬¬ ,
ContratoRentaDomainRequirement
¬¬ 1
.
¬¬1 2
Fill
¬¬2 6
(
¬¬6 7
proveedorExiste
√√ 
,
√√  
monedaExiste
ƒƒ 
,
ƒƒ !
numeroContratoUnico
≈≈ #
)
∆∆ 
;
∆∆ 
}
«« 	
private
…… ,
ContratoRentaDomainRequirement
…… ./
!CrearRequisitosContratoActualizar
……/ P
(
……P Q#
ActualizarContratoDto
……Q f
dto
……g j
)
……j k
{
   	
var
ÀÀ 
proveedorExiste
ÀÀ 
=
ÀÀ  !
_unitOfWork
ÀÀ" -
.
ÀÀ- .

Repository
ÀÀ. 8
<
ÀÀ8 9
	Proveedor
ÀÀ9 B
>
ÀÀB C
(
ÀÀC D
)
ÀÀD E
.
ÃÃ 
AsQueryable
ÃÃ 
(
ÃÃ 
)
ÃÃ 
.
ÕÕ 
Any
ÕÕ 
(
ÕÕ 
p
ÕÕ 
=>
ÕÕ 
p
ÕÕ 
.
ÕÕ 
ProveedorID
ÕÕ '
==
ÕÕ( *
dto
ÕÕ+ .
.
ÕÕ. /
ProveedorID
ÕÕ/ :
)
ÕÕ: ;
;
ÕÕ; <
var
œœ 
monedaExiste
œœ 
=
œœ 
_unitOfWork
œœ *
.
œœ* +

Repository
œœ+ 5
<
œœ5 6
Moneda
œœ6 <
>
œœ< =
(
œœ= >
)
œœ> ?
.
–– 
AsQueryable
–– 
(
–– 
)
–– 
.
—— 
Any
—— 
(
—— 
m
—— 
=>
—— 
m
—— 
.
—— 
MonedaID
—— $
==
——% '
dto
——( +
.
——+ ,
MonedaID
——, 4
)
——4 5
;
——5 6
var
”” !
numeroContratoUnico
”” #
=
””$ %
!
””& '
_unitOfWork
””' 2
.
””2 3

Repository
””3 =
<
””= >
ContratoRenta
””> K
>
””K L
(
””L M
)
””M N
.
‘‘ 
AsQueryable
‘‘ 
(
‘‘ 
)
‘‘ 
.
’’ 
Any
’’ 
(
’’ 
c
’’ 
=>
’’ 
c
’’ 
.
’’ 
NumeroContrato
’’ *
==
’’+ -
dto
’’. 1
.
’’1 2
NumeroContrato
’’2 @
&&
’’A C
c
’’D E
.
’’E F

ContratoID
’’F P
!=
’’Q S
dto
’’T W
.
’’W X

ContratoID
’’X b
)
’’b c
;
’’c d
return
◊◊ ,
ContratoRentaDomainRequirement
◊◊ 1
.
◊◊1 2
Fill
◊◊2 6
(
◊◊6 7
proveedorExiste
◊◊7 F
,
◊◊F G
monedaExiste
◊◊H T
,
◊◊T U!
numeroContratoUnico
◊◊V i
)
◊◊i j
;
◊◊j k
}
ÿÿ 	
private
⁄⁄ 
	Respuesta
⁄⁄ 
<
⁄⁄ 
ContratoRenta
⁄⁄ '
>
⁄⁄' (*
ValidarContratoParaInactivar
⁄⁄) E
(
⁄⁄E F
int
⁄⁄F I

contratoId
⁄⁄J T
)
⁄⁄T U
{
€€ 	
ContratoRenta
‹‹ 
?
‹‹ 
contrato
‹‹ #
=
‹‹$ %
_unitOfWork
‹‹& 1
.
‹‹1 2

Repository
‹‹2 <
<
‹‹< =
ContratoRenta
‹‹= J
>
‹‹J K
(
‹‹K L
)
‹‹L M
.
›› 
AsQueryable
›› 
(
›› 
)
›› 
.
ﬁﬁ 
FirstOrDefault
ﬁﬁ 
(
ﬁﬁ  
c
ﬁﬁ  !
=>
ﬁﬁ" $
c
ﬁﬁ% &
.
ﬁﬁ& '

ContratoID
ﬁﬁ' 1
==
ﬁﬁ2 4

contratoId
ﬁﬁ5 ?
)
ﬁﬁ? @
;
ﬁﬁ@ A
if
‡‡ 
(
‡‡ 
contrato
‡‡ 
==
‡‡ 
null
‡‡  
)
‡‡  !
{
·· 
return
‚‚ 
	Respuesta
‚‚  
.
‚‚  !
Fault
‚‚! &
<
‚‚& '
ContratoRenta
‚‚' 4
>
‚‚4 5
(
‚‚5 6
Fallo
„„ 
.
„„ "
RegistroNoEncontrado
„„ .
,
„„. /
(
‰‰ 
(
‰‰ 
int
‰‰ 
)
‰‰ 
EnumMensajesError
‰‰ +
.
‰‰+ ,
NotFound
‰‰, 4
)
‰‰4 5
.
‰‰5 6
ToString
‰‰6 >
(
‰‰> ?
)
‰‰? @
)
ÂÂ 
;
ÂÂ 
}
ÊÊ 
if
ËË 
(
ËË 
!
ËË 
contrato
ËË 
.
ËË 
Activo
ËË  
)
ËË  !
{
ÈÈ 
return
ÍÍ 
	Respuesta
ÍÍ  
.
ÍÍ  !
Fault
ÍÍ! &
<
ÍÍ& '
ContratoRenta
ÍÍ' 4
>
ÍÍ4 5
(
ÍÍ5 6
Fallo
ÎÎ 
.
ÎÎ  
RegistroYaInactivo
ÎÎ ,
,
ÎÎ, -
(
ÏÏ 
(
ÏÏ 
int
ÏÏ 
)
ÏÏ 
EnumMensajesError
ÏÏ +
.
ÏÏ+ ,

BadRequest
ÏÏ, 6
)
ÏÏ6 7
.
ÏÏ7 8
ToString
ÏÏ8 @
(
ÏÏ@ A
)
ÏÏA B
)
ÌÌ 
;
ÌÌ 
}
ÓÓ 
return
 
	Respuesta
 
.
 
Success
 $
(
$ %
contrato
ÒÒ 
,
ÒÒ 
Exito
ÚÚ 
.
ÚÚ 
OperacionExitosa
ÚÚ &
,
ÚÚ& '
(
ÛÛ 
(
ÛÛ 
int
ÛÛ 
)
ÛÛ 
EnumMensajesError
ÛÛ '
.
ÛÛ' (
Succes
ÛÛ( .
)
ÛÛ. /
.
ÛÛ/ 0
ToString
ÛÛ0 8
(
ÛÛ8 9
)
ÛÛ9 :
)
ÙÙ 
;
ÙÙ 
}
ıı 	
private
˜˜ 
	Respuesta
˜˜ 
<
˜˜ 
ContratoRenta
˜˜ '
>
˜˜' ('
ValidarExistenciaContrato
˜˜) B
(
˜˜B C
int
˜˜C F

contratoId
˜˜G Q
)
˜˜Q R
{
¯¯ 	
ContratoRenta
˘˘ 
?
˘˘ 
contrato
˘˘ #
=
˘˘$ %
_unitOfWork
˘˘& 1
.
˘˘1 2

Repository
˘˘2 <
<
˘˘< =
ContratoRenta
˘˘= J
>
˘˘J K
(
˘˘K L
)
˘˘L M
.
˙˙ 
AsQueryable
˙˙ 
(
˙˙ 
)
˙˙ 
.
˚˚ 
FirstOrDefault
˚˚ 
(
˚˚  
c
˚˚  !
=>
˚˚" $
c
˚˚% &
.
˚˚& '

ContratoID
˚˚' 1
==
˚˚2 4

contratoId
˚˚5 ?
)
˚˚? @
;
˚˚@ A
if
˝˝ 
(
˝˝ 
contrato
˝˝ 
==
˝˝ 
null
˝˝  
)
˝˝  !
{
˛˛ 
return
ˇˇ 
	Respuesta
ˇˇ  
.
ˇˇ  !
Fault
ˇˇ! &
<
ˇˇ& '
ContratoRenta
ˇˇ' 4
>
ˇˇ4 5
(
ˇˇ5 6
Fallo
ÄÄ 
.
ÄÄ "
RegistroNoEncontrado
ÄÄ .
,
ÄÄ. /
(
ÅÅ 
(
ÅÅ 
int
ÅÅ 
)
ÅÅ 
EnumMensajesError
ÅÅ +
.
ÅÅ+ ,
NotFound
ÅÅ, 4
)
ÅÅ4 5
.
ÅÅ5 6
ToString
ÅÅ6 >
(
ÅÅ> ?
)
ÅÅ? @
)
ÇÇ 
;
ÇÇ 
}
ÉÉ 
return
ÖÖ 
	Respuesta
ÖÖ 
.
ÖÖ 
Success
ÖÖ $
(
ÖÖ$ %
contrato
ÜÜ 
,
ÜÜ 
Exito
áá 
.
áá 
OperacionExitosa
áá &
,
áá& '
(
àà 
(
àà 
int
àà 
)
àà 
EnumMensajesError
àà '
.
àà' (
Succes
àà( .
)
àà. /
.
àà/ 0
ToString
àà0 8
(
àà8 9
)
àà9 :
)
ââ 
;
ââ 
}
ää 	
private
ãã 

IQueryable
ãã 
<
ãã 
ContratoRenta
ãã (
>
ãã( )%
ConstruirQueryContratos
ãã* A
(
ããA B
)
ããB C
{
åå 	
return
çç 
_unitOfWork
çç 
.
çç 

Repository
çç )
<
çç) *
ContratoRenta
çç* 7
>
çç7 8
(
çç8 9
)
çç9 :
.
éé 
AsQueryable
éé  
(
éé  !
)
éé! "
.
èè 
Include
èè 
(
èè 
x
èè 
=>
èè !
x
èè" #
.
èè# $
Moneda
èè$ *
)
èè* +
.
êê 
Include
êê 
(
êê 
x
êê 
=>
êê !
x
êê" #
.
êê# $
	Proveedor
êê$ -
)
êê- .
.
ëë 
Where
ëë 
(
ëë 
x
ëë 
=>
ëë 
x
ëë  !
.
ëë! "
Activo
ëë" (
)
ëë( )
.
íí 
OrderBy
íí 
(
íí 
x
íí 
=>
íí !
x
íí" #
.
íí# $

ContratoID
íí$ .
)
íí. /
;
íí/ 0
}
ìì 	
}
îî 
}ïï «
{C:\Users\cjpineda\Desktop\Ejercicios c#\ProyectoAcademia\Academia.WebRentas.WebApi\_Features\PagoRentas\PagoRentaService.cs
	namespace 	
Academia
 
. 
	WebRentas 
. 
WebApi #
.# $
	_Features$ -
.- .

PagoRentas. 8
{ 
[		 #
ExcludeFromCodeCoverage		 
]		 
public

 

class

 
PagoRentaService

 !
{ 
private 
readonly 
BDRentasContext (
_bdRenta) 1
;1 2
public 
PagoRentaService 
(  
BDRentasContext  /
bdRenta0 7
)7 8
{ 	
_bdRenta 
= 
bdRenta 
; 
} 	
public 
List 
< 
	PagoRenta 
> 
ObtenerPagosRenta 0
(0 1
)1 2
{ 	
try 
{ 
List 
< 
	PagoRenta 
> 

pagoRentas  *
=+ ,
_bdRenta- 5
.5 6

PagosRenta6 @
.@ A
AsQueryableA L
(L M
)M N
.N O
AsNoTrackingO [
([ \
)\ ]
.] ^
ToList^ d
(d e
)e f
;f g
return 

pagoRentas !
;! "
} 
catch 
( 
	Exception 
ex 
)  
{ 
throw 
new -
!FsDataTransferObjectNullException ;
(; <
$str< Y
+Z [
ex\ ^
.^ _
Message_ f
)f g
;g h
} 
} 	
}"" 
}## Õ
|C:\Users\cjpineda\Desktop\Ejercicios c#\ProyectoAcademia\Academia.WebRentas.WebApi\_Features\Proveedores\ProveedorService.cs
	namespace 	
Academia
 
. 
	WebRentas 
. 
WebApi #
.# $
	_Features$ -
.- .
Proveedores. 9
{ 
[		 #
ExcludeFromCodeCoverage		 
]		 
public

 

class

 
ProveedorService

 !
{ 
private 
readonly 
BDRentasContext (
_bdRenta) 1
;1 2
public 
ProveedorService 
(  
BDRentasContext  /
bdRenta0 7
)7 8
{ 	
_bdRenta 
= 
bdRenta 
; 
} 	
public 
List 
< 
	Proveedor 
> 
ObtenerProveedores 1
(1 2
)2 3
{ 	
try 
{ 
List 
< 
	Proveedor 
> 
proveedores  +
=, -
_bdRenta. 6
.6 7
Proveedores7 B
.B C
AsQueryableC N
(N O
)O P
.P Q
AsNoTrackingQ ]
(] ^
)^ _
._ `
ToList` f
(f g
)g h
;h i
return 
proveedores "
;" #
} 
catch 
( 
	Exception 
ex 
)  
{ 
throw 
new -
!FsDataTransferObjectNullException ;
(; <
$str< Y
+Z [
ex\ ^
.^ _
Message_ f
)f g
;g h
} 
}   	
}!! 
}## º
yC:\Users\cjpineda\Desktop\Ejercicios c#\ProyectoAcademia\Academia.WebRentas.WebApi\_Features\Servicios\ServicioService.cs
	namespace 	
Academia
 
. 
	WebRentas 
. 
WebApi #
.# $
	_Features$ -
.- .
	Servicios. 7
{ 
[		 #
ExcludeFromCodeCoverage		 
]		 
public

 

class

 
ServicioService

  
{ 
private 
readonly 
BDRentasContext (
_bdRenta) 1
;1 2
public 
ServicioService 
( 
BDRentasContext .
bdRenta/ 6
)6 7
{ 	
_bdRenta 
= 
bdRenta 
; 
} 	
public 
List 
< 
Servicio 
> 
ObtenerServicios .
(. /
)/ 0
{ 	
try 
{ 
List 
< 
Servicio 
> 
	servicios (
=) *
_bdRenta+ 3
.3 4
	Servicios4 =
.= >
AsQueryable> I
(I J
)J K
.K L
AsNoTrackingL X
(X Y
)Y Z
.Z [
ToList[ a
(a b
)b c
;c d
return 
	servicios  
;  !
} 
catch 
( 
	Exception 
ex 
)  
{ 
throw 
new -
!FsDataTransferObjectNullException ;
(; <
$str< Y
+Z [
ex\ ^
.^ _
Message_ f
)f g
;g h
} 
} 	
} 
}   Ó%
yC:\Users\cjpineda\Desktop\Ejercicios c#\ProyectoAcademia\Academia.WebRentas.WebApi\_Features\Sucursales\SucursalDomain.cs
	namespace 	
Academia
 
. 
	WebRentas 
. 
WebApi #
.# $
	_Features$ -
.- .

Sucursales. 8
{ 
public		 

class		 
SucursalDomain		 
{

 
public 
	Respuesta 
< 
Sucursal !
>! "
ValidarSucursal# 2
(2 3
Sucursal3 ;
sucursal< D
,D E%
SucursalDomainRequirementF _%
sucursalDomainRequirement` y
)y z
{ 	
List 
< 
string 
> 
errores  
=! "
new# &
List' +
<+ ,
string, 2
>2 3
(3 4
)4 5
;5 6
if 
( %
sucursalDomainRequirement )
!=* ,
null- 1
&&2 4
!5 6%
sucursalDomainRequirement6 O
.O P
EsValidoP X
(X Y
)Y Z
)Z [
{ 
errores 
. 
Add 
( 
string "
." #
Join# '
(' (
$str( +
,+ ,%
sucursalDomainRequirement- F
.F G
ObtenerErroresG U
(U V
)V W
)W X
)X Y
;Y Z
} 
if 
( 
string 
. 
IsNullOrWhiteSpace )
() *
sucursal* 2
.2 3
NombreSucursal3 A
)A B
)B C
{ 
errores 
. 
Add 
( 
Fallo !
.! "
CamposRequerridos" 3
.3 4
Replace4 ;
(; <
$str< D
,D E
$strF ]
)] ^
)^ _
;_ `
} 
else 
if 
( 
sucursal 
. 
NombreSucursal ,
., -
Length- 3
>4 5
$num6 8
)8 9
{ 
errores 
. 
Add 
( 
Fallo !
.! "&
ExcesoDeCaracteresSucursal" <
)< =
;= >
} 
if 
( 
string 
. 
IsNullOrWhiteSpace )
() *
sucursal* 2
.2 3
	Direccion3 <
)< =
)= >
{ 
errores   
.   
Add   
(   
Fallo   !
.  ! "
CamposRequerridos  " 3
.  3 4
Replace  4 ;
(  ; <
$str  < D
,  D E
$str  F f
)  f g
)  g h
;  h i
}!! 
else"" 
if"" 
("" 
sucursal"" 
."" 
	Direccion"" '
.""' (
Length""( .
>""/ 0
$num""1 3
)""3 4
{## 
errores$$ 
.$$ 
Add$$ 
($$ 
Fallo$$ !
.$$! "'
ExcesoDeCaracteresDireccion$$" =
)$$= >
;$$> ?
}%% 
if'' 
('' 
errores'' 
.'' 
Any'' 
('' 
)'' 
)'' 
{(( 
string)) &
mensajeErroresConcatenados)) 1
=))2 3
string))4 :
.)): ;
Join)); ?
())? @
$str))@ C
,))C D
errores))E L
)))L M
;))M N
return++ 
	Respuesta++  
<++  !
Sucursal++! )
>++) *
.++* +
Fault+++ 0
(++0 1&
mensajeErroresConcatenados,, .
,,,. /
(-- 
(-- 
int-- 
)-- 
EnumMensajesError-- +
.--+ ,

BadRequest--, 6
)--6 7
.--7 8
ToString--8 @
(--@ A
)--A B
,--B C
new.. 
Sucursal..  
(..  !
)..! "
)// 
;// 
}00 
return22 
	Respuesta22 
<22 
Sucursal22 %
>22% &
.22& '
Success22' .
(22. /
sucursal33 
,33 
Exito44 
.44 
OperacionExitosa44 &
,44& '
(55 
(55 
int55 
)55 
EnumMensajesError55 '
.55' (
Succes55( .
)55. /
.55/ 0
ToString550 8
(558 9
)559 :
)66 
;66 
}77 	
}88 
}99 öﬁ
zC:\Users\cjpineda\Desktop\Ejercicios c#\ProyectoAcademia\Academia.WebRentas.WebApi\_Features\Sucursales\SucursalService.cs
	namespace 	
Academia
 
. 
	WebRentas 
. 
WebApi #
.# $
	_Features$ -
.- .

Sucursales. 8
{ 
[ #
ExcludeFromCodeCoverage 
] 
public 

class 
SucursalService  
:! "
	ISucursal# ,
{ 
private 
readonly 
IUnitOfWork $
_unitOfWork% 0
;0 1
private 
IMapper 
_mapper 
;  
private 
readonly 
SucursalDomain '
_sucursalDomain( 7
;7 8
public 
SucursalService 
( 
UnitOfWorkBuilder 0
unitOfWorkBuilder1 B
,B C
IMapperD K
mapperL R
,R S
SucursalDomainT b
sucursalDomainc q
)q r
{ 	
_unitOfWork 
= 
unitOfWorkBuilder +
.+ ,
BuilderRentas, 9
(9 :
): ;
;; <
_mapper 
= 
mapper 
; 
_sucursalDomain 
= 
sucursalDomain ,
;, -
} 	
public 
	Respuesta 
< 
List 
< 
ObtenerSucursalDTO 0
>0 1
>1 2
ObtenerSucursales3 D
(D E
intE H
paginaI O
,O P
intQ T
tamanoPaginaU a
)a b
{ 	
try   
{!! 
int"" 
skip"" 
="" 
PaginacionHelper"" +
.""+ ,
CalcularSkip"", 8
(""8 9
pagina""9 ?
,""? @
tamanoPagina""A M
)""M N
;""N O

IQueryable$$ 
<$$ 
Sucursal$$ #
>$$# $
query$$% *
=$$+ ,$
ConstruirQuerySucursales$$- E
($$E F
)$$F G
.%% 
Skip%% 
(%% 
skip%% 
)%% 
.&& 
Take&& 
(&& 
tamanoPagina&& &
)&&& '
;&&' (
List(( 
<(( 
Sucursal(( 
>(( 

sucursales(( )
=((* +
query((, 1
.((1 2
ToList((2 8
(((8 9
)((9 :
;((: ;
List** 
<** 
ObtenerSucursalDTO** '
>**' (
sucursalesDto**) 6
=**7 8
_mapper++ 
.++ 
Map++ 
<++  
List++  $
<++$ %
ObtenerSucursalDTO++% 7
>++7 8
>++8 9
(++9 :

sucursales++: D
)++D E
;++E F
return-- 
	Respuesta--  
.--  !
Success--! (
(--( )
sucursalesDto.. !
,..! "
Exito// 
.// 
OperacionExitosa// *
,//* +
EnumMensajesError00 %
.00% &
Succes00& ,
.00, -
ToString00- 5
(005 6
)006 7
)11 
;11 
}22 
catch33 
(33 
	Exception33 
)33 
{44 
return55 
	Respuesta55  
.55  !
Fault55! &
<55& '
List55' +
<55+ ,
ObtenerSucursalDTO55, >
>55> ?
>55? @
(55@ A
Fallo66 
.66 
OperacionFallida66 *
,66* +
EnumMensajesError77 %
.77% &
InternarServerError77& 9
.779 :
ToString77: B
(77B C
)77C D
)88 
;88 
}99 
}:: 	
public<< 
	Respuesta<< 
<<< 
InsertarSucursalDto<< ,
><<, -
InsertarSucursal<<. >
(<<> ?
InsertarSucursalDto<<? R
insertarSucursalDto<<S f
)<<f g
{== 	
try>> 
{?? 
Sucursal@@ 
sucursal@@ !
=@@" #
_mapper@@$ +
.@@+ ,
Map@@, /
<@@/ 0
Sucursal@@0 8
>@@8 9
(@@9 :
insertarSucursalDto@@: M
)@@M N
;@@N O%
SucursalDomainRequirementBB )
requirementsBB* 6
=BB7 8#
CrearRequisitosSucursalBB9 P
(BBP Q
insertarSucursalDtoBBQ d
)BBd e
;BBe f
ifDD 
(DD 
_sucursalDomainDD #
==DD$ &
nullDD' +
)DD+ ,
throwEE 
newEE 
	ExceptionEE '
(EE' (
$strEE( A
)EEA B
;EEB C
ifGG 
(GG 
sucursalGG 
==GG 
nullGG  $
)GG$ %
throwHH 
newHH 
	ExceptionHH '
(HH' (
$strHH( :
)HH: ;
;HH; <
ifJJ 
(JJ 
requirementsJJ  
==JJ! #
nullJJ$ (
)JJ( )
throwKK 
newKK 
	ExceptionKK '
(KK' (
$strKK( >
)KK> ?
;KK? @
	RespuestaNN 
<NN 
SucursalNN "
>NN" #

validacionNN$ .
=NN/ 0
_sucursalDomainNN1 @
.NN@ A
ValidarSucursalNNA P
(NNP Q
sucursalNNQ Y
,NNY Z
requirementsNN[ g
)NNg h
;NNh i
ifPP 
(PP 
!PP 

validacionPP 
.PP  
OkPP  "
)PP" #
{QQ 
returnRR 
	RespuestaRR $
.RR$ %
FaultRR% *
<RR* +
InsertarSucursalDtoRR+ >
>RR> ?
(RR? @

validacionSS "
.SS" #
MensajeSS# *
,SS* +
(TT 
(TT 
intTT 
)TT 
EnumMensajesErrorTT /
.TT/ 0

BadRequestTT0 :
)TT: ;
.TT; <
ToStringTT< D
(TTD E
)TTE F
)UU 
;UU 
}VV 
_unitOfWorkXX 
.XX 

RepositoryXX &
<XX& '
SucursalXX' /
>XX/ 0
(XX0 1
)XX1 2
.XX2 3
AddXX3 6
(XX6 7
sucursalXX7 ?
)XX? @
;XX@ A
ifZZ 
(ZZ 
!ZZ 
_unitOfWorkZZ  
.ZZ  !
SaveChangesZZ! ,
(ZZ, -
)ZZ- .
)ZZ. /
{[[ 
return\\ 
	Respuesta\\ $
.\\$ %
Fault\\% *
<\\* +
InsertarSucursalDto\\+ >
>\\> ?
(\\? @
Fallo]] 
.]] 
CreacionFallida]] -
,]]- .
(^^ 
(^^ 
int^^ 
)^^ 
EnumMensajesError^^ /
.^^/ 0
InternarServerError^^0 C
)^^C D
.^^D E
ToString^^E M
(^^M N
)^^N O
)__ 
;__ 
}`` 
returnbb 
	Respuestabb  
.bb  !
Successbb! (
(bb( )
insertarSucursalDtocc '
,cc' (
Exitodd 
.dd 
Creadodd  
,dd  !
(ee 
(ee 
intee 
)ee 
EnumMensajesErroree +
.ee+ ,
Succesee, 2
)ee2 3
.ee3 4
ToStringee4 <
(ee< =
)ee= >
)ff 
;ff 
}gg 
catchhh 
(hh 
	Exceptionhh 
)hh 
{ii 
returnjj 
	Respuestajj  
.jj  !
Faultjj! &
<jj& '
InsertarSucursalDtojj' :
>jj: ;
(jj; <
Fallokk 
.kk 
CreacionFallidakk )
,kk) *
(ll 
(ll 
intll 
)ll 
EnumMensajesErrorll +
.ll+ ,
InternarServerErrorll, ?
)ll? @
.ll@ A
ToStringllA I
(llI J
)llJ K
)mm 
;mm 
}nn 
}oo 	
publicrr 
	Respuestarr 
<rr !
ActualizarSucursalDtorr .
>rr. /
ActualizarSucursalrr0 B
(rrB C!
ActualizarSucursalDtorrC X!
actualizarSucursalDtorrY n
)rrn o
{ss 	
trytt 
{uu 
	Respuestavv 
<vv 
Sucursalvv "
>vv" #

validacionvv$ .
=vv/ 0%
ValidarExistenciaSucursalvv1 J
(vvJ K!
actualizarSucursalDtovvK `
.vv` a

SucursalIDvva k
)vvk l
;vvl m
ifxx 
(xx 
!xx 

validacionxx 
.xx  
Okxx  "
)xx" #
{yy 
returnzz 
	Respuestazz $
.zz$ %
Faultzz% *
<zz* +!
ActualizarSucursalDtozz+ @
>zz@ A
(zzA B

validacion{{ "
.{{" #
Mensaje{{# *
,{{* +
(|| 
(|| 
int|| 
)|| 
EnumMensajesError|| /
.||/ 0
NotFound||0 8
)||8 9
.||9 :
ToString||: B
(||B C
)||C D
)}} 
;}} 
}~~ 
Sucursal
ÅÅ 
sucursal
ÅÅ !
=
ÅÅ" #

validacion
ÅÅ$ .
.
ÅÅ. /
Data
ÅÅ/ 3
!
ÅÅ3 4
;
ÅÅ4 5
_mapper
ÇÇ 
.
ÇÇ 
Map
ÇÇ 
(
ÇÇ #
actualizarSucursalDto
ÇÇ 1
,
ÇÇ1 2
sucursal
ÇÇ3 ;
)
ÇÇ; <
;
ÇÇ< ='
SucursalDomainRequirement
ÑÑ )
requirements
ÑÑ* 6
=
ÑÑ7 8/
!CrearRequisitosSucursalActualizar
ÑÑ9 Z
(
ÑÑZ [#
actualizarSucursalDto
ÑÑ[ p
)
ÑÑp q
;
ÑÑq r
var
ÜÜ 
validacionDominio
ÜÜ %
=
ÜÜ& '
_sucursalDomain
ÜÜ( 7
.
ÜÜ7 8
ValidarSucursal
ÜÜ8 G
(
ÜÜG H
sucursal
ÜÜH P
,
ÜÜP Q
requirements
ÜÜR ^
)
ÜÜ^ _
;
ÜÜ_ `
if
àà 
(
àà 
!
àà 
validacionDominio
àà &
.
àà& '
Ok
àà' )
)
àà) *
{
ââ 
return
ää 
	Respuesta
ää $
.
ää$ %
Fault
ää% *
<
ää* +#
ActualizarSucursalDto
ää+ @
>
ää@ A
(
ääA B
validacionDominio
ãã )
.
ãã) *
Mensaje
ãã* 1
,
ãã1 2
(
åå 
(
åå 
int
åå 
)
åå 
EnumMensajesError
åå /
.
åå/ 0

BadRequest
åå0 :
)
åå: ;
.
åå; <
ToString
åå< D
(
ååD E
)
ååE F
)
çç 
;
çç 
}
éé 
bool
êê 
guardado
êê 
=
êê 
_unitOfWork
êê  +
.
êê+ ,
SaveChanges
êê, 7
(
êê7 8
)
êê8 9
;
êê9 :
if
ëë 
(
ëë 
!
ëë 
guardado
ëë 
)
ëë 
{
íí 
return
ìì 
	Respuesta
ìì $
.
ìì$ %
Fault
ìì% *
<
ìì* +#
ActualizarSucursalDto
ìì+ @
>
ìì@ A
(
ììA B
Fallo
îî 
.
îî "
ActualizacionFallida
îî 2
,
îî2 3
(
ïï 
(
ïï 
int
ïï 
)
ïï 
EnumMensajesError
ïï /
.
ïï/ 0!
InternarServerError
ïï0 C
)
ïïC D
.
ïïD E
ToString
ïïE M
(
ïïM N
)
ïïN O
)
ññ 
;
ññ 
}
óó 
return
ôô 
	Respuesta
ôô  
.
ôô  !
Success
ôô! (
(
ôô( )#
actualizarSucursalDto
öö )
,
öö) *
Exito
õõ 
.
õõ 
OperacionExitosa
õõ *
,
õõ* +
(
úú 
(
úú 
int
úú 
)
úú 
EnumMensajesError
úú +
.
úú+ ,
Succes
úú, 2
)
úú2 3
.
úú3 4
ToString
úú4 <
(
úú< =
)
úú= >
)
ùù 
;
ùù 
}
ûû 
catch
üü 
(
üü 
	Exception
üü 
)
üü 
{
†† 
return
°° 
	Respuesta
°°  
.
°°  !
Fault
°°! &
<
°°& '#
ActualizarSucursalDto
°°' <
>
°°< =
(
°°= >
Fallo
¢¢ 
.
¢¢ "
ActualizacionFallida
¢¢ .
,
¢¢. /
(
££ 
(
££ 
int
££ 
)
££ 
EnumMensajesError
££ +
.
££+ ,!
InternarServerError
££, ?
)
££? @
.
££@ A
ToString
££A I
(
££I J
)
££J K
)
§§ 
;
§§ 
}
•• 
}
¶¶ 	
public
©© 
	Respuesta
©© 
<
©© #
DesactivarSucursalDto
©© .
>
©©. /
InactivarSucursal
©©0 A
(
©©A B#
DesactivarSucursalDto
©©B W"
inactivarSucursalDto
©©X l
)
©©l m
{
™™ 	
try
´´ 
{
¨¨ 
	Respuesta
≠≠ 
<
≠≠ 
Sucursal
≠≠ "
>
≠≠" #

validacion
≠≠$ .
=
≠≠/ 0*
ValidarSucursalParaInactivar
≠≠1 M
(
≠≠M N"
inactivarSucursalDto
≠≠N b
.
≠≠b c

SucursalID
≠≠c m
)
≠≠m n
;
≠≠n o
if
ØØ 
(
ØØ 
!
ØØ 

validacion
ØØ 
.
ØØ  
Ok
ØØ  "
)
ØØ" #
{
∞∞ 
return
±± 
	Respuesta
±± $
.
±±$ %
Fault
±±% *
<
±±* +#
DesactivarSucursalDto
±±+ @
>
±±@ A
(
±±A B

validacion
≤≤ "
.
≤≤" #
Mensaje
≤≤# *
,
≤≤* +
(
≥≥ 
(
≥≥ 
int
≥≥ 
)
≥≥ 
EnumMensajesError
≥≥ /
.
≥≥/ 0

BadRequest
≥≥0 :
)
≥≥: ;
.
≥≥; <
ToString
≥≥< D
(
≥≥D E
)
≥≥E F
)
¥¥ 
;
¥¥ 
}
µµ 
Sucursal
∑∑ 
sucursal
∑∑ !
=
∑∑" #

validacion
∑∑$ .
.
∑∑. /
Data
∑∑/ 3
!
∑∑3 4
;
∑∑4 5
sucursal
∏∏ 
.
∏∏ 
Activo
∏∏ 
=
∏∏  !
false
∏∏" '
;
∏∏' (
if
∫∫ 
(
∫∫ 
!
∫∫ 
_unitOfWork
∫∫  
.
∫∫  !
SaveChanges
∫∫! ,
(
∫∫, -
)
∫∫- .
)
∫∫. /
{
ªª 
return
ºº 
	Respuesta
ºº $
.
ºº$ %
Fault
ºº% *
<
ºº* +#
DesactivarSucursalDto
ºº+ @
>
ºº@ A
(
ººA B
Fallo
ΩΩ 
.
ΩΩ 
OperacionFallida
ΩΩ .
,
ΩΩ. /
(
ææ 
(
ææ 
int
ææ 
)
ææ 
EnumMensajesError
ææ /
.
ææ/ 0!
InternarServerError
ææ0 C
)
ææC D
.
ææD E
ToString
ææE M
(
ææM N
)
ææN O
)
øø 
;
øø 
}
¿¿ 
return
¬¬ 
	Respuesta
¬¬  
.
¬¬  !
Success
¬¬! (
(
¬¬( )"
inactivarSucursalDto
√√ (
,
√√( )
Exito
ƒƒ 
.
ƒƒ 
	Eliminado
ƒƒ #
,
ƒƒ# $
(
≈≈ 
(
≈≈ 
int
≈≈ 
)
≈≈ 
EnumMensajesError
≈≈ +
.
≈≈+ ,
Succes
≈≈, 2
)
≈≈2 3
.
≈≈3 4
ToString
≈≈4 <
(
≈≈< =
)
≈≈= >
)
∆∆ 
;
∆∆ 
}
«« 
catch
»» 
(
»» 
	Exception
»» 
)
»» 
{
…… 
return
   
	Respuesta
    
.
    !
Fault
  ! &
<
  & '#
DesactivarSucursalDto
  ' <
>
  < =
(
  = >
Fallo
ÀÀ 
.
ÀÀ 
OperacionFallida
ÀÀ *
,
ÀÀ* +
(
ÃÃ 
(
ÃÃ 
int
ÃÃ 
)
ÃÃ 
EnumMensajesError
ÃÃ +
.
ÃÃ+ ,!
InternarServerError
ÃÃ, ?
)
ÃÃ? @
.
ÃÃ@ A
ToString
ÃÃA I
(
ÃÃI J
)
ÃÃJ K
)
ÕÕ 
;
ÕÕ 
}
ŒŒ 
}
œœ 	
private
““ 

IQueryable
““ 
<
““ 
Sucursal
““ #
>
““# $&
ConstruirQuerySucursales
““% =
(
““= >
)
““> ?
{
”” 	
return
‘‘ 
_unitOfWork
‘‘ 
.
‘‘ 

Repository
‘‘ )
<
‘‘) *
Sucursal
‘‘* 2
>
‘‘2 3
(
‘‘3 4
)
‘‘4 5
.
’’ 
AsQueryable
’’ 
(
’’ 
)
’’ 
.
÷÷ 
Include
÷÷ 
(
÷÷ 
x
÷÷ 
=>
÷÷ 
x
÷÷ 
.
÷÷  
	Proveedor
÷÷  )
)
÷÷) *
.
◊◊ 
Include
◊◊ 
(
◊◊ 
x
◊◊ 
=>
◊◊ 
x
◊◊ 
.
◊◊  
Contrato
◊◊  (
)
◊◊( )
.
ÿÿ 
Where
ÿÿ 
(
ÿÿ 
x
ÿÿ 
=>
ÿÿ 
x
ÿÿ 
.
ÿÿ 
Activo
ÿÿ $
)
ÿÿ$ %
.
ŸŸ 
OrderBy
ŸŸ 
(
ŸŸ 
x
ŸŸ 
=>
ŸŸ 
x
ŸŸ 
.
ŸŸ  

SucursalID
ŸŸ  *
)
ŸŸ* +
;
ŸŸ+ ,
}
⁄⁄ 	
private
€€ '
SucursalDomainRequirement
€€ )%
CrearRequisitosSucursal
€€* A
(
€€A B!
InsertarSucursalDto
€€B U
dto
€€V Y
)
€€Y Z
{
‹‹ 	
bool
›› 
proveedorExiste
››  
=
››! "
_unitOfWork
››# .
.
››. /

Repository
››/ 9
<
››9 :
	Proveedor
››: C
>
››C D
(
››D E
)
››E F
.
ﬁﬁ 
AsQueryable
ﬁﬁ 
(
ﬁﬁ 
)
ﬁﬁ 
.
ﬂﬂ 
Any
ﬂﬂ 
(
ﬂﬂ 
x
ﬂﬂ 
=>
ﬂﬂ 
x
ﬂﬂ 
.
ﬂﬂ 
ProveedorID
ﬂﬂ '
==
ﬂﬂ( *
dto
ﬂﬂ+ .
.
ﬂﬂ. /
ProveedorID
ﬂﬂ/ :
)
ﬂﬂ: ;
;
ﬂﬂ; <
bool
·· 
contratoExiste
·· 
=
··  !
_unitOfWork
··" -
.
··- .

Repository
··. 8
<
··8 9
ContratoRenta
··9 F
>
··F G
(
··G H
)
··H I
.
‚‚ 
AsQueryable
‚‚ 
(
‚‚ 
)
‚‚ 
.
„„ 
Any
„„ 
(
„„ 
x
„„ 
=>
„„ 
x
„„ 
.
„„ 

ContratoID
„„ &
==
„„' )
dto
„„* -
.
„„- .

ContratoID
„„. 8
)
„„8 9
;
„„9 :
bool
ÂÂ 
nombreUnico
ÂÂ 
=
ÂÂ 
!
ÂÂ  
_unitOfWork
ÂÂ  +
.
ÂÂ+ ,

Repository
ÂÂ, 6
<
ÂÂ6 7
Sucursal
ÂÂ7 ?
>
ÂÂ? @
(
ÂÂ@ A
)
ÂÂA B
.
ÊÊ 
AsQueryable
ÊÊ 
(
ÊÊ 
)
ÊÊ 
.
ÁÁ 
Any
ÁÁ 
(
ÁÁ 
x
ÁÁ 
=>
ÁÁ 
x
ÁÁ 
.
ÁÁ 
NombreSucursal
ÁÁ *
==
ÁÁ+ -
dto
ÁÁ. 1
.
ÁÁ1 2
NombreSucursal
ÁÁ2 @
)
ÁÁ@ A
;
ÁÁA B
bool
ÈÈ 
direccionUnica
ÈÈ 
=
ÈÈ  !
!
ÈÈ" #
_unitOfWork
ÈÈ# .
.
ÈÈ. /

Repository
ÈÈ/ 9
<
ÈÈ9 :
Sucursal
ÈÈ: B
>
ÈÈB C
(
ÈÈC D
)
ÈÈD E
.
ÍÍ 
AsQueryable
ÍÍ 
(
ÍÍ 
)
ÍÍ 
.
ÎÎ 
Any
ÎÎ 
(
ÎÎ 
x
ÎÎ 
=>
ÎÎ 
x
ÎÎ 
.
ÎÎ 
	Direccion
ÎÎ %
==
ÎÎ& (
dto
ÎÎ) ,
.
ÎÎ, -
	Direccion
ÎÎ- 6
)
ÎÎ6 7
;
ÎÎ7 8
return
ÌÌ '
SucursalDomainRequirement
ÌÌ ,
.
ÌÌ, -
Fill
ÌÌ- 1
(
ÌÌ1 2
proveedorExiste
ÓÓ 
,
ÓÓ  
contratoExiste
ÔÔ 
,
ÔÔ 
nombreUnico
 
,
 
direccionUnica
ÒÒ 
)
ÚÚ 
;
ÚÚ 
}
ÛÛ 	
private
ıı '
SucursalDomainRequirement
ıı )/
!CrearRequisitosSucursalActualizar
ıı* K
(
ııK L#
ActualizarSucursalDto
ııL a
dto
ııb e
)
ııe f
{
ˆˆ 	
bool
˜˜ 
proveedorExiste
˜˜  
=
˜˜! "
_unitOfWork
˜˜# .
.
˜˜. /

Repository
˜˜/ 9
<
˜˜9 :
	Proveedor
˜˜: C
>
˜˜C D
(
˜˜D E
)
˜˜E F
.
¯¯ 
AsQueryable
¯¯ 
(
¯¯ 
)
¯¯ 
.
˘˘ 
Any
˘˘ 
(
˘˘ 
p
˘˘ 
=>
˘˘ 
p
˘˘ 
.
˘˘ 
ProveedorID
˘˘ '
==
˘˘( *
dto
˘˘+ .
.
˘˘. /
ProveedorID
˘˘/ :
)
˘˘: ;
;
˘˘; <
bool
˚˚ 
contratoExiste
˚˚ 
=
˚˚  !
_unitOfWork
˚˚" -
.
˚˚- .

Repository
˚˚. 8
<
˚˚8 9
ContratoRenta
˚˚9 F
>
˚˚F G
(
˚˚G H
)
˚˚H I
.
¸¸ 
AsQueryable
¸¸ 
(
¸¸ 
)
¸¸ 
.
˝˝ 
Any
˝˝ 
(
˝˝ 
c
˝˝ 
=>
˝˝ 
c
˝˝ 
.
˝˝ 

ContratoID
˝˝ &
==
˝˝' )
dto
˝˝* -
.
˝˝- .

ContratoID
˝˝. 8
)
˝˝8 9
;
˝˝9 :
bool
ˇˇ 
nombreUnico
ˇˇ 
=
ˇˇ 
!
ˇˇ  
_unitOfWork
ˇˇ  +
.
ˇˇ+ ,

Repository
ˇˇ, 6
<
ˇˇ6 7
Sucursal
ˇˇ7 ?
>
ˇˇ? @
(
ˇˇ@ A
)
ˇˇA B
.
ÄÄ 
AsQueryable
ÄÄ 
(
ÄÄ 
)
ÄÄ 
.
ÅÅ 
Any
ÅÅ 
(
ÅÅ 
s
ÅÅ 
=>
ÅÅ 
s
ÅÅ 
.
ÅÅ 
NombreSucursal
ÅÅ *
==
ÅÅ+ -
dto
ÅÅ. 1
.
ÅÅ1 2
NombreSucursal
ÅÅ2 @
&&
ÅÅA C
s
ÅÅD E
.
ÅÅE F

SucursalID
ÅÅF P
!=
ÅÅQ S
dto
ÅÅT W
.
ÅÅW X

SucursalID
ÅÅX b
)
ÅÅb c
;
ÅÅc d
bool
ÉÉ 
direccionUnica
ÉÉ 
=
ÉÉ  !
!
ÉÉ" #
_unitOfWork
ÉÉ# .
.
ÉÉ. /

Repository
ÉÉ/ 9
<
ÉÉ9 :
Sucursal
ÉÉ: B
>
ÉÉB C
(
ÉÉC D
)
ÉÉD E
.
ÑÑ 
AsQueryable
ÑÑ 
(
ÑÑ 
)
ÑÑ 
.
ÖÖ 
Any
ÖÖ 
(
ÖÖ 
s
ÖÖ 
=>
ÖÖ 
s
ÖÖ 
.
ÖÖ 
	Direccion
ÖÖ %
==
ÖÖ& (
dto
ÖÖ) ,
.
ÖÖ, -
	Direccion
ÖÖ- 6
&&
ÖÖ7 9
s
ÖÖ: ;
.
ÖÖ; <

SucursalID
ÖÖ< F
!=
ÖÖG I
dto
ÖÖJ M
.
ÖÖM N

SucursalID
ÖÖN X
)
ÖÖX Y
;
ÖÖY Z
return
áá '
SucursalDomainRequirement
áá ,
.
áá, -
Fill
áá- 1
(
áá1 2
proveedorExiste
áá2 A
,
ááA B
contratoExiste
ááC Q
,
ááQ R
nombreUnico
ááS ^
,
áá^ _
direccionUnica
áá` n
)
áán o
;
ááo p
}
àà 	
private
ää 
	Respuesta
ää 
<
ää 
Sucursal
ää "
>
ää" #'
ValidarExistenciaSucursal
ää$ =
(
ää= >
int
ää> A

sucursalId
ääB L
)
ääL M
{
ãã 	
Sucursal
åå 
?
åå 
sucursal
åå 
=
åå  
_unitOfWork
åå! ,
.
åå, -

Repository
åå- 7
<
åå7 8
Sucursal
åå8 @
>
åå@ A
(
ååA B
)
ååB C
.
çç 
AsQueryable
çç 
(
çç 
)
çç 
.
éé 
FirstOrDefault
éé 
(
éé  
s
éé  !
=>
éé" $
s
éé% &
.
éé& '

SucursalID
éé' 1
==
éé2 4

sucursalId
éé5 ?
)
éé? @
;
éé@ A
if
êê 
(
êê 
sucursal
êê 
==
êê 
null
êê  
)
êê  !
{
ëë 
return
íí 
	Respuesta
íí  
.
íí  !
Fault
íí! &
<
íí& '
Sucursal
íí' /
>
íí/ 0
(
íí0 1
Fallo
ìì 
.
ìì "
RegistroNoEncontrado
ìì .
,
ìì. /
(
îî 
(
îî 
int
îî 
)
îî 
EnumMensajesError
îî +
.
îî+ ,
NotFound
îî, 4
)
îî4 5
.
îî5 6
ToString
îî6 >
(
îî> ?
)
îî? @
)
ïï 
;
ïï 
}
ññ 
return
òò 
	Respuesta
òò 
.
òò 
Success
òò $
(
òò$ %
sucursal
ôô 
,
ôô 
Exito
öö 
.
öö 
OperacionExitosa
öö &
,
öö& '
(
õõ 
(
õõ 
int
õõ 
)
õõ 
EnumMensajesError
õõ '
.
õõ' (
Succes
õõ( .
)
õõ. /
.
õõ/ 0
ToString
õõ0 8
(
õõ8 9
)
õõ9 :
)
úú 
;
úú 
}
ùù 	
private
üü 
	Respuesta
üü 
<
üü 
Sucursal
üü "
>
üü" #*
ValidarSucursalParaInactivar
üü$ @
(
üü@ A
int
üüA D

sucursalId
üüE O
)
üüO P
{
†† 	
Sucursal
°° 
?
°° 
sucursal
°° 
=
°°  
_unitOfWork
°°! ,
.
°°, -

Repository
°°- 7
<
°°7 8
Sucursal
°°8 @
>
°°@ A
(
°°A B
)
°°B C
.
¢¢ 
AsQueryable
¢¢ 
(
¢¢ 
)
¢¢ 
.
££ 
FirstOrDefault
££ 
(
££  
s
££  !
=>
££" $
s
££% &
.
££& '

SucursalID
££' 1
==
££2 4

sucursalId
££5 ?
)
££? @
;
££@ A
if
•• 
(
•• 
sucursal
•• 
==
•• 
null
••  
)
••  !
{
¶¶ 
return
ßß 
	Respuesta
ßß  
.
ßß  !
Fault
ßß! &
<
ßß& '
Sucursal
ßß' /
>
ßß/ 0
(
ßß0 1
Fallo
®® 
.
®® "
RegistroNoEncontrado
®® .
,
®®. /
(
©© 
(
©© 
int
©© 
)
©© 
EnumMensajesError
©© +
.
©©+ ,
NotFound
©©, 4
)
©©4 5
.
©©5 6
ToString
©©6 >
(
©©> ?
)
©©? @
)
™™ 
;
™™ 
}
´´ 
if
≠≠ 
(
≠≠ 
!
≠≠ 
sucursal
≠≠ 
.
≠≠ 
Activo
≠≠  
)
≠≠  !
{
ÆÆ 
return
ØØ 
	Respuesta
ØØ  
.
ØØ  !
Fault
ØØ! &
<
ØØ& '
Sucursal
ØØ' /
>
ØØ/ 0
(
ØØ0 1
Fallo
∞∞ 
.
∞∞  
RegistroYaInactivo
∞∞ ,
,
∞∞, -
(
±± 
(
±± 
int
±± 
)
±± 
EnumMensajesError
±± +
.
±±+ ,

BadRequest
±±, 6
)
±±6 7
.
±±7 8
ToString
±±8 @
(
±±@ A
)
±±A B
)
≤≤ 
;
≤≤ 
}
≥≥ 
return
µµ 
	Respuesta
µµ 
.
µµ 
Success
µµ $
(
µµ$ %
sucursal
∂∂ 
,
∂∂ 
Exito
∑∑ 
.
∑∑ 
OperacionExitosa
∑∑ &
,
∑∑& '
(
∏∏ 
(
∏∏ 
int
∏∏ 
)
∏∏ 
EnumMensajesError
∏∏ '
.
∏∏' (
Succes
∏∏( .
)
∏∏. /
.
∏∏/ 0
ToString
∏∏0 8
(
∏∏8 9
)
∏∏9 :
)
ππ 
;
ππ 
}
∫∫ 	
}
ºº 
}ΩΩ 