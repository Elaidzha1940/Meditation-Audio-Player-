//
//  MeditationView.swift
//  Meditation
//
//  Created by Elaidzha Shchukin on 12.02.2023.
//

import SwiftUI

struct MeditationView: View {
    var body: some View {
        
        VStack {
            //MARK: Image
            
            Image("buddha")
                .resizable()
                .scaledToFill()
                .frame(height: UIScreen.main.bounds.height / 3)
            
            //MARK: Meditation Details
            ZStack {
                Color(red: 24/255, green: 23/255, blue: 22/255)
                
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
