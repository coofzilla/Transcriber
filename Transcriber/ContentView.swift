//
//  ContentView.swift
//  Transcriber
//
//  Created by Jeric Hernandez on 12/31/23.
//

import SwiftUI

struct ContentView: View {
    @State private var isRecording = false

    var body: some View {
        VStack {
            Spacer()

            // TODO: Placeholder for the text display box
            Text("Text Display Box")
                .frame(maxWidth: .infinity, minHeight: 150)
                .background(Color.gray.opacity(0.3))
                .padding()

            // TODO: Placeholder for audio wave box
            Text("Audio Wave Box")
                .frame(maxWidth: .infinity, minHeight: 150)
                .background(Color.gray.opacity(0.3))
                .padding()

            Spacer()

            HStack {
                Spacer()
                RecordButton(isRecording: $isRecording)
                Spacer()
            }
            .scenePadding(.top)
            .background(Color(red: 26/255, green: 28/255, blue: 27/255))
            .frame(maxWidth: .infinity)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black)
        .edgesIgnoringSafeArea(.horizontal)
    }
}

#Preview {
    ContentView()
}
