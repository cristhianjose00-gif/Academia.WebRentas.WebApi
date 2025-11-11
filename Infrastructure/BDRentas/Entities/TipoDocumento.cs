namespace Academia.WebRentas.WebApi.Infrastructure.BDRentas.Entities
{
    public class TipoDocumento
    {
        public int TipoDocumentoID { get; set; }

        public string NombreDocumento { get; set; } = null!;

        public string? Descripcion { get; set; }

        public bool Activo { get; set; }

        public string AgenteAgrega { get; set; } = null!;

        public DateTime FechaAgrega { get; set; }

        public string? AgenteModifica { get; set; }

        public DateTime? FechaModifica { get; set; }

        public virtual ICollection<Documento> Documentos { get; set; } = new List<Documento>();

    }
}

