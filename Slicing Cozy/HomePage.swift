//
//  HomePage.swift
//  Slicing Cozy
//
//  Created by magistra aptam on 28/06/23.
//

import SwiftUI

struct HomePage: View {
    var cities: [City] = CityList.PopularCities
    var body: some View {
        VStack(alignment: .leading,spacing: 30){
            VStack(alignment: .leading){
                Text("Explore now")
                    .font(.system(size: 24))
                Text("Mencari Kosan yang Cozy")
                    .foregroundColor(.secondary)
            }
            Text("Popular Cities")
                .font(.system(size: 24))
            ScrollView(.horizontal, showsIndicators: false){
                
            }
        }
        .padding()
        .navigationBarBackButtonHidden(true)
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
