//
//  Place.swift
//  SmartHomeSetting
//
//  Created by John K on 26/10/2019.
//  Copyright © 2019 Liquidcoder. All rights reserved.
//

import SwiftUI


struct Place:  Hashable, Identifiable{
    
    var id = UUID()
    let name: String
    let numberOfLights: Int
    let lightColor: String
    let brightnessLevel: CGFloat
    
    init(name: String = "", numberOfLights: Int = 0, lightColor: String = "", brightnessLevel: CGFloat = 0) {
        self.name = name
        self.numberOfLights = numberOfLights
        self.lightColor = lightColor
        self.brightnessLevel = brightnessLevel
    }
    
    
    static func getDummyData() -> [Place] {
        [
            Place(name: "Work", numberOfLights: 5, lightColor: "brightGreen", brightnessLevel: 0.7),
            Place(name: "Floor", numberOfLights: 11, lightColor: "heavenBlue", brightnessLevel: 0.2),
            Place(name: "Kitchen", numberOfLights: 8, lightColor: "justPurple", brightnessLevel: 0.4),
            Place(name: "Bedroom", numberOfLights: 15, lightColor: "neatRed", brightnessLevel: 0.8),
            Place(name: "Living Room", numberOfLights: 17, lightColor: "notYellow", brightnessLevel: 0.5)
        ]
    }
    
}
