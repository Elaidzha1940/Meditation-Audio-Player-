//
//  MeditationViewModel.swift
//  Meditation
//
//  Created by Elaidzha Shchukin on 13.02.2023.
//

import Foundation

struct Meditation {
    let id = UUID()
    let title: String
    let description: String
    let duration: TimeInterval
    let track: String
}
