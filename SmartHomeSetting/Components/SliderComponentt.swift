//
//  SliderComponentt.swift
//  SmartHomeSetting
//
//  Created by John K on 31/10/2019.
//  Copyright © 2019 Liquidcoder. All rights reserved.
//

import SwiftUI

struct SliderComponentt: View {
    @Binding var selectLightColor: String
    @Binding var brightnessLevel: CGFloat
    
    var body: some View {
        GeometryReader { gr in
            VStack {
                Image(systemName: "sun.min.fill")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(Color(self.selectLightColor))
                    .shadow(color: Color(self.selectLightColor), radius: 7, x: 0, y: 0)
                    .opacity(0.2 + Double(self.brightnessLevel))
                
                SliderView(lightColor: self.$selectLightColor, onChange: { value in
                    self.brightnessLevel = value
                })
                    .frame(height: gr.size.height * 0.7)
                Image(systemName: "sun.max")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(Color(self.selectLightColor))
            }
        }
    }
}

struct SliderComponentt_Previews: PreviewProvider {
    static var previews: some View {
        SliderComponentt(selectLightColor: .constant("neatRed"), brightnessLevel: .constant(0.5))
    }
}
