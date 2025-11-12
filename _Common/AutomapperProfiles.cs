using Academia.WebRentas.WebApi._Common.Dtos.ContratoRentaDto;
using Academia.WebRentas.WebApi._Common.Dtos.SucursalDto;
using Academia.WebRentas.WebApi.Infrastructure.BDRentas.Entities;
using AutoMapper;

namespace Academia.WebRentas.WebApi._Common
{
    public class AutomapperProfiles : Profile
    {
        public AutomapperProfiles()
        {
            CreateMap<ActualizarContratoDto, ContratoRenta>();
            CreateMap<ContratoRenta, ObtenerContratoDto>().ForMember(entidadDto => entidadDto.NombreDeProveedor, entidad => entidad.MapFrom(x => x.Proveedor.NombreDeProveedor))
                .ForMember(entidadDto => entidadDto.MoneadaNombre, entidad => entidad.MapFrom(x => x.Moneda.NombreMoneda)).ReverseMap();
            CreateMap<InsertarContratoDto, ContratoRenta>()
            .ForMember(dest => dest.FechaAgrega, opt => opt.MapFrom(src => DateTime.Now))
            .ForMember(dest => dest.Activo, opt => opt.MapFrom(src => true));

            CreateMap<ActualizarSucursalDto, Sucursal>();
            CreateMap<InsertarSucursalDto, Sucursal>();
            CreateMap<Sucursal, ObtenerSucursalDTO>()
          .ForMember(dest => dest.NombreProveedor, opt => opt.MapFrom(x => x.Proveedor != null ? x.Proveedor.NombreDeProveedor : null))
          .ForMember(dest => dest.NumeroContrato, opt => opt.MapFrom(x => x.Contrato != null ? x.Contrato.NumeroContrato : null))
          .ReverseMap();
        }
    }
}
