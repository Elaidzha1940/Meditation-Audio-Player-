//
//  PlayerView.swift
//  Meditation
//
//  Created by Elaidzha Shchukin on 12.02.2023.
//

import SwiftUI

struct PlayerView: View {
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
                
                Button {
                    
                } label: {
                    Image(systemName: "xmark.circle.fill")
                        .font(.system(size: 37))
                        .foregroundColor(.white)
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
