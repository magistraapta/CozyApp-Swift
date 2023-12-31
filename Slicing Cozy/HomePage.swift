//
//  HomePage.swift
//  Slicing Cozy
//
//  Created by magistra aptam on 28/06/23.
//

import SwiftUI

struct HomePage: View {
    var cities: [City] = CityList.PopularCities
    var hotels: [Hotel] = HotelList.hotelRecomendation
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
                HStack(spacing: 20){
                    ForEach(cities) { city in
                        ZStack{
                            VStack(){
                                Image(city.image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 120)
                                Spacer()
                                Text(city.name)
                                    .foregroundColor(.black)
                                    .padding(.bottom)
                            }
                        }
                        .foregroundColor(.clear)
                        .frame(width: 120, height: 150)
                        .background(Color(red: 0.96, green: 0.97, blue: 0.97))
                        .cornerRadius(18)
                    }
                }
            }
            VStack(alignment: .leading, spacing: 30){
                Text("Recomended Space")
                    .font(.system(size: 16))
                ForEach(hotels) { hotel in
                    HStack(spacing: 30){
                        Image(hotel.image)
                        VStack(alignment:.leading, spacing: 16){
                            VStack(alignment:.leading){
                                Text(hotel.name)
                                    .fontWeight(.medium)
                                    .font(.system(size:18))
                                Text("$\(hotel.price) / month")
                                    .font(.system(size:16))
                            }
                            Text(hotel.location)
                                .foregroundColor(.secondary)
                                .font(.system(size:14))
                        }
                    }
                }
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
