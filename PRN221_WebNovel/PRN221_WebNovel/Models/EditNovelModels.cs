using BO;

namespace PRN221_WebNovel.Models
{
    public class EditNovelModels
    {
        public int Id { get; set; }
        public string? NovelName { get; set; }
        public IFormFile? Image { get; set; }
        public string? Content { get; set; }
        public int? GenreId { get; set; }
        public string? URL { get; set; }
        public virtual Genres? Genre { get; set; }
    }
}
