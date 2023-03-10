//
//  PlayerView.swift
//  Meditation
//
//  Created by Elaidzha Shchukin on 12.02.2023.
//

import SwiftUI

struct PlayerView: View {
    
    var meditationVM: MeditationViewModel
    @State private var value: Double = 0.0
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        
        ZStack {
            // MARK: Background Image
            Image(meditationVM.meditation.image)
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width)
                .ignoresSafeArea()
            
            //MARK: Blur View
            Rectangle()
                .background(.thinMaterial)
                .opacity(0.25)
                .ignoresSafeArea()
            
            VStack(spacing: 32) {
                
            // MARK: Dismiss Button
                HStack{
                    Button {
                      dismiss()
                    } label: {
                        Image(systemName: "xmark.circle.fill")
                            .font(.system(size: 37))
                            .foregroundColor(.white)
                    }
                    Spacer()
                }
                //MARK: Title
                Text(meditationVM.meditation.title)
                    .font(.title)
                    .foregroundColor(.white)
                
                Spacer()
                // MARK: Playback
                
                VStack(spacing: 5) {
                    // MARK: Playback Timeline

                    Slider(value: $value, in: 0...60)
                        .accentColor(.white)
                    
                    // MARK: Playback Time

                    HStack {
                        Text("0:00")
                        
                        Spacer()
                        
                        Text("1:00")
                    }
                    .font(.caption)
                    .foregroundColor(.white)
                }
                //MARK: Playback Controls
                HStack {
                    // MARK: Repeat Buttton
                    PlaybackControlButton(systemName: "repeat") {
                        
                    }
                    Spacer()
                    // MARK: Backward Buttton
                    PlaybackControlButton(systemName: "gobackward.10") {
                        
                    }
                    Spacer()
                    // MARK: Play/Pause Buttton
                    PlaybackControlButton(systemName: "play.circle.fill",
                                          fontSize: 45) {
                        
                    }
                    Spacer()
                    // MARK: Forward Buttton
                    PlaybackControlButton(systemName: "goforward.10") {
                        
                    }
                    Spacer()
                    // MARK: Stop Buttton
                    PlaybackControlButton(systemName: "stop.fill") {
                        
                    }
                }
            }
            .padding(20)
        }
    }
}

struct PlayerView_Previews: PreviewProvider {
    static let meditationVM = MeditationViewModel(meditation: Meditation.data)

    static var previews: some View {
        PlayerView(meditationVM: meditationVM)
    }
}
