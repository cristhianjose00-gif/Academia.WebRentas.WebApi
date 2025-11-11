using Academia.WebRentas.WebApi.Infrastructure.BDRentas.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Academia.WebRentas.WebApi.Infrastructure.BDRentas.Maps
{
    public class PagoRentaMap : IEntityTypeConfiguration<PagoRenta>
    {
        public void Configure(EntityTypeBuilder<PagoRenta> builder)
        {
            builder.ToTable("PagosRenta");
            builder.HasKey(x => x.PagoID);
            builder.Property(x => x.ContratoID).HasColumnName("ContratoID");
            builder.Property(x => x.PeriodoDesde).HasColumnName("PeriodoDesde");
            builder.Property(x => x.PeriodoHasta).HasColumnName("PeriodoHasta");
            builder.Property(x => x.Monto).HasColumnName("Monto");
            builder.Property(x => x.MonedaID).HasColumnName("MonedaID");
            builder.Property(x => x.IncluyeISV).HasColumnName("IncluyeISV");
            builder.Property(x => x.ServicioID).HasColumnName("ServicioID");
            builder.Property(x => x.EstadoDePago).HasColumnName("EstadoDePago");
            builder.Property(x => x.Observaciones).HasColumnName("Observaciones");
            builder.Property(x => x.UsuarioAgrega).HasColumnName("UsuarioAgrega");
            builder.Property(x => x.FechaAgrega).HasColumnName("FechaAgrega");
            builder.Property(x => x.UsuarioModifica).HasColumnName("UsuarioModifica");
            builder.Property(x => x.FechaModifica).HasColumnName("FechaModifica");
        }
    }
}
