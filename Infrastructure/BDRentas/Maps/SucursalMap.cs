using Academia.WebRentas.WebApi.Infrastructure.BDRentas.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Academia.WebRentas.WebApi.Infrastructure.BDRentas.Maps
{
    public class SucursalMap : IEntityTypeConfiguration<Sucursal>
    {
        public void Configure(EntityTypeBuilder<Sucursal> builder)
        {
            builder.ToTable("Sucursale");
            builder.HasKey(x => x.SucursalID);
            builder.Property(x => x.NombreSucursal).HasColumnName("NombreSucursal");
            builder.Property(x => x.Direccion).HasColumnName("Direccion");
            builder.Property(x => x.ProveedorID).HasColumnName("ProveedorID");
            builder.Property(x => x.ContratoID).HasColumnName("ContratoID");
            builder.Property(x => x.Activo).HasColumnName("Activo");
            builder.Property(x => x.UsuarioAgrega).HasColumnName("UsuarioAgrega");
            builder.Property(x => x.FechaAgrega).HasColumnName("FechaAgrega");
            builder.Property(x => x.UsuarioModifica).HasColumnName("UsuarioModifica");
            builder.Property(x => x.FechaModifica).HasColumnName("FechaModifica");

            builder.HasOne(x => x.Proveedor).WithMany(m => m.Sucursales).HasForeignKey(x => x.ProveedorID).OnDelete(DeleteBehavior.Restrict);
            builder.HasOne(x => x.Contrato).WithMany(m => m.Sucursales).HasForeignKey(x => x.ContratoID).OnDelete(DeleteBehavior.Restrict);
        }
    }
    
    
}
