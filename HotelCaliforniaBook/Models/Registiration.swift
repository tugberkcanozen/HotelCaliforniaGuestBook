//
//  Registiration.swift
//  HotelCaliforniaBook
//
//  Created by Tuğberk Can Özen on 29.05.2022.
//

import Foundation

struct Registration {
    
    // MARK: - Properties
    var firstName: String
    var lastName: String
    var emailAdress: String
   
    var checkInDate: Date
    var checkOutDate: Date
    
    var numberOfAdults: Int
    var numberOfChildren: Int
    
    var roomType: RoomType
    var wifi: Bool
    
    // MARK: - Functions
    func fullName() -> String {
        return firstName + " " + lastName
    }
}



