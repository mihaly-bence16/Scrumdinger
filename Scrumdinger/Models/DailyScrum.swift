//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by Mihaly Bence on 29.01.2023.
//

import Foundation

struct DailyScrum {
    var title: String
    var attendees: [String]
    var lengthInMinutes: Int
    var theme: Theme
}

extension DailyScrum {
    static let sampleData: [DailyScrum] =
    [
        DailyScrum(title: "Design", attendees: ["Cathy", "Daisy", "Jonathan"], lengthInMinutes: 10, theme: .yellow),
        DailyScrum(title: "App Dev", attendees: ["Cathy", "Daisy", "Jonathan", "Darla"], lengthInMinutes: 10, theme: .orange),
        DailyScrum(title: "Web Dev", attendees: ["Chela", "Chris", "Christina", "Eden", "Karla"], lengthInMinutes: 10, theme: .yellow)
    ]
}
