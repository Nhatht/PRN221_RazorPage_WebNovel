using BO;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NovelRepo
{
    public interface IGenreRepository
    {
        List<Genre> GetAllGenres();
        Genre GetGenreById(int id);
        bool AddGenre(Genre genre);
        bool UpdateGenre(Genre genre);
        void DeleteGenre(int id);
        public IEnumerable<Genre> GetGenres();
        Genre CheckGenreExitByName(string name);
    }
}
