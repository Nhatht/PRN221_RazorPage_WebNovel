using BO;
using NovelRepo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NovelService
{
    public class NovelsService : INovelsService
    {
        private INovelRepository _novelRepository = null;
        public NovelsService()
        {
            _novelRepository = new NovelRepository();
        }

        public void AddNovel(Novel novel) => _novelRepository.AddNovel(novel);

        public void DeleteNovel(int id) => _novelRepository.DeleteNovel(id);

        public List<Novel> GetAllNovles() => _novelRepository.GetAllNovles();

        public List<Novel> GetNovelByAuthorId(int id) => _novelRepository.GetNovelByAuthorId(id);

        public Novel GetNovelById(int id) => _novelRepository.GetNovelById(id);

        public void UpdateNovel(Novel novel) => _novelRepository.UpdateNovel(novel);

        public IEnumerable<Novel> GetNovels() => _novelRepository.GetNovels();

        public Task<Novel> GetNovelAsyncNoTracking(int id) => _novelRepository.GetNovelAsyncNoTracking(id);
        public List<Novel> GetNovelsByGenre(int genre) => _novelRepository.GetNovelsByGenre(genre);
        public List<Novel> SearchNovels(string query) => _novelRepository.SearchNovels(query);
        public List<Novel> SearchNovelsById(int id, string query) => _novelRepository.SearchNovelsById(id, query);
        public List<Novel> GetNovelsByGenre(int genre, int authorId) => _novelRepository.GetNovelsByGenre(genre, authorId);
    }
}
