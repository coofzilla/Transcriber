//
//  History.swift
//  Transcriber
//
//  Created by Jeric Hernandez on 1/29/24.
//

import Foundation

struct History: Identifiable, Codable {
    let id: UUID
    var transcript: String?
}
