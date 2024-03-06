using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
using BO;
using Newtonsoft.Json;
using PRN221_WebNovel.Models;
using NovelService;

namespace PRN221_WebNovel.Pages.Author
{
    public class CreateModel : PageModel
    {
        private readonly INovelsService _novelsService = null;
        private readonly IGenreService _genreService = null;
        private readonly IPhotoService _photoService = null;
        private readonly IAccountService _accountService = null;
        public CreateModel(INovelsService novelsService, IGenreService genreService, IPhotoService photoService, IAccountService accountService)
        {
            _novelsService = novelsService;
            _genreService = genreService;
            _photoService = photoService;
            _accountService = accountService;
        }
        [BindProperty]
        public NovelModels? Novel { get; set; } = default!;
        public IList<Genre> Genres { get; set; } = default!;
        public IActionResult OnGet()
        {
            var loginUser = JsonConvert.DeserializeObject<AccountViewmodel>(HttpContext.Session.GetString("loginUser"));
            Novel = new NovelModels
            {
                AuthorId = loginUser.Id

            };
            Genres = _genreService.GetAllGenres();
            ViewData["GenreId"] = new SelectList(_genreService.GetAllGenres(), "Id", "GenreName");
            return Page();
        }

        // To protect from overposting attacks, see https://aka.ms/RazorPagesCRUD
        public async Task<IActionResult> OnPostAsync()
        {
            if (!ModelState.IsValid || _novelsService.GetAllNovles == null || Novel == null)
            {
                ViewData["GenreId"] = new SelectList(_genreService.GetAllGenres(), "Id", "GenreName");
                return Page();
            }
            if (ModelState.IsValid)
            {
                if(!IsNameValid(Novel.NovelName))
                {
                    ModelState.AddModelError("Novel.NovelName", "Novel name must be capitalized");
                    return Page();
                }
                var check1 = Novel.AuthorId;
                var result = await _photoService.AddPhotoAsync(Novel.Image);
                if (result == null)
                {
                    ModelState.AddModelError("", "Photo upload failed.");
                    return Page();
                }
                var novel = new Novel
                {
                    NovelName = Novel.NovelName,
                    Content = Novel.Content,
                    AuthorId = Novel.AuthorId,
                    GenreId = Novel.GenreId,
                    Image = result.Url.ToString()
                };
                _novelsService.AddNovel(novel);
                return RedirectToPage("./Index");
            }
            else
            {
                
                ModelState.AddModelError("", "Photo upload Failed");
            }
            return RedirectToPage("./Index");
        }
        private bool IsNameValid(string name)
        {
            var words = name.Split(' ');
            return words.All(word => char.IsUpper(word[0]));
        }
    }
}
