﻿using Hotel.Domain.Entities;
using Microsoft.EntityFrameworkCore;

namespace Hotel.Infrastructure;

public class HotelDbContext : DbContext
{
    public HotelDbContext(DbContextOptions<HotelDbContext> options) : base(options)
    {
    }

    public DbSet<Address> Addresses { get; set; }
    public DbSet<Guest> Guests { get; set; }
    public DbSet<Payment> Payments { get; set; }
    public DbSet<PaymentType> PaymentTypes { get; set; }
    public DbSet<Reservation> Reservations { get; set; }
    public DbSet<Room> Rooms { get; set; }
    public DbSet<RoomStatus> RoomStatus { get; set; }
    public DbSet<RoomType> RoomTypes { get; set; }
    public DbSet<Staff> Staves { get; set; }
    public DbSet<StaffRole> StaffRoles { get; set; }
    public DbSet<Tasks> Tasks { get; set; }
    public DbSet<ReservationStatus> ReservationsStatus { get; set; }
    public DbSet<RoomAmenity> Amenities { get; set; }
    public DbSet<CheckIns> CheckIns { get; set; }
    public DbSet<CheckOuts> CheckOuts { get; set; }
    public DbSet<RoomPromotions> RoomPromotions { get; set; }

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        
        modelBuilder.Entity<CheckIns>()
            .HasOne(a => a.Reservation)
            .WithOne()
            .OnDelete(DeleteBehavior.NoAction);

        modelBuilder.Entity<CheckIns>()
            .HasOne(a => a.CheckOuts)
            .WithOne(a => a.CheckIns)
            .HasForeignKey<CheckOuts>(a => a.CheckInsId);
        
        base.OnModelCreating(modelBuilder);
    }
}