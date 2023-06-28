//
//  HotelModel.swift
//  Slicing Cozy
//
//  Created by magistra aptam on 28/06/23.
//

import Foundation

struct Hotel: Identifiable {
    var id = UUID()
    let name: String
    let price: String
    let location: String
    let image: String
}


struct HotelList{
    static let hotelRecomendation = [
        Hotel(name: "Kuretekaso Hott", price: "52", location: "Bandung, West Java", image: "kuretekaso"),
        Hotel(name: "Roemah Nenek", price: "11", location: "Bogor, West Java", image: "Roemah"),
        Hotel(name: "Darrling How", price: "20", location: "Jakarta, Indonesia", image: "darrling")
    ]
}
