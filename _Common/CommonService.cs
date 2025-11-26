using Academia.WebRentas.WebApi._Common.Dtos.MonedaDto;
using Academia.WebRentas.WebApi.Infrastructure;
using Academia.WebRentas.WebApi.Infrastructure.BDRentas;
using Academia.WebRentas.WebApi.Infrastructure.BDRentas.Entities;
using AutoMapper;
using Farsiman.Application.Core.Standard.DTOs;
using Farsiman.Domain.Core.Standard.Repositories;
using Farsiman.Exceptions;
using Microsoft.EntityFrameworkCore;
using System.Diagnostics.CodeAnalysis;
using static Academia.WebRentas.WebApi._Common.Mensajes;

namespace Academia.WebRentas.WebApi._Common
{
    [ExcludeFromCodeCoverage]
    public class CommonService
    {
        private readonly IUnitOfWork _unitOfWork;
        private readonly IMapper _mapper;

        public CommonService(UnitOfWorkBuilder unitOfWorkBuilder, IMapper mapper)
        {
            _unitOfWork = unitOfWorkBuilder.BuilderRentas();
            _mapper = mapper;
        }

        public Respuesta<List<ObtenerMonedaDto>> ObtenerMonedas()
        {
            try
            {
                List<Moneda> monedas = _unitOfWork.Repository<Moneda>()
                    .AsQueryable()
                    .Include(x => x.TasaDeCambio)
                    .Where(x => x.Activo) 
                    .OrderBy(x => x.MonedaID)
                    .AsNoTracking()
                    .ToList();

                List<ObtenerMonedaDto> monedaDtos =
                    _mapper.Map<List<ObtenerMonedaDto>>(monedas);

                return Respuesta.Success(
                    monedaDtos,
                    Exito.OperacionExitosa,
                    ((int)EnumMensajesError.Succes).ToString()
                );
            }
            catch (Exception)
            {
                return Respuesta.Fault<List<ObtenerMonedaDto>>(
                    Fallo.OperacionFallida,
                    ((int)EnumMensajesError.InternarServerError).ToString()
                );
            }
        }


        //public List<Colaborador> ObtenerColaboradores()
        //{
        //    try
        //    {
        //        List<Colaborador> colaboradores = _bdRenta.Colaboradores.AsQueryable().AsNoTracking().ToList();
        //        return colaboradores;
        //    }
        //    catch (Exception ex)
        //    {
        //        throw new FsDataTransferObjectNullException("Error al mostrar la lista. " + ex.Message);
        //    }
        //}
        //public List<TasaDeCambio> ObtenerTasasDeCambio()
        //{
        //    try
        //    {
        //        List<TasaDeCambio> tasasDeCambio = _bdRenta.TasasDeCambio.AsQueryable().AsNoTracking().ToList();
        //        return tasasDeCambio;
        //    }
        //    catch (Exception ex)
        //    {
        //        throw new FsDataTransferObjectNullException("Error al mostrar la lista. " + ex.Message);
        //    }


        //}
        //public List<Documento> ObtenerDocumento()
        //{
        //    try
        //    {
        //        List<Documento> documentos = _bdRenta.Documentos.AsQueryable().AsNoTracking().ToList();
        //        return documentos;
        //    }
        //    catch (Exception ex)
        //    {
        //        throw new FsDataTransferObjectNullException("Error al mostrar la lista. " + ex.Message);
        //    }

        //}

    }
}
