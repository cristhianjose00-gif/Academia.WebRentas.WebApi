namespace Academia.WebRentas.WebApi._Common.Dtos.ContratoRentaDto
{
    public class InactivarContratoDto
    {
        public int ContratoID { get; set; }
        public string UsuarioModifica { get; set; } = null!;
    }
}
