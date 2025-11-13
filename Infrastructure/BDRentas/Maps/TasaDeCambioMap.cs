using Academia.WebRentas.WebApi.Infrastructure.BDRentas.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System.Diagnostics.CodeAnalysis;

namespace Academia.WebRentas.WebApi.Infrastructure.BDRentas.Maps
{
    [ExcludeFromCodeCoverage]
    public class TasaDeCambioMap : IEntityTypeConfiguration<TasaDeCambio>
    {
        public void Configure(EntityTypeBuilder<TasaDeCambio> builder)
        {
            builder.ToTable("TasasDeCambio");
            builder.HasKey(x => x.TasaID);
            builder.Property(x => x.TasaID).HasColumnName("TasaID");
            builder.Property(x => x.Mes).HasColumnName("Mes");
            builder.Property(x => x.Anio).HasColumnName("Anio");
            builder.Property(x => x.TasaCompra).HasColumnName("TasaCompra");
            builder.Property(x => x.TasaVenta).HasColumnName("TasaVenta");
            builder.Property(x => x.Activo).HasColumnName("Activo");
            builder.Property(x => x.UsuarioAgrega).HasColumnName("UsuarioAgrega");
            builder.Property(x => x.FechaAgrega).HasColumnName("FechaAgrega");
            builder.Property(x => x.UsuarioModifica).HasColumnName("UsuarioModifica");
            builder.Property(x => x.FechaModifica).HasColumnName("FechaModifica");
        }
    }
}
