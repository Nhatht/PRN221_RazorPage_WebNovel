using BO;
using DAO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NovelRepo
{
    public class NovelRepository : INovelRepository
    {
        public void AddNovel(Novel novel) => NovelDAO.Instance.AddNovel(novel);

        public void DeleteNovel(int id) => NovelDAO.Instance.DeleteNovel(id);

        public List<Novel> GetAllNovles() => NovelDAO.Instance.GetAllNovles();

        public Task<Novel> GetNovelAsyncNoTracking(int id) => NovelDAO.Instance.GetNovelAsyncNoTracking(id);

        public List<Novel> GetNovelByAuthorId(int id) => NovelDAO.Instance.GetNovelByAuthorId(id);

        public Novel GetNovelById(int id) => NovelDAO.Instance.GetNovelById(id);

        public IEnumerable<Novel> GetNovels() => NovelDAO.Instance.GetNovels();

        public void UpdateNovel(Novel novel) => NovelDAO.Instance.UpdateNovel(novel);
        public List<Novel> GetNovelsByGenre(int genre) => NovelDAO.Instance.GetNovelsByGenre(genre);
        public List<Novel> SearchNovels(string query) => NovelDAO.Instance.SearchNovels(query);
        public List<Novel> SearchNovelsById(int id, string query) => NovelDAO.Instance.SearchNovelsById(id, query);
        public List<Novel> GetNovelsByGenre(int genre, int authorId) => NovelDAO.Instance.GetNovelsByGenre(genre, authorId);
    }
}
