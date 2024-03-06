using BO;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using NovelRepo;
using NovelService;
using static Microsoft.EntityFrameworkCore.DbLoggerCategory;

namespace PRN221_WebNovel.Pages.Reader
{
    public class IndexModel : PageModel
    {
        private readonly INovelsService _novelsService = null;
        public IndexModel(INovelsService iNovelService)
        {
            _novelsService = iNovelService;
        }

        public IList<Novel> Novels { get; set; } = default!;

        public async Task OnGetAsync(int genre, string query)
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
