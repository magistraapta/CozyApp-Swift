//
//  CityModel.swift
//  Slicing Cozy
//
//  Created by magistra aptam on 28/06/23.
//

import Foundation

struct City: Identifiable {
    let id = UUID()
    let name: String
    let image: String
}

struct CityList {
    static let PopularCities = [
        City(name: "Bandung", image: "bandung"),
        City(name: "Surabaya", image: "surabaya"),
        City(name: "Palembang", image: "palembang")
        
    ]
}
