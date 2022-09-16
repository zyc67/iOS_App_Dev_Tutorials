//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by apple on 2022/9/15.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: DailyScrum.sampleData)
            }
        }
    }
}
