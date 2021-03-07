using System.Data.Entity;

namespace WebFormApplication.Models
{
    public class ApplicationContext : DbContext
    {
        public DbSet<Cliente> Clientes { get; set; }
    }
}