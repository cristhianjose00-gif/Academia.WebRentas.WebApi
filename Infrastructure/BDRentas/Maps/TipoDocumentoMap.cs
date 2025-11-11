using Academia.WebRentas.WebApi.Infrastructure.BDRentas.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Academia.WebRentas.WebApi.Infrastructure.BDRentas.Maps
{
    public class TipoDocumentoMap : IEntityTypeConfiguration<TipoDocumento>
    {
        public void Configure(EntityTypeBuilder<TipoDocumento> builder)
        {
            builder.ToTable("TiposDocumentos");
            builder.HasKey(x => x.TipoDocumentoID);
            builder.Property(x => x.NombreDocumento).HasColumnName("NombreDocumento");
            builder.Property(x => x.Descripcion).HasColumnName("Descripcion");
            builder.Property(x => x.Activo).HasColumnName("Activo");
            builder.Property(x => x.AgenteAgrega).HasColumnName("AgenteAgrega");
            builder.Property(x => x.FechaAgrega).HasColumnName("FechaAgrega");
            builder.Property(x => x.AgenteModifica).HasColumnName("AgenteModifica");
            builder.Property(x => x.FechaModifica).HasColumnName("FechaModifica");
        }
    
    }
}
