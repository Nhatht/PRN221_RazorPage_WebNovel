using BO;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using NovelService;

namespace PRN221_WebNovel.Pages.Admin.ManageNovel
{
    public class DetailsModel : PageModel
    {
        private readonly INovelsService _novelsService = null;
        public DetailsModel(INovelsService iNovelService)
        {
            _novelsService = iNovelService;
        }

        public Novel Novel { get; set; } = default!;
        public async Task<IActionResult> OnGetAsync(int id)
        {
            if (id == null || _novelsService.GetAllNovles() == null)
            {
                return NotFound();
            }
            var novel = _novelsService.GetNovelById(id);
            if (novel == null)
            {
                return NotFound();
            }
            else
            {
                Novel = novel;
            }
            return Page();
        }
    }
}
