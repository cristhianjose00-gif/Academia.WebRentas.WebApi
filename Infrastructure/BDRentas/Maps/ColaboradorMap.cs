using Academia.WebRentas.WebApi.Infrastructure.BDRentas.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Academia.WebRentas.WebApi.Infrastructure.BDRentas.Maps
{
    public class ColaboradorMap : IEntityTypeConfiguration<Colaborador>
    {
        public void Configure(EntityTypeBuilder<Colaborador> builder)
        {
            builder.ToTable("Colaboradores");
            builder.HasKey(x => x.ColaboradorID);
            builder.Property(x => x.ColaboradorID).HasColumnName("ColaboradorID");
            builder.Property(x => x.NombreCompleto).HasColumnName("NombreCompleto");
            builder.Property(x => x.Correo).HasColumnName("Correo");
            builder.Property(x => x.Telefono).HasColumnName("Telefono");
            builder.Property(x => x.Activo).HasColumnName("Activo");
            builder.Property(x => x.FechaCreacion).HasColumnName("FechaCreacion");
            builder.Property(x => x.UsuarioAgrega).HasColumnName("UsuarioAgrega");
            builder.Property(x => x.FechaModificacion).HasColumnName("FechaModificacion");
            builder.Property(x => x.UsuarioModifica).HasColumnName("UsuarioModifica");

        }
    }
}
