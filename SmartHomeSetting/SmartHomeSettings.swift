//
//  ContentView.swift
//  SmartHomeSetting
//
//  Created by John K on 24/10/2019.
//  Copyright © 2019 Liquidcoder. All rights reserved.
//

import SwiftUI

struct SmartHomeSettings: View {
    
    @State var brightnessLevel: CGFloat = 0.9
    private let places = Place.getDummyData()
    @State var selectLightColor = "justPurple"
    @State var selectedPlace = Place()
    @State var placeName: String  = ""
    @State var numberOfLights: String  = ""

    
    var body: some View {
        return NavigationView {
                HStack {
                    PlacesListComponent(brightnessLevel: self.$brightnessLevel, places: self.places, selectLightColor: self.$selectLightColor, selectedPlace: self.$selectedPlace)
                    SliderComponentt(selectLightColor: self.$selectLightColor, brightnessLevel: self.$brightnessLevel)
                    
                }.navigationBarItems(leading: Button(action: {
                }) {
                    Image(systemName: "arrow.left").resizable().modifier(NavIconStyle())
                }, trailing: trailingButton())

        }
    }
    
    private func trailingButton() -> some View{
        return Button(action: {
            print("add new place")
        }) {
            Image(systemName: "plus")
                .resizable()
                .modifier(NavIconStyle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SmartHomeSettings().environment(\.colorScheme, .dark)
    }
}
