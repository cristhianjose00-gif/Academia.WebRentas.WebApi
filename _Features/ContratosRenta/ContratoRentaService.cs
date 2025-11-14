using Academia.WebRentas.WebApi._Common;
using Academia.WebRentas.WebApi._Common.DomainRequirement;
using Academia.WebRentas.WebApi._Common.Dtos.ContratoRentaDto;
using Academia.WebRentas.WebApi._Common.Dtos.SucursalDto;
using Academia.WebRentas.WebApi._Common.Service;
using Academia.WebRentas.WebApi.Infrastructure;
using Academia.WebRentas.WebApi.Infrastructure.BDRentas.Entities;
using AutoMapper;
using Farsiman.Application.Core.Standard.DTOs;
using Farsiman.Domain.Core.Standard.Repositories;
using Microsoft.EntityFrameworkCore;
using static Academia.WebRentas.WebApi._Common.Mensajes;

namespace Academia.WebRentas.WebApi._Features.ContratosRenta
{
    public class ContratoRentaService : IContratoRenta
    {
        private readonly IUnitOfWork _unitOfWork;
        private readonly IMapper _mapper;
        private readonly ContratoRentaDomain _rentaDomain;
        public ContratoRentaService(UnitOfWorkBuilder unitOfWorkBuilder, IMapper mapper, ContratoRentaDomain contratoRentaDomain)
        {
            _unitOfWork = unitOfWorkBuilder.BuilderRentas();
            _mapper = mapper;
            _rentaDomain = contratoRentaDomain;
        }
        public Respuesta<List<ObtenerSucursalDTO>> ObtenerSucursales(int pagina, int tamanoPagina)
        {
            try
            {
                int skip = PaginacionHelper.CalcularSkip(pagina, tamanoPagina);

                var query = _unitOfWork.Repository<Sucursal>()
                    .AsQueryable()
                    .Include(x => x.Proveedor)
                    .Include(x => x.Contrato)
                    .Where(x => x.Activo)
                    .OrderBy(x => x.SucursalID)
                    .Skip(skip)
                    .Take(tamanoPagina);

                var sucursales = query.ToList();

                var sucursalesDto = _mapper.Map<List<ObtenerSucursalDTO>>(sucursales);

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


        public Respuesta<InsertarContratoDto> InsertarContrato(InsertarContratoDto insertarContratoDto)
        {
            try
            {
                ContratoRenta contrato = _mapper.Map<ContratoRenta>(insertarContratoDto);

                ContratoRentaDomainRequirement requirements = CrearRequisitosContrato(insertarContratoDto);

                Respuesta<ContratoRenta> validacion = _rentaDomain.ValidarContrato(contrato, requirements);

                if (!validacion.Ok)
                {
                    return Respuesta.Fault<InsertarContratoDto>(
                        validacion.Mensaje,
                        ((int)EnumMensajesError.BadRequest).ToString()
                    );
                }

                _unitOfWork.Repository<ContratoRenta>().Add(contrato);


                if (!_unitOfWork.SaveChanges())
                {
                    return Respuesta.Fault<InsertarContratoDto>(
                    Fallo.CreacionFallida,
                    ((int)EnumMensajesError.InternarServerError).ToString());
                }

                return Respuesta.Success(insertarContratoDto, Exito.Creado, ((int)EnumMensajesError.Succes).ToString());
            }
            catch (Exception ) 
            {

                return Respuesta.Fault<InsertarContratoDto>(
                    Fallo.CreacionFallida,
                    ((int)EnumMensajesError.InternarServerError).ToString()
                );
            }
        }

        public Respuesta<ActualizarContratoDto> ActualizarContrato(ActualizarContratoDto actualizarContratoDto)
        {
            try
            {
                var validacion = ValidarExistenciaContrato(actualizarContratoDto.ContratoID);

                if (!validacion.Ok)
                    return Respuesta.Fault<ActualizarContratoDto>(
                        validacion.Mensaje,
                        ((int)EnumMensajesError.NotFound).ToString()
                    );

                ContratoRenta? contrato = validacion.Data!;
                _mapper.Map(actualizarContratoDto, contrato);

                var requirements = CrearRequisitosContratoActualizar(actualizarContratoDto);
                var validacionDominio = _rentaDomain.ValidarContrato(contrato, requirements);

                if (!validacionDominio.Ok)
                {
                    return Respuesta.Fault<ActualizarContratoDto>(
                        validacionDominio.Mensaje,
                        ((int)EnumMensajesError.BadRequest).ToString()
                    );
                }

                bool guardado = _unitOfWork.SaveChanges();
                if (!guardado)
                {
                    return Respuesta.Fault<ActualizarContratoDto>(
                        Fallo.ActualizacionFallida,
                        ((int)EnumMensajesError.InternarServerError).ToString()
                    );
                }

                return Respuesta.Success(
                    actualizarContratoDto,
                    Exito.OperacionExitosa,
                    ((int)EnumMensajesError.Succes).ToString()
                );
            }
            catch (Exception)
            {
                return Respuesta.Fault<ActualizarContratoDto>(
                    Fallo.ActualizacionFallida,
                    ((int)EnumMensajesError.InternarServerError).ToString()
                );
            }
        }


        public Respuesta<InactivarContratoDto> InactivarContrato(InactivarContratoDto inactivarContratoDto)
        {
            try
            {
                var validacion = ValidarContratoParaInactivar(inactivarContratoDto.ContratoID);

                if (!validacion.Ok)
                    return Respuesta.Fault<InactivarContratoDto>(
                        validacion.Mensaje,
                        ((int)EnumMensajesError.BadRequest).ToString()
                    );

                ContratoRenta? contrato = validacion.Data!;

                contrato.Activo = false;
                contrato.FechaModifica = DateTime.Now;

                if (!_unitOfWork.SaveChanges())
                    return Respuesta.Fault<InactivarContratoDto>(
                        Fallo.OperacionFallida,
                        ((int)EnumMensajesError.InternarServerError).ToString()
                    );

                return Respuesta.Success(
                    inactivarContratoDto,
                    Exito.Eliminado,
                    ((int)EnumMensajesError.Succes).ToString()
                );
            }
            catch (Exception)
            {
                return Respuesta.Fault<InactivarContratoDto>(
                    Fallo.OperacionFallida,
                    ((int)EnumMensajesError.InternarServerError).ToString()
                );
            }
        }

        private ContratoRentaDomainRequirement CrearRequisitosContrato(InsertarContratoDto insertarContratoDto)
        {
            bool proveedorExiste = _unitOfWork.Repository<Proveedor>()
                .AsQueryable()
                .Any(p => p.ProveedorID == insertarContratoDto.ProveedorID);

            bool monedaExiste = _unitOfWork.Repository<Moneda>()
                .AsQueryable()
                .Any(m => m.MonedaID == insertarContratoDto.MonedaID);

            bool numeroContratoUnico = !_unitOfWork.Repository<ContratoRenta>()
                .AsQueryable()
                .Any(c => c.NumeroContrato == insertarContratoDto.NumeroContrato);

            return ContratoRentaDomainRequirement.Fill(
                proveedorExiste,
                monedaExiste,
                numeroContratoUnico
            );
        }

        private ContratoRentaDomainRequirement CrearRequisitosContratoActualizar(ActualizarContratoDto dto)
        {
            var proveedorExiste = _unitOfWork.Repository<Proveedor>()
                .AsQueryable()
                .Any(p => p.ProveedorID == dto.ProveedorID);

            var monedaExiste = _unitOfWork.Repository<Moneda>()
                .AsQueryable()
                .Any(m => m.MonedaID == dto.MonedaID);

            var numeroContratoUnico = !_unitOfWork.Repository<ContratoRenta>()
                .AsQueryable()
                .Any(c => c.NumeroContrato == dto.NumeroContrato && c.ContratoID != dto.ContratoID);

            return ContratoRentaDomainRequirement.Fill(proveedorExiste, monedaExiste, numeroContratoUnico);
        }

        private Respuesta<ContratoRenta> ValidarContratoParaInactivar(int contratoId)
        {
            ContratoRenta? contrato = _unitOfWork.Repository<ContratoRenta>()
                .AsQueryable()
                .FirstOrDefault(c => c.ContratoID == contratoId);

            if (contrato == null)
            {
                return Respuesta.Fault<ContratoRenta>(
                    Fallo.RegistroNoEncontrado,
                    ((int)EnumMensajesError.NotFound).ToString()
                );
            }

            if (!contrato.Activo)
            {
                return Respuesta.Fault<ContratoRenta>(
                    Fallo.RegistroYaInactivo,
                    ((int)EnumMensajesError.BadRequest).ToString()
                );
            }

            return Respuesta.Success(
                contrato,
                Exito.OperacionExitosa,
                ((int)EnumMensajesError.Succes).ToString()
            );
        }

        private Respuesta<ContratoRenta> ValidarExistenciaContrato(int contratoId)
        {
            ContratoRenta? contrato = _unitOfWork.Repository<ContratoRenta>()
                .AsQueryable()
                .FirstOrDefault(c => c.ContratoID == contratoId);

            if (contrato == null)
            {
                return Respuesta.Fault<ContratoRenta>(
                    Fallo.RegistroNoEncontrado,
                    ((int)EnumMensajesError.NotFound).ToString()
                );
            }

            return Respuesta.Success(
                contrato,
                Exito.OperacionExitosa,
                ((int)EnumMensajesError.Succes).ToString()
            );
        }

    }
}
