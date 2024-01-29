//
//  RecordButton.swift
//  Transcriber
//
//  Created by Jeric Hernandez on 12/31/23.
//

import SwiftUI

struct RecordButton: View {
    @Binding var isRecording: Bool

    let onPress: () -> Void

    var body: some View {
        Button(action: {
            withAnimation {
                isRecording.toggle()
                onPress()
            }
        }) {
            ZStack {
                Circle()
                    .stroke(Color.white, lineWidth: 3)
                    .frame(width: 45, height: 45)

                RoundedRectangle(cornerRadius: isRecording ? 3 : 25)
                    .fill(Color.red)
                    .frame(width: isRecording ? 25 : 40, height: isRecording ? 25 : 40)
            }
        }
    }
}

#Preview {
    HStack {
        RecordButton(isRecording: .constant(false)) { print("PRESSED PREVIEW") }
    }
    .background(Color.black)
    .frame(width: 100, height: 100)
}
