using Academia.WebRentas.WebApi.Infrastructure.BDRentas;
using Academia.WebRentas.WebApi.Infrastructure.BDRentas.Entities;
using Farsiman.Exceptions;
using Microsoft.AspNetCore.Identity.Data;
using Microsoft.CodeAnalysis.CSharp.Syntax;
using Microsoft.EntityFrameworkCore;
using Microsoft.Identity.Client;

namespace Academia.WebRentas.WebApi._Common
{
    public class CommonService
    {
        private readonly BDRentasContext _bdRenta;

        public CommonService(BDRentasContext bdRenta)
        {
            _bdRenta = bdRenta;
        }

        public List<Moneda> ObtenerMonedas()
        {
            try
            {
                List<Moneda> monedas = _bdRenta.Monedas.AsQueryable().AsNoTracking().ToList();
                return monedas;
            }
            catch (Exception ex)
            {

                throw new FsDataTransferObjectNullException("Error al mostrar la lista. " + ex.Message);
            }
        }

        public List<Colaborador> ObtenerColaboradores()
        {
            try
            {
                List<Colaborador> colaboradores = _bdRenta.Colaboradores.AsQueryable().AsNoTracking().ToList();
                return colaboradores;
            }
            catch (Exception ex)
            {
                throw new FsDataTransferObjectNullException("Error al mostrar la lista. " + ex.Message);
            }
        }
        public List<TasaDeCambio> ObtenerTasasDeCambio()
        {
            try
            {
                List<TasaDeCambio> tasasDeCambio = _bdRenta.TasasDeCambio.AsQueryable().AsNoTracking().ToList();
                return tasasDeCambio;
            }
            catch (Exception ex)
            {
                throw new FsDataTransferObjectNullException("Error al mostrar la lista. " + ex.Message);
            }


        }
        public List<Documento> ObtenerDocumento()
        {
            try
            {
                List<Documento> documentos = _bdRenta.Documentos.AsQueryable().AsNoTracking().ToList();
                return documentos;
            }
            catch (Exception ex)
            {
                throw new FsDataTransferObjectNullException("Error al mostrar la lista. " + ex.Message);
            }

        }

    }
}
