using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using BO;
using NovelService;

namespace PRN221_WebNovel.Pages.Admin.ManageGenre
{
    public class DetailsModel : PageModel
    {
        private readonly IGenreService _genreService;

        public DetailsModel(IGenreService genreService)
        {
            _genreService = genreService;
        }

      public Genre Genre { get; set; } = default!; 

        public async Task<IActionResult> OnGetAsync(int id)
        {
            if (id == null || _genreService.GetAllGenres == null)
            {
                return NotFound();
            }

            var genre = _genreService.GetGenreById(id);
            if (genre == null)
            {
                return NotFound();
            }
            else 
            {
                Genre = genre;
            }
            return Page();
        }
    }
}
