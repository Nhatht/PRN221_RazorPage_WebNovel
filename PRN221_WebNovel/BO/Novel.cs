using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace BO
{
    public partial class Novel
    {
        public int Id { get; set; }
        [Required(ErrorMessage = "Vui lòng nhập tên")]
        [Display(Name = "Tên truyện")]
        public string? NovelName { get; set; }
        public string? Image { get; set; }
        [Required(ErrorMessage = "Vui lòng nhập nội dung")]
        [Display(Name = "Nội dung")]
        public string? Content { get; set; }
        public int? AuthorId { get; set; }
        public int? GenreId { get; set; }

        public virtual Account? Author { get; set; }
        public virtual Genre? Genre { get; set; }
    }
}
