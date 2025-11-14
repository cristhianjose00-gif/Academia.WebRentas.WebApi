using Academia.WebRentas.WebApi.Infrastructure.BDRentas;
using Academia.WebRentas.WebApi.Infrastructure.BDRentas.Entities;
using Farsiman.Exceptions;
using Microsoft.EntityFrameworkCore;
using System.Diagnostics.CodeAnalysis;

namespace Academia.WebRentas.WebApi._Features.PagoRentas
{
    [ExcludeFromCodeCoverage]
    public class PagoRentaService
    {

        private readonly BDRentasContext _bdRenta;

        public PagoRentaService(BDRentasContext bdRenta)
        {
            _bdRenta = bdRenta;
        }
        public List<PagoRenta> ObtenerPagosRenta()
        {
            try
            {
                List<PagoRenta> pagoRentas = _bdRenta.PagosRenta.AsQueryable().AsNoTracking().ToList();
                return pagoRentas;
            }
            catch (Exception ex)
            {
                throw new FsDataTransferObjectNullException("Error al mostrar la lista. " + ex.Message);
            }

        }


    }
}

