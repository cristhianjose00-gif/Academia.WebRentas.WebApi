using Academia.WebRentas.WebApi.Infrastructure.BDRentas.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Academia.WebRentas.WebApi.Infrastructure.BDRentas.Maps
{
    public class MonedaMap : IEntityTypeConfiguration<Moneda>
    {

        public void Configure(EntityTypeBuilder<Moneda> builder)
        {
            builder.ToTable("Monedas");
            builder.HasKey(x =>x.MonedaID);
            builder.Property(x => x.MonedaID).HasColumnName("MonedaID");
            builder.Property(x => x.NombreMoneda).HasColumnName("NombreMoneda");
            builder.Property(x => x.Simbolo).HasColumnName("Simbolo");
            builder.Property(x => x.Codigo).HasColumnName("Codigo");
            builder.Property(x => x.Activo).HasColumnName("Activo");
            builder.Property(x => x.TasaDeCambioID).HasColumnName("TasaDeCambioID");
            builder.Property(x => x.UsuarioAgrega).HasColumnName("UsuarioAgrega");
            builder.Property(x => x.FechaAgrega).HasColumnName("FechaAgrega");
            builder.Property(x => x.UsuarioModifica).HasColumnName("UsuarioModifica");
            builder.Property(x => x.FechaModifica).HasColumnName("FechaModifica");

            builder.HasOne(x => x.TasaDeCambio).WithMany(x=>x.Moneda).HasForeignKey(x => x.TasaDeCambioID).OnDelete(DeleteBehavior.Restrict);
        }
    }
}
