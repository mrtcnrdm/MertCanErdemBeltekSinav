using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;

namespace MertCanErdemBeltekSinav.Models
{
    [Table("Genders")]
    public class Genders
    {
        public int Id { get; set; }
        public string GenderName { get; set; }

        public virtual ICollection<Users> Users { get; set; }
    }
}