using Academia.WebRentas.WebApi.Infrastructure.BDRentas.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System.Diagnostics.CodeAnalysis;

namespace Academia.WebRentas.WebApi.Infrastructure.BDRentas.Maps
{
    [ExcludeFromCodeCoverage]
    public class ContratoRentaMap : IEntityTypeConfiguration<ContratoRenta>
    {
        public void Configure(EntityTypeBuilder<ContratoRenta> builder)
        {
            builder.ToTable("ContratosRenta");
            builder.HasKey(x => x.ContratoID);
            builder.Property(x => x.ContratoID).HasColumnName("ContratoID");
            builder.Property(x => x.ProveedorID).HasColumnName("ProveedorID");
            builder.Property(x => x.NumeroContrato).HasColumnName("NumeroContrato");
            builder.Property(x => x.MonedaID).HasColumnName("MonedaID");
            builder.Property(x => x.MontoContrato).HasColumnName("MontoContrato");
            builder.Property(x => x.MontoMensual).HasColumnName("MontoMensual");
            builder.Property(x => x.MontoTotal).HasColumnName("MontoTotal");
            builder.Property(x => x.FechaInicio).HasColumnName("FechaInicio");
            builder.Property(x => x.FechaFin).HasColumnName("FechaFin");
            builder.Property(x => x.Activo).HasColumnName("Activo");
            builder.Property(x => x.UsuarioAgrega).HasColumnName("UsuarioAgrega");
            builder.Property(x => x.FechaAgrega).HasColumnName("FechaAgrega");
            builder.Property(x => x.UsuarioModifica).HasColumnName("UsuarioModifica");
            builder.Property(x => x.FechaModifica).HasColumnName("FechaModifica");

            builder.HasOne(x => x.Moneda).WithMany(m => m.ContratosRenta).HasForeignKey(x => x.MonedaID).OnDelete(DeleteBehavior.Restrict);
            builder.HasOne(x => x.Proveedor).WithMany(m => m.ContratosRenta).HasForeignKey(x => x.ProveedorID).OnDelete(DeleteBehavior.Restrict);
        }
    }
}
