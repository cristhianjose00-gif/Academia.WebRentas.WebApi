using Academia.WebRentas.WebApi.Infrastructure.BDRentas;
using Academia.WebRentas.WebApi.Infrastructure.BDRentas.Entities;
using Farsiman.Exceptions;
using Microsoft.EntityFrameworkCore;
using System.Diagnostics.CodeAnalysis;

namespace Academia.WebRentas.WebApi._Features.Proveedores
{
    [ExcludeFromCodeCoverage]
    public class ProveedorService
    {
        

        private readonly BDRentasContext _bdRenta;

        public ProveedorService(BDRentasContext bdRenta)
        {
            _bdRenta = bdRenta;
        }
        public List<Proveedor> ObtenerProveedores()
        {
            try
            {
                List<Proveedor> proveedores = _bdRenta.Proveedores.AsQueryable().AsNoTracking().ToList();
                return proveedores;
            }
            catch (Exception ex)
            {

                throw new FsDataTransferObjectNullException("Error al mostrar la lista. " + ex.Message);
            }
        }
    }

}
