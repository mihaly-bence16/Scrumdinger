//
//  CardView.swift
//  Scrumdinger
//
//  Created by Mihaly Bence on 29.01.2023.
//

import Foundation
import SwiftUI

struct CardView: View {
    let scrum: DailyScrum
    var body: some View {
        VStack(alignment: .leading) {
            Text(scrum.title)
                .font(.headline)
                .accessibilityAddTraits(.isHeader)
            Spacer()
            HStack {
                Label("\(scrum.attendees.count)", systemImage: "person.3")
                    .accessibilityLabel("\(scrum.attendees.count) attendees")
                Spacer()
                Label("\(scrum.lengthInMinutes)", systemImage: "clock")
                    .labelStyle(.trailingIcon)
                    .accessibilityLabel("\(scrum.lengthInMinutes) minute meeting")
            }
            .font(.caption)
        }
        .padding()
        .foregroundColor(scrum.theme.accentColor)
    }
}

struct CardView_Preview: PreviewProvider{
    static var scrum: DailyScrum =  DailyScrum.sampleData[0]
    static var previews: some View{
        CardView(scrum: scrum)
            .background(scrum.theme.mainColor)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
