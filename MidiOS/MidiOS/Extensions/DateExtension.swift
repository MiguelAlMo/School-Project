//
//  DateExtension.swift
//  MidiOS
//
//  Created by David Jardon on 09/02/21.
//

import Foundation

extension Date {
    var formattedAge: String {
        if let age = Calendar.current.dateComponents([.year], from: self, to: Date()).year {
            return "\(age) años"
        } else {
            return ""
        }
    }
}
