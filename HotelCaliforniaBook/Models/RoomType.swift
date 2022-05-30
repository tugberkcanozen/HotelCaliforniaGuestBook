//
//  RoomType.swift
//  HotelCaliforniaBook
//
//  Created by Tuğberk Can Özen on 29.05.2022.
//

import Foundation

struct RoomType: Equatable {
    
    // MARK: - Properties
    var id: Int
    var name: String
    var shortName: String
    var price: Int
    
    // MARK: - Function
    static func ==(lhs: RoomType, rhs: RoomType) -> Bool {
        return lhs.id == rhs .id
    }
    
    static var all: [RoomType] {
        return [
            RoomType(id: 0, name: "Two Queens", shortName: "2Q", price: 400),
            RoomType(id: 1, name: "One King", shortName: "K", price: 750),
            RoomType(id: 2, name: "Suit", shortName: "S", price: 1000)
        ]
    }
}
