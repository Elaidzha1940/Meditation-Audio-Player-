//
//  MeditationView.swift
//  Meditation
//
//  Created by Elaidzha Shchukin on 12.02.2023.
//

import SwiftUI

struct MeditationView: View {
    
    @StateObject var MeditationVM: MeditationViewModel
    @State private var showPlayer = false
    
    var body: some View {
        
        VStack(spacing: 0) {
            // MARK: Image
            
            Image(MeditationVM.meditation.image)
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
                        
                        Text(DateComponentsFormatter.abbreviated.string(from:  MeditationVM.meditation.duration) ??
                             MeditationVM.meditation.duration.formatted() +
                             "s")
                    }
                    .font(.subheadline)
                    .textCase(.uppercase)
                    .opacity(0.7)
                    
                    //MARK: Title
                    Text(MeditationVM.meditation.title)
                        .font(.title)
                    
                    //MARK: Play Button
                    Button {
                        showPlayer = true
                    } label: {
                        Label("Play", systemImage: "play.fill")
                            .font(.headline)
                            .foregroundColor(.black)
                            .padding(.vertical, 10)
                            .frame(maxWidth: .infinity)
                            .background(Color.white)
                            .cornerRadius(8)
                    }
                    
                    //MARK: Description
                    Text(MeditationVM.meditation.description)
                    
                    Spacer()
                    
                }
                .foregroundColor(.white)
                .padding(20)
            }
            .frame(height: UIScreen.main.bounds.height * 2 / 3)
        }
        .ignoresSafeArea()
        .fullScreenCover(isPresented: $showPlayer) {
            PlayerView(meditationVM: MeditationVM)
        }
    }
}

struct MeditationView_Previews: PreviewProvider {
    static let meditationVM = MeditationViewModel(meditation: Meditation.data)
    static var previews: some View {
        MeditationView(MeditationVM: meditationVM)
    }
}
