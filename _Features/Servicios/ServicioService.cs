using Academia.WebRentas.WebApi.Infrastructure.BDRentas;
using Academia.WebRentas.WebApi.Infrastructure.BDRentas.Entities;
using Farsiman.Exceptions;
using Microsoft.EntityFrameworkCore;
using System.Diagnostics.CodeAnalysis;

namespace Academia.WebRentas.WebApi._Features.Servicios
{
    [ExcludeFromCodeCoverage]
    public class ServicioService
    {
        private readonly BDRentasContext _bdRenta;

        public ServicioService(BDRentasContext bdRenta)
        {
            _bdRenta = bdRenta;
        }
        public List<Servicio> ObtenerServicios()
        {
            try
            {
                List<Servicio> servicios = _bdRenta.Servicios.AsQueryable().AsNoTracking().ToList();
                return servicios;
            }
            catch (Exception ex)
            {

                throw new FsDataTransferObjectNullException("Error al mostrar la lista. " + ex.Message);
            }
        }
    }
}
