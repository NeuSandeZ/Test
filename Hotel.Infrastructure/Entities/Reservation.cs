﻿using System.ComponentModel.DataAnnotations;

namespace Hotel.Infrastructure.Entities;

public class Reservation
{
    [Key]
    public int Id { get; set; }
    [Required]
    public DateTime CheckInDate { get; set; }
    [Required]
    public DateTime CheckOutDate { get; set; }
    public int? TotalCost { get; set; }

    public Room Room { get; set; } = default!;
    public int RoomId { get; set; }
    
    public Guest Guest { get; set; } = default!;
    public int GuestId { get; set; }
    
    public bool? IsDeleted { get; set; }
}