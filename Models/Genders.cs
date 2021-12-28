using System.Collections.Generic;

namespace MertCanErdemBeltekSinav.Models
{
    public class Genders
    {
        public int Id { get; set; }
        public string GenderName { get; set; }

        public virtual ICollection<Users> Users { get; set; }
    }
}