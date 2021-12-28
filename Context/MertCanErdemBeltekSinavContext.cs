using MertCanErdemBeltekSinav.Models;
using Microsoft.EntityFrameworkCore;

namespace MertCanErdemBeltekSinav.Context
{
    public class MertCanErdemBeltekSinavContext : DbContext
    {
        public DbSet<Categories> Categories { get; set; }
        public DbSet<Genders> Genders { get; set; }
        public DbSet<Products> Products { get; set; }
        public DbSet<Users> Users { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer(@"Data Source=.;Initial Catalog=BeltekOdev; Integrated Security=true");
        }
    }
}