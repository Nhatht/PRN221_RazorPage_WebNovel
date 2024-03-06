using BO;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using NovelService;

namespace PRN221_WebNovel.Pages.Admin.ManageNovel
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
