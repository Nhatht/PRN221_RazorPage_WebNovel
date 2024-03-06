using BO;
using System;
using System.Collections.Generic;

namespace PRN221_WebNovel.Models
{
    public partial class Genres
    {
        public Genres()
        {
            Novels = new HashSet<Novel>();
        }

        public int Id { get; set; }
        public string? GenreName { get; set; }

        public virtual ICollection<Novel> Novels { get; set; }
    }
}
