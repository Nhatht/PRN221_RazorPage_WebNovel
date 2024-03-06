using BO;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using NovelService;
using System.Linq;
using System.Threading.Tasks;
using PRN221_WebNovel.Models;
namespace PRN221_WebNovel.Components
{
    public class GenreMenuViewComponent : ViewComponent
    {
        private readonly WebNovelContext _context;
        private readonly IGenreService _genreService;

        public GenreMenuViewComponent(WebNovelContext context, IGenreService genreService)
        {
            _context = context;
            _genreService = genreService;
        }

        public async Task<IViewComponentResult> InvokeAsync()
        {
            //var genres = _genreService.GetGenres();
            //return View(genres);
            var genres = await _context.Genres.ToListAsync();
            return View(genres);
        }
    }
}