using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace QuanLyKho.Models;

public partial class QuanlykhoContext : DbContext
{
    public QuanlykhoContext()
    {
    }

    public QuanlykhoContext(DbContextOptions<QuanlykhoContext> options)
        : base(options)
    {
    }

    public virtual DbSet<Customer> Customers { get; set; }

    public virtual DbSet<Input> Inputs { get; set; }

    public virtual DbSet<InputInfo> InputInfos { get; set; }

    public virtual DbSet<Object> Objects { get; set; }

    public virtual DbSet<Output> Outputs { get; set; }

    public virtual DbSet<OutputInfo> OutputInfos { get; set; }

    public virtual DbSet<Supplier> Suppliers { get; set; }

    public virtual DbSet<Unit> Units { get; set; }

    public virtual DbSet<User> Users { get; set; }

    public virtual DbSet<UserRole> UserRoles { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseSqlServer("Server=.\\DUNGLE;Database=Quanlykho;Trusted_Connection=true;Encrypt=false;TrustServerCertificate=true");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Customer>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__Customer__3214EC07521D61E9");

            entity.Property(e => e.Address).HasMaxLength(100);
            entity.Property(e => e.ContractDate).HasColumnType("datetime");
            entity.Property(e => e.DisplayName).HasMaxLength(100);
            entity.Property(e => e.Email).HasMaxLength(200);
            entity.Property(e => e.Phone).HasMaxLength(20);
        });

        modelBuilder.Entity<Input>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__Input__3214EC07D008436F");

            entity.ToTable("Input");

            entity.Property(e => e.Id).HasMaxLength(128);
            entity.Property(e => e.DateInput).HasColumnType("datetime");
        });

        modelBuilder.Entity<InputInfo>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__InputInf__3214EC075FEC1F80");

            entity.ToTable("InputInfo");

            entity.Property(e => e.Id).HasMaxLength(128);
            entity.Property(e => e.IdInput).HasMaxLength(128);
            entity.Property(e => e.IdObject).HasMaxLength(128);
            entity.Property(e => e.InputPrice).HasDefaultValueSql("((0))");
            entity.Property(e => e.OutputPrice).HasDefaultValueSql("((0))");

            entity.HasOne(d => d.IdInputNavigation).WithMany(p => p.InputInfos)
                .HasForeignKey(d => d.IdInput)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__InputInfo__IdInp__37A5467C");

            entity.HasOne(d => d.IdObjectNavigation).WithMany(p => p.InputInfos)
                .HasForeignKey(d => d.IdObject)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__InputInfo__Statu__36B12243");
        });

        modelBuilder.Entity<Object>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__Objects__3214EC0750AA369A");

            entity.Property(e => e.Id).HasMaxLength(128);
            entity.Property(e => e.DisplayName).HasMaxLength(200);
            entity.Property(e => e.Qrcode).HasColumnName("QRCode");

            entity.HasOne(d => d.IdSupplierNavigation).WithMany(p => p.Objects)
                .HasForeignKey(d => d.IdSupplier)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__Objects__IdSuppl__2B3F6F97");

            entity.HasOne(d => d.IdUnitNavigation).WithMany(p => p.Objects)
                .HasForeignKey(d => d.IdUnit)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__Objects__BarCode__2A4B4B5E");
        });

        modelBuilder.Entity<Output>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__Output__3214EC07E47F7283");

            entity.ToTable("Output");

            entity.Property(e => e.Id).HasMaxLength(128);
            entity.Property(e => e.DateOutput).HasColumnType("datetime");
        });

        modelBuilder.Entity<OutputInfo>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__OutputIn__3214EC07AF07887F");

            entity.ToTable("OutputInfo");

            entity.Property(e => e.Id).HasMaxLength(128);
            entity.Property(e => e.IdInputInfo).HasMaxLength(128);
            entity.Property(e => e.IdObject).HasMaxLength(128);
            entity.Property(e => e.IdOutput).HasMaxLength(128);

            entity.HasOne(d => d.IdCustomerNavigation).WithMany(p => p.OutputInfos)
                .HasForeignKey(d => d.IdCustomer)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__OutputInf__IdCus__3F466844");

            entity.HasOne(d => d.IdInputInfoNavigation).WithMany(p => p.OutputInfos)
                .HasForeignKey(d => d.IdInputInfo)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__OutputInf__IdInp__3E52440B");

            entity.HasOne(d => d.IdObjectNavigation).WithMany(p => p.OutputInfos)
                .HasForeignKey(d => d.IdObject)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__OutputInf__IdObj__3D5E1FD2");

            entity.HasOne(d => d.IdOutputNavigation).WithMany(p => p.OutputInfos)
                .HasForeignKey(d => d.IdOutput)
                .HasConstraintName("FK__OutputInf__Statu__3C69FB99");
        });

        modelBuilder.Entity<Supplier>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__Supplier__3214EC07001C9FC9");

            entity.Property(e => e.Address).HasMaxLength(100);
            entity.Property(e => e.ContractDate).HasColumnType("datetime");
            entity.Property(e => e.DisplayName).HasMaxLength(100);
            entity.Property(e => e.Email).HasMaxLength(200);
            entity.Property(e => e.Phone).HasMaxLength(20);
        });

        modelBuilder.Entity<Unit>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__Units__3214EC07CF92B52E");

            entity.Property(e => e.DisplayName).HasMaxLength(100);
        });

        modelBuilder.Entity<User>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__Users__3214EC07512C801B");

            entity.Property(e => e.DisplayName).HasMaxLength(200);
            entity.Property(e => e.Password).HasMaxLength(100);
            entity.Property(e => e.UserName).HasMaxLength(100);

            entity.HasOne(d => d.IdRoleNavigation).WithMany(p => p.Users)
                .HasForeignKey(d => d.IdRole)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__Users__IdRole__300424B4");
        });

        modelBuilder.Entity<UserRole>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__UserRole__3214EC0767EE397C");

            entity.ToTable("UserRole");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
