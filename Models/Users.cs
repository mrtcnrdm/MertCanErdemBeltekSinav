using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;

namespace MertCanErdemBeltekSinav.Models
{
    [Table("Users")]
    public class Users
    {
        public int Id { get; set; }
        public string FullName { get; set; }
        public int GenderId { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }

        public virtual Genders Gender { get; set; }
        public virtual ICollection<Products> Products { get; set; }
    }
}