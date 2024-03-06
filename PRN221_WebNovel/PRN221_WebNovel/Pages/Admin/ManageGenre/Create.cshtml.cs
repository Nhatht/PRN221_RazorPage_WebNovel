using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
using BO;
using NovelService;

namespace PRN221_WebNovel.Pages.Admin.ManageGenre
{
    public class CreateModel : PageModel
    {
        private readonly IGenreService _genreService;

        public CreateModel(IGenreService genreService)
        {
            _genreService = genreService;
        }

        public IActionResult OnGet()
        {
            return Page();
        }

        [BindProperty]
        public Genre Genre { get; set; } = default!;


        // To protect from overposting attacks, see https://aka.ms/RazorPagesCRUD
        public async Task<IActionResult> OnPostAsync()
        {
            if (!ModelState.IsValid || _genreService.GetAllGenres == null || Genre == null)
            {
                return Page();
            }
            else
            {
                bool result = _genreService.AddGenre(Genre);
                if (!result)
                {
                    ModelState.AddModelError("Genre.GenreName", "Genre Name is already existed");
                    return Page();
                }
                return RedirectToPage("./Index");
            }
        }
    }
}
