﻿namespace Hotel.Application.DTOS.ReservationListingDto;

public class AvailableRoomsDto
{
    public int RoomId { get; set; }
    public int RoomNumber { get; set; }
    public int FloorNumber { get; set; }

    public int DiscountAmount { get; set; }
    public int PricePerNight { get; set; }

    public string RoomCode => $"{FloorNumber + " " + RoomNumber}";
}