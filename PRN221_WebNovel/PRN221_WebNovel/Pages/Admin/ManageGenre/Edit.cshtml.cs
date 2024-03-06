using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using BO;
using NovelService;

namespace PRN221_WebNovel.Pages.Admin.ManageGenre
{
    public class EditModel : PageModel
    {
        private readonly IGenreService _genreService;

        public EditModel(IGenreService genreService)
        {
            _genreService = genreService;
        }

        [BindProperty]
        public Genre Genre { get; set; } = default!;

        public async Task<IActionResult> OnGetAsync(int id)
        {
            if (id == null || _genreService.GetAllGenres() == null)
            {
                return NotFound();
            }

            var genre = _genreService.GetGenreById(id);
            if (genre == null)
            {
                return NotFound();
            }
            Genre = genre;
            return Page();
        }

        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see https://aka.ms/RazorPagesCRUD.
        public async Task<IActionResult> OnPostAsync()
        {
            if (!ModelState.IsValid)
            {
                return Page();
            }
            else
            {
                bool result = _genreService.UpdateGenre(Genre);
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
