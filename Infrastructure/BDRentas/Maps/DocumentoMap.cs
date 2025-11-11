using Academia.WebRentas.WebApi.Infrastructure.BDRentas.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Academia.WebRentas.WebApi.Infrastructure.BDRentas.Maps
{
    public class DocumentoMap : IEntityTypeConfiguration<Documento>
    {
        public void Configure(EntityTypeBuilder<Documento> builder)
        {
            builder.ToTable("Documentos");
            builder.HasKey(x => x.DocumentoID);
            builder.Property(x => x.ProveedorID).HasColumnName("ProveedorID");
            builder.Property(x => x.ContratoID).HasColumnName("ContratoID");
            builder.Property(x => x.TipoDocumentoID).HasColumnName("TipoDocumentoID");
            builder.Property(x => x.IncluyeISV).HasColumnName("IncluyeISV");
            builder.Property(x => x.MonedaID).HasColumnName("MonedaID");
            builder.Property(x => x.MontoTotal).HasColumnName("MontoTotal");
            builder.Property(x => x.UsuarioAgrega).HasColumnName("UsuarioAgrega");
            builder.Property(x => x.FechaAgrega).HasColumnName("FechaAgrega");
        }
    }
}
