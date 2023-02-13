//
//  Extansions.swift
//  Meditation
//
//  Created by Elaidzha Shchukin on 13.02.2023.
//

import Foundation

extension DateComponentsFormatter {
    static let abbreviated: DateComponentsFormatter = {
        let formatter = DateComponentsFormatter()
        
        formatter.allowedUnits = [.hour, .minute, .second]
        
    }
}
