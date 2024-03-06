using BO;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NovelService
{
    public interface IGenreService
    {
        public List<Genre> GetAllGenres();
        public Genre GetGenreById(int id);
        public bool AddGenre(Genre genre);
        public bool UpdateGenre(Genre genre);
        public void DeleteGenre(int id);
        public IEnumerable<Genre> GetGenres();
        public Genre CheckGenreExitByName(string name);
    }
}
