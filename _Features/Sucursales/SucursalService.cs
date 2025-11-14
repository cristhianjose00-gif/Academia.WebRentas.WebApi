using Academia.WebRentas.WebApi._Common;
using Academia.WebRentas.WebApi._Common.DomainRequirement;
using Academia.WebRentas.WebApi._Common.Dtos.SucursalDto;
using Academia.WebRentas.WebApi._Common.Service;
using Academia.WebRentas.WebApi._Features.ContratosRenta;
using Academia.WebRentas.WebApi.Infrastructure;
using Academia.WebRentas.WebApi.Infrastructure.BDRentas.Entities;
using AutoMapper;
using Farsiman.Application.Core.Standard.DTOs;
using Farsiman.Domain.Core.Standard.Repositories;
using FluentValidation.Results;
using Microsoft.EntityFrameworkCore;
using System.Diagnostics.CodeAnalysis;
using static Academia.WebRentas.WebApi._Common.Mensajes;

namespace Academia.WebRentas.WebApi._Features.Sucursales
{
    [ExcludeFromCodeCoverage]
    public class SucursalService : ISucursal
    {
        private readonly IUnitOfWork _unitOfWork;
        private IMapper _mapper;
        private readonly SucursalDomain _sucursalDomain;
        public SucursalService(UnitOfWorkBuilder unitOfWorkBuilder, IMapper mapper)
        {
            _unitOfWork = unitOfWorkBuilder.BuilderRentas();
            _mapper = mapper;
        }
        public Respuesta<List<ObtenerSucursalDTO>> ObtenerSucursales(int pagina, int tamanoPagina)
        {
            try
            {
                int skip = PaginacionHelper.CalcularSkip(pagina, tamanoPagina);

                IQueryable<Sucursal> query = ConstruirQuerySucursales()
                    .Skip(skip)
                    .Take(tamanoPagina);

                List<Sucursal> sucursales = query.ToList();

                List<ObtenerSucursalDTO> sucursalesDto =
                    _mapper.Map<List<ObtenerSucursalDTO>>(sucursales);

                return Respuesta.Success(
                    sucursalesDto,
                    Exito.OperacionExitosa,
                    EnumMensajesError.Succes.ToString()
                );
            }
            catch (Exception)
            {
                return Respuesta.Fault<List<ObtenerSucursalDTO>>(
                    Fallo.OperacionFallida,
                    EnumMensajesError.InternarServerError.ToString()
                );
            }
        }

        public Respuesta<InsertarSucursalDto> InsertarSucursal(InsertarSucursalDto insertarSucursalDto)
        {
            try
            {
                Sucursal sucursal = _mapper.Map<Sucursal>(insertarSucursalDto);

                SucursalDomainRequirement requirements = CrearRequisitosSucursal(insertarSucursalDto);

                Respuesta<Sucursal> validacion = _sucursalDomain.ValidarSucursal(sucursal, requirements);

                if (!validacion.Ok)
                {
                    return Respuesta.Fault<InsertarSucursalDto>(
                        validacion.Mensaje,
                        ((int)EnumMensajesError.BadRequest).ToString()
                    );
                }

                _unitOfWork.Repository<Sucursal>().Add(sucursal);

                if (!_unitOfWork.SaveChanges())
                {
                    return Respuesta.Fault<InsertarSucursalDto>(
                        Fallo.CreacionFallida,
                        ((int)EnumMensajesError.InternarServerError).ToString()
                    );
                }

                return Respuesta.Success(
                    insertarSucursalDto,
                    Exito.Creado,
                    ((int)EnumMensajesError.Succes).ToString()
                );
            }
            catch (Exception)
            {
                return Respuesta.Fault<InsertarSucursalDto>(
                    Fallo.CreacionFallida,
                    ((int)EnumMensajesError.InternarServerError).ToString()
                );
            }
        }


        public Respuesta<ActualizarSucursalDto> ActualizarSucursal(ActualizarSucursalDto actualizarSucursalDto)
        {
            try
            {
                Respuesta<Sucursal> validacion = ValidarExistenciaSucursal(actualizarSucursalDto.SucursalID);

                if (!validacion.Ok)
                {
                    return Respuesta.Fault<ActualizarSucursalDto>(
                        validacion.Mensaje,
                        ((int)EnumMensajesError.NotFound).ToString()
                    );
                }


                Sucursal sucursal = validacion.Data!;
                _mapper.Map(actualizarSucursalDto, sucursal);

                SucursalDomainRequirement requirements = CrearRequisitosSucursalActualizar(actualizarSucursalDto);

                Respuesta<Sucursal> validacionDominio = _sucursalDomain.ValidarSucursal(sucursal, requirements);

                if (!validacionDominio.Ok)
                {
                    return Respuesta.Fault<ActualizarSucursalDto>(
                        validacionDominio.Mensaje,
                        ((int)EnumMensajesError.BadRequest).ToString()
                    );
                }

                bool guardado = _unitOfWork.SaveChanges();
                if (!guardado)
                {
                    return Respuesta.Fault<ActualizarSucursalDto>(
                        Fallo.ActualizacionFallida,
                        ((int)EnumMensajesError.InternarServerError).ToString()
                    );
                }

                return Respuesta.Success(
                    actualizarSucursalDto,
                    Exito.OperacionExitosa,
                    ((int)EnumMensajesError.Succes).ToString()
                );
            }
            catch (Exception)
            {
                return Respuesta.Fault<ActualizarSucursalDto>(
                    Fallo.ActualizacionFallida,
                    ((int)EnumMensajesError.InternarServerError).ToString()
                );
            }
        }


        public Respuesta<DesactivarSucursalDto> InactivarSucursal(DesactivarSucursalDto inactivarSucursalDto)
        {
            try
            {
                Respuesta<Sucursal> validacion = ValidarSucursalParaInactivar(inactivarSucursalDto.SucursalID);

                if (!validacion.Ok)
                {
                    return Respuesta.Fault<DesactivarSucursalDto>(
                        validacion.Mensaje,
                        ((int)EnumMensajesError.BadRequest).ToString()
                    );
                }

                Sucursal sucursal = validacion.Data!;
                sucursal.Activo = false;

                if (!_unitOfWork.SaveChanges())
                {
                    return Respuesta.Fault<DesactivarSucursalDto>(
                        Fallo.OperacionFallida,
                        ((int)EnumMensajesError.InternarServerError).ToString()
                    );
                }

                return Respuesta.Success(
                    inactivarSucursalDto,
                    Exito.Eliminado,
                    ((int)EnumMensajesError.Succes).ToString()
                );
            }
            catch (Exception)
            {
                return Respuesta.Fault<DesactivarSucursalDto>(
                    Fallo.OperacionFallida,
                    ((int)EnumMensajesError.InternarServerError).ToString()
                );
            }
        }


        private IQueryable<Sucursal> ConstruirQuerySucursales()
        {
            return _unitOfWork.Repository<Sucursal>()
                .AsQueryable()
                .Include(x => x.Proveedor)
                .Include(x => x.Contrato)
                .Where(x => x.Activo)
                .OrderBy(x => x.SucursalID);
        }
        private SucursalDomainRequirement CrearRequisitosSucursal(InsertarSucursalDto dto)
        {
            bool proveedorExiste = _unitOfWork.Repository<Proveedor>()
                .AsQueryable()
                .Any(x => x.ProveedorID == dto.ProveedorID);

            bool contratoExiste = _unitOfWork.Repository<ContratoRenta>()
                .AsQueryable()
                .Any(x => x.ContratoID == dto.ContratoID);

            bool nombreUnico = !_unitOfWork.Repository<Sucursal>()
                .AsQueryable()
                .Any(x => x.NombreSucursal == dto.NombreSucursal);

            bool direccionUnica = !_unitOfWork.Repository<Sucursal>()
                .AsQueryable()
                .Any(x => x.Direccion == dto.Direccion);

            return SucursalDomainRequirement.Fill(
                proveedorExiste,
                contratoExiste,
                nombreUnico,
                direccionUnica
            );
        }

        private SucursalDomainRequirement CrearRequisitosSucursalActualizar(ActualizarSucursalDto dto)
        {
            bool proveedorExiste = _unitOfWork.Repository<Proveedor>()
                .AsQueryable()
                .Any(p => p.ProveedorID == dto.ProveedorID);

            bool contratoExiste = _unitOfWork.Repository<ContratoRenta>()
                .AsQueryable()
                .Any(c => c.ContratoID == dto.ContratoID);

            bool nombreUnico = !_unitOfWork.Repository<Sucursal>()
                .AsQueryable()
                .Any(s => s.NombreSucursal == dto.NombreSucursal && s.SucursalID != dto.SucursalID);

            bool direccionUnica = !_unitOfWork.Repository<Sucursal>()
                .AsQueryable()
                .Any(s => s.Direccion == dto.Direccion && s.SucursalID != dto.SucursalID);

            return SucursalDomainRequirement.Fill(proveedorExiste, contratoExiste, nombreUnico, direccionUnica);
        }

        private Respuesta<Sucursal> ValidarExistenciaSucursal(int sucursalId)
        {
            Sucursal? sucursal = _unitOfWork.Repository<Sucursal>()
                .AsQueryable()
                .FirstOrDefault(s => s.SucursalID == sucursalId);

            if (sucursal == null)
            {
                return Respuesta.Fault<Sucursal>(
                    Fallo.RegistroNoEncontrado,
                    ((int)EnumMensajesError.NotFound).ToString()
                );
            }

            return Respuesta.Success(
                sucursal,
                Exito.OperacionExitosa,
                ((int)EnumMensajesError.Succes).ToString()
            );
        }

        private Respuesta<Sucursal> ValidarSucursalParaInactivar(int sucursalId)
        {
            Sucursal? sucursal = _unitOfWork.Repository<Sucursal>()
                .AsQueryable()
                .FirstOrDefault(s => s.SucursalID == sucursalId);

            if (sucursal == null)
            {
                return Respuesta.Fault<Sucursal>(
                    Fallo.RegistroNoEncontrado,
                    ((int)EnumMensajesError.NotFound).ToString()
                );
            }

            if (!sucursal.Activo)
            {
                return Respuesta.Fault<Sucursal>(
                    Fallo.RegistroYaInactivo,
                    ((int)EnumMensajesError.BadRequest).ToString()
                );
            }

            return Respuesta.Success(
                sucursal,
                Exito.OperacionExitosa,
                ((int)EnumMensajesError.Succes).ToString()
            );
        }

    }
}
