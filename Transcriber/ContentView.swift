//
//  ContentView.swift
//  Transcriber
//
//  Created by Jeric Hernandez on 12/31/23.
//

import SwiftUI

struct ContentView: View {
    @State private var isRecording = false
    @StateObject var speechRecognizer = SpeechRecognizer()

    var body: some View {
        VStack {
            Spacer()
            ScrollView {
                Text("Transcribed Text:")
                    .font(.largeTitle)
                Text(speechRecognizer.transcript)
                    .padding()
            }
            .frame(maxWidth: .infinity, minHeight: 150)
            .background(Color.gray.opacity(0.3))

            HStack {
                Spacer()
                RecordButton(isRecording: $isRecording) {
                    if isRecording {
                        startRecording()
                    } else {
                        stopRecording()
                    }
                }
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

    private func startRecording() {
        speechRecognizer.resetTranscript()
        speechRecognizer.startTranscribing()
    }

    private func stopRecording() {
        speechRecognizer.stopTranscribing()
    }
}

#Preview {
    ContentView()
}
