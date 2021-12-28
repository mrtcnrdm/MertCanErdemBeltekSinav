using System.Collections.Generic;

namespace MertCanErdemBeltekSinav.Models
{
    public class Categories
    {
        public int Id { get; set; }
        public string CategoryName { get; set; }

        public virtual ICollection<Products> Products { get; set; }
    }
}