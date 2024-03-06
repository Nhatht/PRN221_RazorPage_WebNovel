using BO;
using DAO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NovelRepo
{
    public class GenreRepository : IGenreRepository
    {
        public bool AddGenre(Genre genre) => GenreDAO.Instance.AddGenre(genre);

        public void DeleteGenre(int id) => GenreDAO.Instance.DeleteGenre(id);

        public Genre GetGenreById(int id) => GenreDAO.Instance.GetGenreById(id);

        public List<Genre> GetAllGenres() => GenreDAO.Instance.GetAllGenres();

        public bool UpdateGenre(Genre genre) => GenreDAO.Instance.UpdateGenre(genre);

        public IEnumerable<Genre> GetGenres() => GenreDAO.Instance.GetGenres();
        public Genre CheckGenreExitByName(string name) => GenreDAO.Instance.CheckGenreExitByName(name);
    }
}
