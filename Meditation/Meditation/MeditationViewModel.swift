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
    let image: String
    
    static let data = Meditation(title: "1 Minute Relaxing Meditation", description: "Meditation can produce a deep state of relaxation and a tranquil mind.", duration: 70, track: "meditation1", image: "buddha")
}
