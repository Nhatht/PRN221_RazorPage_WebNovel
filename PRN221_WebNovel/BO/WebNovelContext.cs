using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.Extensions.Configuration;

namespace BO
{
    public partial class WebNovelContext : DbContext
    {
        public WebNovelContext()
        {
        }

        public WebNovelContext(DbContextOptions<WebNovelContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Account> Accounts { get; set; } = null!;
        public virtual DbSet<Genre> Genres { get; set; } = null!;
        public virtual DbSet<Novel> Novels { get; set; } = null!;

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
                optionsBuilder.UseSqlServer(GetConnectionString());
            }
        }
        private string GetConnectionString()
        {
            IConfiguration config = new ConfigurationBuilder()
                .SetBasePath(Directory.GetCurrentDirectory())
                        .AddJsonFile("appsettings.json", true, true)
                        .Build();
            var strConn = config.GetConnectionString("DBDefault");
            return strConn;
        }
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Account>(entity =>
            {
                entity.ToTable("Account");

                entity.Property(e => e.Email).HasMaxLength(50);

                entity.Property(e => e.Gender).HasMaxLength(30);

                entity.Property(e => e.Name).HasMaxLength(250);

                entity.Property(e => e.Password)
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.Role).HasMaxLength(20);
            });

            modelBuilder.Entity<Genre>(entity =>
            {
                entity.ToTable("Genre");

                entity.Property(e => e.GenreName).HasMaxLength(250);
            });

            modelBuilder.Entity<Novel>(entity =>
            {
                entity.ToTable("Novel");

                entity.Property(e => e.Image).HasMaxLength(250);

                entity.Property(e => e.NovelName).HasMaxLength(250);

                entity.HasOne(d => d.Author)
                    .WithMany(p => p.Novels)
                    .HasForeignKey(d => d.AuthorId)
                    .HasConstraintName("FK__Novel__AuthorId__3B75D760");

                entity.HasOne(d => d.Genre)
                    .WithMany(p => p.Novels)
                    .HasForeignKey(d => d.GenreId)
                    .HasConstraintName("FK__Novel__GenreId__3A81B327");
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
