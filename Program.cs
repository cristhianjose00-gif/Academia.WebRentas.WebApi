using Academia.WebRentas.WebApi._Common;
using Academia.WebRentas.WebApi._Common.Service;
using Academia.WebRentas.WebApi._Features.ContratosRenta;
using Academia.WebRentas.WebApi._Features.PagoRentas;
using Academia.WebRentas.WebApi._Features.Proveedores;
using Academia.WebRentas.WebApi._Features.Servicios;
using Academia.WebRentas.WebApi._Features.Sucursales;
using Academia.WebRentas.WebApi.Infrastructure;
using Academia.WebRentas.WebApi.Infrastructure.BDRentas;
using Farsiman.Extensions.Configuration;
using Farsiman.Infraestructure.Core.AspNetCore.Extensions;
using Microsoft.EntityFrameworkCore;
using System.Diagnostics.CodeAnalysis;


var builder = WebApplication.CreateBuilder(args);



// Add services to the container.
builder.Services.AddCors(options =>
{

    options.AddPolicy("AllowSpecificOrigin",
        corsBuilder =>
        {
            corsBuilder
            .SetIsOriginAllowed(_ => true)
            .AllowAnyHeader()
            .AllowAnyMethod()
            .AllowCredentials();
        });

});

builder.Services.AddControllers();

builder.Services.AddSwaggerGen();
builder.Services.AddAutoMapper(typeof(AutomapperProfiles));

//Contextos de Base de Datos
////builder.Services.AddDbContext<BDRentasContext>(options =>
// {
//    options.UseSqlServer(builder.Configuration.GetConnectionStringFromENV("BDRentas"));

//});

//Contexto de Base de Datos para MySQL
string cnx = builder.Configuration.GetConnectionStringFromENV("BDRentas");
builder.Services.AddDbContext<BDRentasContext>(options => options.UseMySql(cnx, ServerVersion.AutoDetect(cnx)));

//Servicios de la aplicacion
builder.Services.AddTransient<UnitOfWorkBuilder, UnitOfWorkBuilder>();
builder.Services.AddTransient<CommonService>();
builder.Services.AddTransient<PagoRentaService>();
builder.Services.AddTransient<ProveedorService>();
builder.Services.AddTransient<ContratoRentaService>();
builder.Services.AddTransient<ServicioService>();
builder.Services.AddTransient<SucursalService>();
builder.Services.AddTransient<IContratoRenta, ContratoRentaService>();
builder.Services.AddTransient<ISucursal, SucursalService>();
builder.Services.AddTransient<ContratoRentaDomain>();
builder.Services.AddTransient<SucursalDomain>();


var app = builder.Build();

app.UseSwagger();
if (app.Environment.IsDevelopment())
{

    app.UseSwaggerUI();


}


// Configure the HTTP request pipeline.
app.UseCors("AllowSpecificOrigin");

app.UseAuthorization();

app.MapControllers();

app.Run();

[ExcludeFromCodeCoverage]
public partial class Program { }
