//
//  MeditationView.swift
//  Meditation
//
//  Created by Elaidzha Shchukin on 12.02.2023.
//

import SwiftUI

struct MeditationView: View {
    var body: some View {
        
        VStack(spacing: 0) {
            // MARK: Image
            
            Image("buddha")
                .resizable()
                .scaledToFill()
                .frame(height: UIScreen.main.bounds.height / 3)
            
            // MARK: Meditation Details
            
            ZStack {
                // MARK: background
                Color(red: 24/255, green: 23/255, blue: 22/255)
                
                VStack(alignment: .leading, spacing: 24) {
                    // MARK: Type & Duration
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Music")
                        
                        Text("0s")
                    }
                    .font(.subheadline)
                    .textCase(.uppercase)
                    .opacity(0.7)
                    
                    //MARK: Title
                    Text("1 Minute Relaxing Meditation")
                        .font(.title)
                    
                    Button {
                        print()
                    } label: {
                        Label("Play", systemImage: "play.fill")
                    }

                    
                    //MARK: Description
                    Text("Meditation can produce a deep state of relaxation and a tranquil mind.")
                    
                    Spacer()
                    
                }
                .foregroundColor(.white)
                .padding(20)
            }
            .frame(height: UIScreen.main.bounds.height * 2 / 3)
        }
        .ignoresSafeArea()
    }
}

struct MeditationView_Previews: PreviewProvider {
    static var previews: some View {
        MeditationView()
    }
}
