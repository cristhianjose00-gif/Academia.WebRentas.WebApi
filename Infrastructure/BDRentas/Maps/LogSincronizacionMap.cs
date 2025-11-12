using EFCoreLab3.Infraestructura;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Academia.WebRentas.WebApi.Infrastructure.BDRentas.Maps
{
    public class LogSincronizacionMap : IEntityTypeConfiguration<LogSincronizacion>
    {
        public void Configure(EntityTypeBuilder<LogSincronizacion> builder)
        {
            builder.ToTable("LogSincronizacion");
            builder.HasKey(x => x.LogID);
            builder.Property(x => x.LogID).HasColumnName("LogID");
            builder.Property(x => x.DocumentoID).HasColumnName("DocumentoID");
            builder.Property(x => x.FechaIntento).HasColumnName("FechaIntento");
            builder.Property(x => x.Estado).HasColumnName("Estado");
            builder.Property(x => x.MensajeError).HasColumnName("MensajeError");
            builder.Property(x => x.UsuarioAgrega).HasColumnName("UsuarioAgrega");
            builder.Property(x => x.FechaAgrega).HasColumnName("FechaCreacion");
        }

    }
}
