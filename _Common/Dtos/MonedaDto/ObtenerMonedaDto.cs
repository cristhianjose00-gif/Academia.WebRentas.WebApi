namespace Academia.WebRentas.WebApi._Common.Dtos.MonedaDto
{
    public class ObtenerMonedaDto
    {
        public int MonedaID { get; set; }

        public string NombreMoneda { get; set; } = null!;

        public string Simbolo { get; set; } = null!;

        public string Codigo { get; set; } = null!;

        public int TasaDeCambioID { get; set; }
    }
}
