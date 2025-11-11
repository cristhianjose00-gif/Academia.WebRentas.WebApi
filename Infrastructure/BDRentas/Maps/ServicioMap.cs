using Academia.WebRentas.WebApi.Infrastructure.BDRentas.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Academia.WebRentas.WebApi.Infrastructure.BDRentas.Maps
{
    public class ServicioMap : IEntityTypeConfiguration<Servicio>
    {
        public void Configure(EntityTypeBuilder<Servicio> builder)
        {
            builder.ToTable("Servicios");
            builder.HasKey(x => x.ServicioID);
            builder.Property(x => x.NombreServicio).HasColumnName("NombreServicio");
            builder.Property(x => x.CuentaContable).HasColumnName("CuentaContable");
            builder.Property(x => x.TipoServicio).HasColumnName("TipoServicio");
            builder.Property(x => x.Descripcion).HasColumnName("Descripcion");
            builder.Property(x => x.Activo).HasColumnName("Activo");
            builder.Property(x => x.UsuarioAgrega).HasColumnName("UsuarioAgrega");
            builder.Property(x => x.FechaAgrega).HasColumnName("FechaAgrega");
            builder.Property(x => x.UsuarioModifica).HasColumnName("UsuarioModifica");
            builder.Property(x => x.FechaModifica).HasColumnName("FechaModifica");
        }
    }
}
