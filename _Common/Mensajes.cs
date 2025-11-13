using System.Diagnostics.CodeAnalysis;

namespace Academia.WebRentas.WebApi._Common
{
    [ExcludeFromCodeCoverage]
    public static class Mensajes
    {
        public class Exito
        {
            public const string OperacionExitosa = "Operación realizada correctamente";
            public const string Creado = "Se creó correctamente";
            public const string Actualizado = "Se actualizó correctamente";
            public const string Eliminado = "El registro se eliminó correctamente";
            public const string Autenticado = "Autenticación exitosa";
        }

        public class Fallo
        {
            public const string OperacionFallida = "La operación no se pudo completar";
            public const string CreacionFallida = "No se pudo crear el registro";
            public const string ActualizacionFallida = "No se pudo actualizar el registro";
            public const string EliminacionFallida = "No se pudo eliminar el registro";
            public const string AutenticacionFallida = "Error en la autenticación";
            public const string RegistroNoEncontrado = "El registro no existe";
            public const string DatosInvalidos = "Los datos proporcionados no son válidos";
            public const string ErrorInterno = "Ocurrió un error interno en el servidor";
            public const string NumeroContratoRequerido = "El número de contrato es requerido.";
            public const string ExcesoCaracteres = "El número de contrato no debe exceder los 20 caracteres.";
            public const string CampoValido = "Debe seleccionar un @Campo válida.";
            public const string MontoValido = "El monto del contrato debe ser mayor que cero.";
            public const string MontoMensual = "El monto mensual debe ser mayor que cero.";
            public const string MontosErroneos = "El monto mensual no puede ser mayor al monto total del contrato.";
            public const string FechaAntigua = "La fecha de inicio no puede ser anterior al @anio.";
            public const string FechaFutura = "La fecha de final no puede ser mayor al @anio.";
            public const string FechasErroneas = "La fecha fin no puede ser menor a la fecha de inicio.";
            public const string MontoNegativo = "El monto total debe ser mayor que cero.";
            public const string MontosErroneosContrato = "El monto total no puede ser menor que el monto del contrato.";
            public const string CampoRepetido = "El @Campo ya existe";
            public const string CamposRequerridos = "El @Campo es requerido";
            public const string RegistroYaInactivo = "El Registro ya se encuentra eliminado";
            //public const string Hola = "s";


        }

    }
}
