using BO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAO
{
    public class GenreDAO
    {
        private static GenreDAO instance;
        private readonly WebNovelContext dbContext = null;
        public GenreDAO()
        {
            if (dbContext == null)
            {
                dbContext = new WebNovelContext();
            }
        }
        public static GenreDAO Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new GenreDAO();
                }
                return instance;
            }
        }
        public List<Genre> GetAllGenres()
        {
            return dbContext.Genres.ToList();
        }
        public Genre GetGenreById(int id)
        {
            return dbContext.Genres.Find(id);
        }
        public Genre CheckGenreExitByName(string name)
        {
            return dbContext.Genres.Where(g => g.GenreName == name).FirstOrDefault();
        }
        public bool AddGenre(Genre genre)
        {
            Genre genre1 = CheckGenreExitByName(genre.GenreName);
            if(genre1 != null)
            {
                return false;
            }
            dbContext.Genres.Add(genre);
            dbContext.SaveChanges();
            return true;
        }
        public bool UpdateGenre(Genre genre)
        {
            Genre genre1 = CheckGenreExitByName(genre.GenreName);
            if (genre1 != null)
            {
                return false;
            }
            Genre oldGenre = GetGenreById(genre.Id);
            oldGenre.GenreName = genre.GenreName;
            dbContext.SaveChanges();
            return true;
        }
        public void DeleteGenre(int id)
        {
            Genre genre = GetGenreById(id);
            dbContext.Genres.Remove(genre);
            dbContext.SaveChanges();
        }
        public IEnumerable<Genre> GetGenres() => dbContext.Genres.ToList();
    }
}
