//
//  HotelRow.swift
//  Slicing Cozy
//
//  Created by magistra aptam on 25/06/23.
//

import SwiftUI

struct HotelRow: View {
    var hotels: [Hotel] = HotelList.recomended
    var body: some View {
        NavigationView{
            List(hotels, id: \.id){ hotel in
                HStack{
                    Image(hotel.image)
                    
                    VStack (alignment: .leading, spacing: 4) {
                        Text(hotel.name)
                            .fontWeight(.semibold)
                        Text("$ \(hotel.price)/month")
                            .fontWeight(.semibold)
                        Spacer()
                        Text(hotel.location)
                            .foregroundColor(.secondary)
                            .font(.subheadline)
                    }
                    .padding(.vertical)
                }
            }
            .navigationTitle("hotel recomendation")
        }
    }
}

struct HotelRow_Previews: PreviewProvider {
    static var previews: some View {
        HotelRow()
    }
}
