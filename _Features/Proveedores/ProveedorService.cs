using Academia.WebRentas.WebApi._Common;
using Academia.WebRentas.WebApi._Common.ProveedorDto;
using Academia.WebRentas.WebApi._Common.Service;
using Academia.WebRentas.WebApi.Infrastructure;
using Academia.WebRentas.WebApi.Infrastructure.BDRentas.Entities;
using AutoMapper;
using Farsiman.Application.Core.Standard.DTOs;
using Farsiman.Domain.Core.Standard.Repositories;
using Microsoft.EntityFrameworkCore;
using System.Diagnostics.CodeAnalysis;
using static Academia.WebRentas.WebApi._Common.Mensajes;

namespace Academia.WebRentas.WebApi._Features.Proveedores
{
    [ExcludeFromCodeCoverage]
    public class ProveedorService : IProveedor
    {

        private readonly IUnitOfWork _unitOfWork;
        private readonly IMapper _mapper;

        public ProveedorService(UnitOfWorkBuilder unitOfWorkBuilder, IMapper mapper)
        {
            _unitOfWork = unitOfWorkBuilder.BuilderRentas();
            _mapper = mapper;
        }
        public Respuesta<List<ObtenerProveedorDto>> ObtenerProveedor()
        {
            try
            {

                List<Proveedor> proveedor = _unitOfWork.Repository<Proveedor>()
                .AsQueryable()
                .Include(x => x.Moneda)
                .Where(x => x.Activo)
                .OrderBy(x => x.ProveedorID).AsNoTracking().ToList();


                List<ObtenerProveedorDto> obtenerProveedorDtos =
                    _mapper.Map<List<ObtenerProveedorDto>>(proveedor);


                return Respuesta.Success(
                    obtenerProveedorDtos,
                    Exito.OperacionExitosa,
                    ((int)EnumMensajesError.Succes).ToString()
                );
            }
            catch (Exception)
            {
                return Respuesta.Fault<List<ObtenerProveedorDto>>(Fallo.OperacionFallida, ((int)EnumMensajesError.InternarServerError).ToString());
            }
        }
    }
}
