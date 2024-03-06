using BO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NovelRepo
{
    public interface INovelRepository
    {
        public List<Novel> GetAllNovles();
        public Novel GetNovelById(int id);
        public List<Novel> GetNovelByAuthorId(int id);
        public void AddNovel(Novel novel);
        public void UpdateNovel(Novel novel);
        public void DeleteNovel(int id);
        public IEnumerable<Novel> GetNovels();
        Task<Novel> GetNovelAsyncNoTracking(int id);
        public List<Novel> GetNovelsByGenre(int genre);
        public List<Novel> SearchNovels(string query);
        public List<Novel> SearchNovelsById(int id, string query);
        public List<Novel> GetNovelsByGenre(int genre, int authorId);
    }
}
