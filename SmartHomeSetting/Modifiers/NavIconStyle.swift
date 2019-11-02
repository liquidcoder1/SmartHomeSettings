//
//  NavIconStyle.swift
//  SmartHomeSetting
//
//  Created by John K on 26/10/2019.
//  Copyright © 2019 Liquidcoder. All rights reserved.
//

import SwiftUI

struct NavIconStyle: ViewModifier {
    func body(content: Content) -> some View {
        content.frame(width: 20, height: 20).foregroundColor(Color("bg"))
    }
}
