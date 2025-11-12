using Academia.WebRentas.WebApi._Common;
using Academia.WebRentas.WebApi._Common.DomainRequirement;
using Academia.WebRentas.WebApi._Common.Dtos.ContratoRentaDto;
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
        private IMapper _mapper;
        private readonly ContratoRentaDomain _rentaDomain;
        public ContratoRentaService(UnitOfWorkBuilder unitOfWorkBuilder, IMapper mapper, ContratoRentaDomain contratoRentaDomain)
        {
            _unitOfWork = unitOfWorkBuilder.BuilderRentas();
            _mapper = mapper;
            _rentaDomain = contratoRentaDomain;
        }
        public Respuesta<List<ObtenerContratoDto>> ObtenerContratoRenta()
        {
            try
            {
                var contratoRentas = _unitOfWork.Repository<ContratoRenta>().AsQueryable().Include(x => x.Moneda).Include(x => x.Proveedor).Where(x => x.Activo).ToList();
                var contratoRentasDto = _mapper.Map<List<ObtenerContratoDto>>(contratoRentas);
                return Respuesta.Success(contratoRentasDto, Exito.OperacionExitosa, EnumMensajesError.Succes.ToString());

            }
            catch (Exception)

            {
                return Respuesta.Fault<List<ObtenerContratoDto>>(Fallo.OperacionFallida, EnumMensajesError.InternarServerError.ToString());
            }

        }
        public Respuesta<InsertarContratoDto> InsertarContrato(InsertarContratoDto dto)
        {
            try
            {
                var contrato = _mapper.Map<ContratoRenta>(dto);

                //Desde aca
                bool proveedorExiste = _unitOfWork.Repository<Proveedor>()
                    .AsQueryable()
                    .Any(p => p.ProveedorID == dto.ProveedorID);

                bool monedaExiste = _unitOfWork.Repository<Moneda>()
                    .AsQueryable()
                    .Any(m => m.MonedaID == dto.MonedaID);

                bool numeroContratoUnico = !_unitOfWork.Repository<ContratoRenta>()
                    .AsQueryable()
                    .Any(c => c.NumeroContrato == dto.NumeroContrato);

                var requirements = ContratoRentaDomainRequirement.Fill(
                    proveedorExiste,
                    monedaExiste,
                    numeroContratoUnico
                );
                //Agregar a un metodo aparte
                var validacion = _rentaDomain.ValidarContrato(contrato, requirements);

                if (!validacion.Ok)
                {
                    return Respuesta.Fault<InsertarContratoDto>(
                        validacion.Mensaje,
                        ((int)EnumMensajesError.BadRequest).ToString()
                    );
                }

                _unitOfWork.Repository<ContratoRenta>().Add(contrato);
                _unitOfWork.SaveChanges();

                return Respuesta.Success(dto, Exito.Creado, ((int)EnumMensajesError.Succes).ToString());
            }
            catch (Exception)
            {
                return Respuesta.Fault<InsertarContratoDto>(
                    Fallo.CreacionFallida,
                    ((int)EnumMensajesError.InternarServerError).ToString()
                );
            }
        }


        public Respuesta<ActualizarContratoDto> ActualizarContrato(ActualizarContratoDto dto)
        {
            try
            {
                var contrato = _unitOfWork.Repository<ContratoRenta>()
                    .AsQueryable()
                    .FirstOrDefault(c => c.ContratoID == dto.ContratoID);

                if (contrato == null)
                    return Respuesta.Fault<ActualizarContratoDto>(
                        Fallo.RegistroNoEncontrado,
                        ((int)EnumMensajesError.NotFound).ToString()
                    );

                _mapper.Map(dto, contrato);
                //var validacion = _rentaDomain.ValidarContrato(contrato);
                //if (!validacion.Ok)
                //{
                //    return Respuesta.Fault<ActualizarContratoDto>(
                //        validacion.Mensaje,
                //        ((int)EnumMensajesError.BadRequest).ToString()
                //    );
                //}

                bool guardado = _unitOfWork.SaveChanges();


                if (!guardado)
                {
                    return Respuesta.Fault<ActualizarContratoDto>(
                        Fallo.ActualizacionFallida,
                        ((int)EnumMensajesError.InternarServerError).ToString()
                    );
                }

                return Respuesta.Success(dto, Exito.OperacionExitosa, ((int)EnumMensajesError.Succes).ToString());
            }
            catch (Exception)
            {
                return Respuesta.Fault<ActualizarContratoDto>(
                    Fallo.CreacionFallida,
                    ((int)EnumMensajesError.InternarServerError).ToString()
                );
            }
        }


        public Respuesta<InactivarContratoDto> InactivarContrato(InactivarContratoDto dto)
        {
            try
            {
                var contrato = _unitOfWork.Repository<ContratoRenta>()
                                .AsQueryable()
                                .FirstOrDefault(c => c.ContratoID == dto.ContratoID);

                if (contrato == null)
                    return Respuesta.Fault<InactivarContratoDto>(Fallo.RegistroNoEncontrado, EnumMensajesError.NotFound.ToString());

                contrato.Activo = false;
                contrato.UsuarioModifica = dto.UsuarioModifica;
                contrato.FechaModifica = DateTime.Now;

                _unitOfWork.SaveChanges();
                return Respuesta.Success(dto, Mensajes.Exito.Eliminado, EnumMensajesError.Succes.ToString());
            }
            catch (Exception)
            {
                return Respuesta.Fault<InactivarContratoDto>(Fallo.OperacionFallida, EnumMensajesError.InternarServerError.ToString());
            }
        }


    }
}
