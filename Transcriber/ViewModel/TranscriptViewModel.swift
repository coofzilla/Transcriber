//
//  TranscriptViewModel.swift
//  Transcriber
//
//  Created by Jeric Hernandez on 1/30/24.
//

import Combine
import SwiftUI

class TranscriptViewModel: ObservableObject {
    @Published var transcript = ""
    private var speechRecognizer = SpeechRecognizer()
    private var cancellables = Set<AnyCancellable>()

    init() {
        speechRecognizer.transcriptUpdates
            .receive(on: RunLoop.main)
            .sink { [weak self] updatedTranscript in
                self?.transcript = updatedTranscript
            }
            .store(in: &cancellables)
    }

    func startTranscribing() {
        Task {
            await speechRecognizer.resetTranscript()
            await speechRecognizer.startTranscribing()
        }
    }

    func stopTranscribing() {
        Task {
            await speechRecognizer.stopTranscribing()
        }
    }
}
