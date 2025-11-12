using Academia.WebRentas.WebApi.Infrastructure.BDRentas.Entities;
using Academia.WebRentas.WebApi.Infrastructure.BDRentas.Maps;
using EFCoreLab3.Infraestructura;
using Microsoft.EntityFrameworkCore;

namespace Academia.WebRentas.WebApi.Infrastructure.BDRentas
{
    public class BDRentasContext : DbContext
    {
        public BDRentasContext(DbContextOptions<BDRentasContext> options) : base(options)
        {

        }

        public DbSet<Moneda> Monedas => Set<Moneda>();
        public DbSet<Proveedor> Proveedores => Set<Proveedor>();
        public DbSet<Colaborador> Colaboradores => Set<Colaborador>();
        public DbSet<TasaDeCambio> TasasDeCambio => Set<TasaDeCambio>();
        public DbSet<Servicio> Servicios => Set<Servicio>();
        public DbSet<PagoRenta> PagosRenta => Set<PagoRenta>();
        public DbSet<TipoDocumento> TiposDocumento => Set<TipoDocumento>();
        public DbSet<Documento> Documentos => Set<Documento>();
        public DbSet<Sucursal> Sucursales => Set<Sucursal>();
        public DbSet<LogSincronizacion> ContratosRenta => Set<LogSincronizacion>();


        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.ApplyConfiguration(new MonedaMap());
            modelBuilder.ApplyConfiguration(new ProveedorMap());
            modelBuilder.ApplyConfiguration(new ColaboradorMap());
            modelBuilder.ApplyConfiguration(new TasaDeCambioMap());
            modelBuilder.ApplyConfiguration(new ContratoRentaMap());
            modelBuilder.ApplyConfiguration(new ServicioMap());
            modelBuilder.ApplyConfiguration(new PagoRentaMap());
            modelBuilder.ApplyConfiguration(new TipoDocumentoMap());
            modelBuilder.ApplyConfiguration(new DocumentoMap());
            modelBuilder.ApplyConfiguration(new SucursalMap());
            modelBuilder.ApplyConfiguration(new LogSincronizacionMap());
        }


    }
}
