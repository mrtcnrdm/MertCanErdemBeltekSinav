using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;

namespace MertCanErdemBeltekSinav.Models
{
    [Table("Categories")]
    public class Categories
    {
        public int Id { get; set; }
        public string CategoryName { get; set; }

        public virtual ICollection<Products> Products { get; set; }
    }
}