using Academia.WebRentas.WebApi._Common;
using Academia.WebRentas.WebApi._Common.Dtos.ContratoRentaDto;
using Academia.WebRentas.WebApi._Common.Dtos.SucursalDto;
using Academia.WebRentas.WebApi._Common.Service;
using Academia.WebRentas.WebApi.Infrastructure;
using Academia.WebRentas.WebApi.Infrastructure.BDRentas;
using Academia.WebRentas.WebApi.Infrastructure.BDRentas.Entities;
using AutoMapper;
using Farsiman.Application.Core.Standard.DTOs;
using Farsiman.Domain.Core.Standard.Repositories;
using Farsiman.Exceptions;
using FluentValidation.Results;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Diagnostics.Contracts;
using static Academia.WebRentas.WebApi._Common.Mensajes;

namespace Academia.WebRentas.WebApi._Features.Sucursales
{
    public class SucursalService : ISucursal
    {
        private readonly IUnitOfWork _unitOfWork;
        private IMapper _mapper;
        public SucursalService(UnitOfWorkBuilder unitOfWorkBuilder, IMapper mapper)
        {
            _unitOfWork = unitOfWorkBuilder.BuilderRentas();
            _mapper = mapper;
        }
        public Respuesta<List<ObtenerSucursalDTO>> ObtenerSucursal()
        {
            try
            {
                var sucursales = _unitOfWork.Repository<Sucursal>().AsQueryable().Include(x => x.Proveedor).Include(x => x.Contrato).Where(x => x.Activo).ToList();
                var sucursalDTO = _mapper.Map<List<ObtenerSucursalDTO>>(sucursales);
                return Respuesta.Success(sucursalDTO, Mensajes.Exito.OperacionExitosa, EnumMensajesError.Succes.ToString());

            }
            catch (Exception)

            {
                return Respuesta.Fault<List<ObtenerSucursalDTO>>(Fallo.OperacionFallida, EnumMensajesError.InternarServerError.ToString());
            }
        }
        public Respuesta<InsertarSucursalDto> InsertarSucursal(InsertarSucursalDto dto)
        {
            try
            {
                var sucursal = _mapper.Map<Sucursal>(dto);
                SucursalValidator validator = new();
                ValidationResult validationResult = validator.Validate(sucursal);

                if (!validationResult.IsValid)
                {
                    IEnumerable<string> errores = validationResult.Errors.Select(s => s.ErrorMessage);
                    string menssageValidation = string.Join(Environment.NewLine, errores);
                    return Respuesta.Fault<InsertarSucursalDto>(menssageValidation, EnumMensajesError.BadRequest.ToString());
                }
                bool proveedorExiste = _unitOfWork.Repository<Proveedor>().AsQueryable()
                                 .Any(p => p.ProveedorID == dto.ProveedorID);

                if (!proveedorExiste)
                    return Respuesta.Fault<InsertarSucursalDto>("El proveedor especificado no existe.", EnumMensajesError.BadRequest.ToString());

                bool contratoExiste = _unitOfWork.Repository<ContratoRenta>().AsQueryable()
                                         .Any(c => c.ContratoID == dto.ContratoID);

                if (!contratoExiste)
                    return Respuesta.Fault<InsertarSucursalDto>("El contrato especificado no existe.", EnumMensajesError.BadRequest.ToString());

                sucursal.Activo = true;
                sucursal.FechaAgrega = DateTime.Now;
                _unitOfWork.Repository<Sucursal>().Add(sucursal);
                _unitOfWork.SaveChanges();

                return Respuesta.Success(dto, Exito.Creado, EnumMensajesError.Succes.ToString());
            }
            catch (Exception)
            {
                return Respuesta.Fault<InsertarSucursalDto>(Fallo.CreacionFallida, EnumMensajesError.InternarServerError.ToString());
            }
        }
        public Respuesta<ActualizarSucursalDto> ActualizarSucursal(ActualizarSucursalDto dto)
        {
            try
            {
                var sucursal = _unitOfWork.Repository<Sucursal>()
                                .AsQueryable()
                                .FirstOrDefault(s => s.SucursalID == dto.SucursalID);
                var sucur = _mapper.Map<Sucursal>(dto);
                SucursalValidator validator = new();
                ValidationResult validationResult = validator.Validate(sucur);

                if (sucursal == null)
                    return Respuesta.Fault<ActualizarSucursalDto>(Fallo.RegistroNoEncontrado, EnumMensajesError.NotFound.ToString());
                if (!validationResult.IsValid)
                {
                    IEnumerable<string> errores = validationResult.Errors.Select(s => s.ErrorMessage);
                    string menssageValidation = string.Join(Environment.NewLine, errores);
                    return Respuesta.Fault<ActualizarSucursalDto>(menssageValidation, EnumMensajesError.BadRequest.ToString());
                }

                _mapper.Map(dto, sucursal);

                sucursal.FechaModifica = DateTime.Now;

                _unitOfWork.SaveChanges();
                return Respuesta.Success(dto, Exito.Actualizado, EnumMensajesError.Succes.ToString());
            }
            catch (Exception)
            {
                return Respuesta.Fault<ActualizarSucursalDto>(Fallo.CreacionFallida, EnumMensajesError.InternarServerError.ToString());
            }
        }

        public Respuesta<DesactivarSucursalDto> InactivarSucursal(DesactivarSucursalDto dto)
        {
            try
            {
                var sucursal = _unitOfWork.Repository<Sucursal>()
                                    .AsQueryable()
                                    .FirstOrDefault(s => s.SucursalID == dto.SucursalID);

                if (sucursal == null)
                    return Respuesta.Fault<DesactivarSucursalDto>(Fallo.RegistroNoEncontrado, EnumMensajesError.NotFound.ToString());

                sucursal.Activo = false;
                sucursal.UsuarioModifica = dto.UsuarioModifica;
                sucursal.FechaModifica = DateTime.Now;

                _unitOfWork.SaveChanges();

                return Respuesta.Success(dto, Mensajes.Exito.Eliminado, EnumMensajesError.Succes.ToString());
            }
            catch (Exception)
            {
                return Respuesta.Fault<DesactivarSucursalDto>(Fallo.OperacionFallida, EnumMensajesError.InternarServerError.ToString());
            }
        }



    }
}
