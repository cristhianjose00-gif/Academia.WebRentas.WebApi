using Academia.WebRentas.WebApi.Infrastructure.BDRentas;
using Farsiman.Domain.Core.Standard.Repositories;
using Farsiman.Infraestructure.Core.Entity.Standard;
using Microsoft.EntityFrameworkCore;

namespace Academia.WebRentas.WebApi.Infrastructure
{
    public class UnitOfWorkBuilder
    {
        readonly IServiceProvider _serviceProvider;

        public UnitOfWorkBuilder(IServiceProvider serviceProvider)
        {
            _serviceProvider = serviceProvider;
        }

        public IUnitOfWork BuilderRentas()
        {
            DbContext dbContext = _serviceProvider.GetService<BDRentasContext>() ?? throw new InvalidOperationException();
            return new UnitOfWork(dbContext);
        }
    }
}

