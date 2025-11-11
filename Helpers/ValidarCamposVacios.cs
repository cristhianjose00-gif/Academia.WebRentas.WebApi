using Farsiman.Application.Core.Standard.DTOs;
using System.Reflection;
using System.Text.Json.Serialization;

namespace Academia.WebRentas.WebApi.Helpers
{
    public static class DomainHelpers
    {
        public static Respuesta<T> ValidarCamposNulosVacios<T>(T dto) where T : class, new()
        {
            if (dto == null)
            {
                return Respuesta<T>.Fault("El objeto DTO es nulo", "", null);

            }

            var errorMessages = ValidarPropiedades(dto);
            return errorMessages.Count > 0
                ? Respuesta<T>.Fault(string.Join("; ", errorMessages), "400", dto)
                : Respuesta<T>.Success(dto, "Validación exitosa", "200");
        }

        private static List<string> ValidarPropiedades<T>(T dto) where T : class
        {
            var properties = typeof(T).GetProperties();
            var errorMessages = new List<string>();

            foreach (var property in properties)
            {
                if (Attribute.IsDefined(property, typeof(JsonIgnoreAttribute)))
                    continue;

                var value = property.GetValue(dto);
                errorMessages.AddRange(ValidarPropiedad(property, value ?? ""));
            }

            return errorMessages;
        }

        private static string[] ValidarPropiedad(PropertyInfo property, object value)
        {
            if (value == null)
            {
                return new[] { $"El campo '{property.Name}' no puede ser nulo" };
            }

            bool isString = property.PropertyType == typeof(string);
            if (isString && string.IsNullOrWhiteSpace(value as string))
            {
                return new[] { $"El campo '{property.Name}' no puede estar vacío" };
            }

            bool isCollection = typeof(System.Collections.IEnumerable).IsAssignableFrom(property.PropertyType) && !isString;
            if (isCollection && EsColeccionVacia(value))
            {
                return new[] { $"El campo '{property.Name}' no puede estar vacío" };
            }

            return Array.Empty<string>();
        }

        private static bool EsColeccionVacia(object value)
        {
            var collection = value as System.Collections.IEnumerable;
            return collection != null && !collection.GetEnumerator().MoveNext();
        }

        public static Respuesta<T> ValidadObtenerDatosNulos<T>(T dto)
        {
            return Respuesta<T>.Fault(dto == null ? "Datos nulos" : "Datos no nulos", "404", dto);

        }

    }
}
