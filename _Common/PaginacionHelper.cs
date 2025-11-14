namespace Academia.WebRentas.WebApi._Common
{
    public static class PaginacionHelper
    {
        public static int CalcularSkip(int pagina, int tamanoPagina)
            => (pagina - 1) * tamanoPagina;
    }
}
