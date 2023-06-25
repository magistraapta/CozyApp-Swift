//
//  Hotel.swift
//  Slicing Cozy
//
//  Created by magistra aptam on 25/06/23.
//

import Foundation

struct Hotel: Identifiable{
    let id = UUID()
    var name: String
    var image: String
    var price: String
    var location: String
}


struct HotelList{
    static let recomended = [
        Hotel(name: "kuretekaso hott", image: "kuretekaso", price: "52", location: "bandung, germany"),
        Hotel(name: "Roemah Nenek", image: "Roemah", price: "11", location: "seattle, bogor"),
        Hotel(name: "Darling How", image: "darrling", price: "20", location: "jakarta, indonesia"),
    ]
}

