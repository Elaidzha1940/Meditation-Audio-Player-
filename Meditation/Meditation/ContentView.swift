//
//  ContentView.swift
//  Meditation
//
//  Created by Elaidzha Shchukin on 12.02.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        MeditationView(MeditationVM: MeditationViewModel.init(meditation:
                                                                Meditation.data))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
