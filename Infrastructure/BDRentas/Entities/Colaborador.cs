namespace Academia.WebRentas.WebApi.Infrastructure.BDRentas.Entities
{
    public class Colaborador
    {
        public int ColaboradorID { get; set; }
        public string NombreCompleto { get; set; }
        public string Correo { get; set; }
        public string Telefono { get; set; }
        public bool Activo { get; set; }
        public DateTime FechaCreacion { get; set; }
        public string UsuarioAgrega { get; set; }
        public DateTime? FechaModificacion { get; set; }
        public string? UsuarioModifica { get; set; }

        public Colaborador()
        {
            NombreCompleto = string.Empty;
            Correo = string.Empty;
            Telefono = string.Empty;
            UsuarioAgrega = string.Empty;
        }
    }
}
