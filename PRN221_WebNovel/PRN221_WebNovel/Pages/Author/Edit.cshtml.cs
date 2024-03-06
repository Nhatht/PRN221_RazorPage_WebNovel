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
using PRN221_WebNovel.Models;
using Microsoft.EntityFrameworkCore.Metadata.Internal;
using System.Drawing;

namespace PRN221_WebNovel.Pages.Author
{
    public class EditModel : PageModel
    {
        private readonly INovelsService _novelsService = null;
        private readonly IGenreService _genreService = null;
        private readonly IPhotoService _photoService = null;

        public EditModel(INovelsService iNovelService, IPhotoService photoService, IGenreService genreService)
        {
            _novelsService = iNovelService;
            _genreService = genreService;
            _photoService = photoService;
        }

        [BindProperty]
        public EditNovelModels? Novel { get; set; } = default!;
        public async Task<IActionResult> OnGetAsync(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var novel = _novelsService.GetNovelById((int)id);
            Novel = new EditNovelModels
            {
                NovelName = novel.NovelName,
                Content = novel.Content,
                GenreId = novel.GenreId,
                URL = novel.Image
            };
            if (novel == null)
            {
                return NotFound();
            }

            Novel = Novel;
            //TempData["NovelVM"] = novelVM;
            ViewData["GenreId"] = new SelectList(_genreService.GetAllGenres(), "Id", "GenreName");
            return Page();
            //return View(novelVM);
        }

        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see https://aka.ms/RazorPagesCRUD.
        public async Task<IActionResult> OnPostAsync(int id)
        {

            if (!ModelState.IsValid)
            {
                ModelState.AddModelError("", "Invalid input");
                return Page();
            }
            //novelVM = TempData["NovelVM"] as EditNovelModels;
            var userNovel = await _novelsService.GetNovelAsyncNoTracking(id);

            if (userNovel != null)
            {
                //try
                //{
                    
                //}
                //catch (Exception e)
                //{
                //    ModelState.AddModelError("", e.Message);
                //    return Page();
                //}
                var check = Novel.Image;
                var check1 = userNovel.Image;
                var novel = new Novel();
                if (Novel.Image != null)
                {   
                    await _photoService.DeletePhotoAsync(userNovel.Image);
                    var photoResult = await _photoService.AddPhotoAsync(Novel.Image);
                    novel.Id = id;
                    novel.NovelName = Novel.NovelName;
                    novel.Content = Novel.Content;
                    novel.GenreId = Novel.GenreId;
                    novel.Image = photoResult.Url.ToString();
                    
                }
                else
                {
                    //var novel = new Novel();
                    novel.Id = id;
                    novel.NovelName = Novel.NovelName;
                    novel.Content = Novel.Content;
                    novel.GenreId = Novel.GenreId;
                    novel.Image = userNovel.Image;
                    //_novelsService.UpdateNovel(novel);
                }
                _novelsService.UpdateNovel(novel);
                //Image = photoResult.Url.ToString(),

                return RedirectToPage("./Index");
            }
            return Page();

        }

        private bool NovelExists(int id)
        {
            return _novelsService.GetNovelById(id) != null;
        }
    }
}
