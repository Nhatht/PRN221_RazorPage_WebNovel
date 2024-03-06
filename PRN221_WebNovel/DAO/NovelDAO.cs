using BO;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAO
{
    public class NovelDAO
    {
        private static NovelDAO instance;
        private readonly WebNovelContext dbContext = null;
        public NovelDAO()
        {
            if (dbContext == null)
            {
                dbContext = new WebNovelContext();
            }
        }
        public static NovelDAO Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new NovelDAO();
                }
                return instance;
            }
        }
        public List<Novel> GetAllNovles()
        {
            return dbContext.Novels.Include(x => x.Genre).Include(x => x.Author).ToList();
        }
        public Novel GetNovelById(int id)
        {
            return dbContext.Novels.Where(n => n.Id == id).FirstOrDefault();
        }
        public List<Novel> GetNovelByAuthorId(int id)
        {
            return dbContext.Novels.Where(n => n.AuthorId == id).ToList();
        }
        public void AddNovel(Novel novel)
        {
            Novel novles = GetNovelById(novel.Id);
            if (novles == null)
            {
                dbContext.Novels.Add(novel);
                dbContext.SaveChanges();
                return;
            }
        }
        public void UpdateNovel(Novel novel)
        {
            Novel novel1 = GetNovelById(novel.Id);
            if (novel1 != null)
            {
                novel1.NovelName = novel.NovelName;
                novel1.Image = novel.Image;
                novel1.Content = novel.Content;
                novel1.GenreId = novel.GenreId;
                dbContext.SaveChanges();
            }
        }

        public void DeleteNovel(int id)
        {
            Novel novel = GetNovelById(id);
            if (novel != null)
            {
                dbContext.Novels.Remove(novel);
                dbContext.SaveChanges();
            }
        }
        public IEnumerable<Novel> GetNovels() => dbContext.Novels.Include(x => x.Genre).ToList();
        public async Task<Novel> GetNovelAsyncNoTracking(int id)
        {
            return await dbContext.Novels.AsNoTracking().FirstOrDefaultAsync(i => i.Id == id);
        }
        public List<Novel> GetNovelsByGenre(int genre)
        {
            return dbContext.Novels.Where(n => n.GenreId == genre).ToList();
        }
        public List<Novel> SearchNovels(string query)
        {
            return dbContext.Novels
                .Where(n => n.NovelName.Contains(query))
                .ToList();
        }
        public List<Novel> SearchNovelsById(int id, string query)
        {
            return dbContext.Novels
                .Where(n => n.AuthorId == id && n.NovelName.Contains(query))
                .ToList();
        }
        public List<Novel> GetNovelsByGenre(int genre, int authorId)
        {
            return dbContext.Novels.Where(n => n.GenreId == genre && n.AuthorId == authorId).ToList();
        }
    }
}
