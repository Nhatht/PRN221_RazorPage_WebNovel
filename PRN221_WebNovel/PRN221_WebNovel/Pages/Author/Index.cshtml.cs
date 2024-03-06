using BO;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Newtonsoft.Json;
using NovelService;
using PRN221_WebNovel.Models;

namespace PRN221_WebNovel.Pages.Author
{
    public class IndexModel : PageModel
    {
        private readonly INovelsService _novelsService = null;
        public IndexModel(INovelsService iNovelService)
        {
            _novelsService = iNovelService;
        }
        public IList<Novel> Novels { get; set; } = default!;
        public int AuthorId { get; set; }

        public async Task OnGetAsync(int genre, string query)
        {
            if(HttpContext.Session.GetString("loginUser") != null)
            {
                var loginUser = JsonConvert.DeserializeObject<AccountViewmodel>(HttpContext.Session.GetString("loginUser"));
                AuthorId = loginUser.Id;
                if (genre != null && genre != 0)
                {
                    Novels = _novelsService.GetNovelsByGenre(genre, AuthorId);
                }
                else
                {
                    if (!string.IsNullOrEmpty(query))
                    {
                        Novels = _novelsService.SearchNovelsById(AuthorId,query);
                    }
                    else
                    {
                        Novels = _novelsService.GetNovelByAuthorId(AuthorId);
                    }
                }
                
            }
            else
            {
                RedirectToPage("/Login");
            }
        }
    }
}
