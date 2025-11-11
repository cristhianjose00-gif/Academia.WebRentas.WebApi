using Academia.WebRentas.WebApi.Infrastructure.BDRentas.Entities;
using System;
using System.Collections.Generic;

namespace EFCoreLab3.Infraestructura;

public partial class LogSincronizacion
{
    public int LogID { get; set; }

    public int DocumentoID { get; set; }

    public DateTime FechaIntento { get; set; }

    public string Estado { get; set; } = null!;

    public string? MensajeError { get; set; }

    public string UsuarioAgrega { get; set; } = null!;

    public DateTime FechaAgrega { get; set; }

    public virtual Documento Documento { get; set; } = null!;
}
