using Academia.WebRentas.WebApi.Infrastructure.BDRentas.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System.Diagnostics.CodeAnalysis;

namespace Academia.WebRentas.WebApi.Infrastructure.BDRentas.Maps
{
    [ExcludeFromCodeCoverage]
    public class ProveedorMap : IEntityTypeConfiguration<Proveedor>
    {
        public void Configure(EntityTypeBuilder<Proveedor> builder)
        {
            builder.ToTable("Proveedores");
            builder.HasKey(x => x.ProveedorID);
            builder.Property(x => x.NombreDeProveedor).HasColumnName("NombreDeProveedor");
            builder.Property(x => x.RTN).HasColumnName("RTN");
            builder.Property(x => x.Direccion).HasColumnName("Direccion");
            builder.Property(x => x.Telefono).HasColumnName("Telefono");
            builder.Property(x => x.Email).HasColumnName("Email");
            builder.Property(x => x.UsuarioAgrega).HasColumnName("UsuarioAgrega");
            builder.Property(x => x.FechaAgrega).HasColumnName("FechaAgrega");
            builder.Property(x => x.UsuarioModifica).HasColumnName("UsuarioModifica");
            builder.Property(x => x.FechaModifica).HasColumnName("FechaModifica");
            builder.Property(x => x.TipoProveedor).HasColumnName("TipoProveedor");
            builder.Property(x => x.CondicionesPago).HasColumnName("CondicionesPago");
            builder.Property(x => x.MonedaID).HasColumnName("MonedaID");
        }
    }
}
