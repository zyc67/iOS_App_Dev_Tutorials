//
//  ContentView.swift
//  Scrumdinger
//
//  Created by apple on 2022/9/15.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
        VStack {
            ProgressView(value: 5, total: 15)
//            ProgressView(value: 10)
//            ProgressView(value: 5) {
//                Text("aaaa")
//                Text("nnnn")
//            }
//            ProgressView(value: 5, total: 8) {
//                Text("aaaa")
//            }
            HStack {
                VStack(alignment: .leading) {
                    Text("Seconds Elapsed")
                        .font(.caption)
                    Label("300", systemImage: "hourglass.bottomhalf.fill")
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text("Seconds Remaining")
                        .font(.caption)
                    Label("600", systemImage: "hourglass.bottomhalf.fill")
                }
            }
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("Time remaining")
            .accessibilityValue("10 minutes")
            Circle()
                .strokeBorder(lineWidth: 24, antialiased: false)
            
            HStack {
                Text("Speaker 1 of 3")
//                Button(action: {}) {
//                    Image(systemName: "forward.fill")
//                }
                Spacer()
                Button {
                    print("aaaaa")
                } label: {
//                    Text("bbbb")
                    Image(systemName: "forward.fill")
                }
                .accessibilityLabel("Next speaker")
            }
        }
        .padding()
    }
}

struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView()
    }
}
