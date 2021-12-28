using System.ComponentModel.DataAnnotations.Schema;

namespace MertCanErdemBeltekSinav.Models
{
    [Table("Products")]
    public class Products
    {
        public int Id { get; set; }
        public int CategoryId { get; set; }
        public string ProductTitle { get; set; }
        public string ProductName { get; set; }
        public string ProductDescription { get; set; }
        public string ProductImage { get; set; }
        public System.DateTime CreationDate { get; set; }
        public double ProductPrice { get; set; }

        public virtual Categories Category { get; set; }
    }
}