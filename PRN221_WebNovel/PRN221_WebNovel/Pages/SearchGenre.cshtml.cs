using BO;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using NovelService;

namespace PRN221_WebNovel.Pages
{
    public class SearchGenreModel : PageModel
    {
        private readonly INovelsService _novelsService = null;
        private readonly WebNovelContext _context;
        public SearchGenreModel(INovelsService iNovelService, WebNovelContext context)
        {
            _novelsService = iNovelService;
            _context = context;
        }

        public IList<Novel> Novels { get; set; } = default!;
        public void OnGet(int genre, string query)
        {
            if (genre != null && genre != 0)
            {
                Novels = _novelsService.GetNovelsByGenre(genre);
            }
            else
            {
                if (!string.IsNullOrEmpty(query))
                {
                    Novels = _novelsService.SearchNovels(query);
                }
                else
                {
                    Novels = _novelsService.GetAllNovles();
                }
            }

        }
    }
}
