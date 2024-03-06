using BO;
using NovelRepo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NovelService
{
    public class GenreService : IGenreService
    {
        private IGenreRepository _genreRepository = null;
        public GenreService()
        {
            _genreRepository = new GenreRepository();
        }

        public bool AddGenre(Genre genre) => _genreRepository.AddGenre(genre);
        public void DeleteGenre(int id) => _genreRepository.DeleteGenre(id);
        public List<Genre> GetAllGenres() => _genreRepository.GetAllGenres();
        public Genre GetGenreById(int id) => _genreRepository.GetGenreById(id);
        public IEnumerable<Genre> GetGenres() => _genreRepository.GetGenres();
        public bool UpdateGenre(Genre genre) => _genreRepository.UpdateGenre(genre);
        public Genre CheckGenreExitByName(string name) => _genreRepository.CheckGenreExitByName(name);
    }
}
