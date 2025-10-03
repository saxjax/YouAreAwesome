    //
    //  ContentView.swift
    //  YouAreAwesome
    //
    //  Created by Jakob Skov Søndergård on 03/10/2025.
    //

import SwiftUI

struct ContentView: View {
    @State var selectedMessage: MessageIndex = MessageIndex.one

    enum MessageIndex: Int, CaseIterable {
        case one, two, three

        func next() -> MessageIndex {
            guard let currentIndex = Self.allCases.firstIndex(of: self) else {
                return .one
            }
            let nextIndex = (currentIndex + 1) % Self.allCases.count
            return Self.allCases[nextIndex]
        }
    }
    let messages = ["Hello, World!", "You are awesome!", "Check it out!"]
    var body: some View {

        VStack {
            Text("YOU ARE AWESOME!")
                .font(.largeTitle)
                .fontWeight(.thin)
                .foregroundStyle(.blue)
            HStack {
                Image(systemName: "swiftdata")
                    .resizable()
                    .scaledToFit()
                    .foregroundStyle(.tint)
                Image(systemName: "swift")
                    .resizable()
                    .scaledToFit()
                    .foregroundStyle(.tint)
                Image(systemName: "swiftdata")
                    .resizable()
                    .scaledToFit()
                    .foregroundStyle(.tint)
            }
            Spacer()
            Button(messages[selectedMessage.rawValue]){
                selectedMessage = selectedMessage.next()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
