//
//  ContentView.swift
//  Slicing Cozy
//
//  Created by magistra aptam on 25/06/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack(alignment: .leading, spacing: 30){
                Image("logo")
                VStack(alignment: .leading, spacing: 10){
                    Text("Find Cozy House \nto Stay and Happy")
                        .fontWeight(.medium)
                        .font(.system(size: 24))
                    Text("Stop membuang banyak waktu \npada tempat yang tidak habitable")
                        .font(.system(size: 16))
                        .foregroundColor(.secondary)
                }
                ZStack {
                    Rectangle()
                      .foregroundColor(.clear)
                      .frame(width: 210, height: 50)
                      .background(Color(red: 0.35, green: 0.26, blue: 0.75))
                      .cornerRadius(17)
                    NavigationLink(destination: HomePage()){
                        Text("Explore now")
                    }
                    .navigationBarBackButtonHidden(true)
                    .foregroundColor(.white)
                }
                .frame(width: 210, height: 50)
                Spacer()
                ZStack {
                    Image("bottom")

                }
            }
            .edgesIgnoringSafeArea(.bottom)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
