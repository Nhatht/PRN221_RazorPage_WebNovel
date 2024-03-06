using BO;
using System.ComponentModel.DataAnnotations;

namespace PRN221_WebNovel.Models
{
    public class NovelModels
    {
        public int Id { get; set; }
        [Required(ErrorMessage = "Please enter the novel name.")]
        [Display(Name = "Novel Name")]
        public string? NovelName { get; set; }
        [Required(ErrorMessage = "Please select an image.")]
        [DataType(DataType.Upload)]
        [Display(Name = "Image")]
        public IFormFile? Image { get; set; }

        //public string? URL { get; set; }
        [Required(ErrorMessage = "Please enter the content.")]
        [Display(Name = "Content")]
        public string? Content { get; set; }
        public int? AuthorId { get; set; }
        [Required(ErrorMessage = "Please select a genre.")]
        [Display(Name = "GenreId")]
        public int? GenreId { get; set; }
        public Novel? novel { get; set; }
        public virtual Genres? Genre { get; set; }

    }
}
