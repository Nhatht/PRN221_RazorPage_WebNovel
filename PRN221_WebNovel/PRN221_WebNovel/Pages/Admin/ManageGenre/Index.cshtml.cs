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
    public class IndexModel : PageModel
    {
        private readonly IAccountService _accountService;
        private readonly IGenreService _genreService;
        public IndexModel(IAccountService accountService, IGenreService genreService)
        {
            _accountService = accountService;
            _genreService = genreService;
        }

        public IList<Genre> Genre { get;set; } = default!;
        [BindProperty(SupportsGet = true)]
        public string? searchQuery { get; set; }
        public async Task OnGetAsync()
        {
            if(!string.IsNullOrEmpty(searchQuery))
            {
                Genre = _genreService.GetAllGenres().Where(s => s.GenreName.Contains(searchQuery, StringComparison.OrdinalIgnoreCase)).ToList();
            }
            else
            {
                Genre = _genreService.GetAllGenres();
            }
        }
    }
}
