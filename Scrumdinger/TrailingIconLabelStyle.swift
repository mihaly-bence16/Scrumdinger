//
//  TrailingIconLabelStyle.swift
//  Scrumdinger
//
//  Created by Mihaly Bence on 29.01.2023.
//

import Foundation
import SwiftUI

struct TrailingIconLabelStyleL: LabelStyle{
    func makeBody(configuration: Configuration) -> some View {
        HStack{
            configuration.title
            configuration.icon
        }
    }
}

extension LabelStyle where Self == TrailingIconLabelStyleL{
    static var trailingIcon: Self { Self() }
}
