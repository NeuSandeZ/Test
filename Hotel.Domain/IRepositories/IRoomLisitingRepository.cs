﻿using Hotel.Domain.Entities;

namespace Hotel.Domain.IRepositories;

public interface IRoomListingRepository
{
    Task<IEnumerable<Room>> GetAllRooms();
    
    Task CreateRoom(Room room);

    IEnumerable<RoomType> GetRoomTypes();

    void AddPromotion(RoomPromotions roomPromotions);
    
    void EditPromotion(RoomPromotions roomPromotions);
}