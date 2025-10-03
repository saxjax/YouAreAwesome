//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Jakob Skov Søndergård on 03/10/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            Text("Hello, world!")
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
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
