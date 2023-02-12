//
//  PlayerView.swift
//  Meditation
//
//  Created by Elaidzha Shchukin on 12.02.2023.
//

import SwiftUI

struct PlayerView: View {
    
    @State private var value: Double = 0.0
    
    var body: some View {
        
        ZStack {
            // MARK: Background Image
            Image("buddha")
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width)
                .ignoresSafeArea()
            
            VStack(spacing: 32) {
            // MARK: Dismiss Button
                
                HStack{
                    Button {
                        
                    } label: {
                        Image(systemName: "xmark.circle.fill")
                            .font(.system(size: 37))
                            .foregroundColor(.white)
                    }
                    Spacer()
                }
                //MARK: Title
                Text("1 Minute Relaxing Meditation")
                    .font(.title)
                    .foregroundColor(.white)
                
                Spacer()
                
                VStack(spacing: 5) {
                    Slider(value: $value, in: 0...60)
                }
            }
            .padding(20)
        }
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}
