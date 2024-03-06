using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace BO
{
    public partial class Genre
    {
        public Genre()
        {
            Novels = new HashSet<Novel>();
        }
        public int Id { get; set; }
        [Required(ErrorMessage = "Vui lòng nhập tên")]
        [StringLength(100, MinimumLength = 3, ErrorMessage = "Tên phải từ 3 kí tự và không được quá 100 ký tự")]
        [Display(Name = "Tên thể loại")]
        public string? GenreName { get; set; }
        public virtual ICollection<Novel> Novels { get; set; }
    }
}
