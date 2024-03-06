using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using BO;
using NovelService;

namespace PRN221_WebNovel.Pages.Author.MyNovels
{
    public class DeleteModel : PageModel
    {
        private readonly INovelsService _novelsService;

        public DeleteModel(INovelsService novelsService)
        {
            _novelsService = novelsService;
        }

        [BindProperty]
         public Novel Novel { get; set; } = default!;

        public async Task<IActionResult> OnGetAsync(int id)
        {
            if (id == null || _novelsService.GetAllNovles == null)
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

        public async Task<IActionResult> OnPostAsync(int id)
        {
            if (id == null || _novelsService.GetAllNovles == null)
            {
                return NotFound();
            }
            var novel = _novelsService.GetNovelById(id);

            if (novel != null)
            {
                Novel = novel;
                _novelsService.DeleteNovel(id);
            }

            return RedirectToPage("./Index");
        }
    }
}
