using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace GSTOCK_API.Models;

public partial class EcommerceDataDbContext : DbContext
{
    public EcommerceDataDbContext()
    {
    }

    public EcommerceDataDbContext(DbContextOptions<EcommerceDataDbContext> options)
        : base(options)
    {
    }

    public virtual DbSet<Product> Products { get; set; }

        //    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        //#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
        //        => optionsBuilder.UseSqlServer("Server=.\\SQLEXPRESS;Initial Catalog=Ecommerce;Trusted_Connection=True;Persist Security Info=True;Encrypt=true;TrustServerCertificate=yes");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
