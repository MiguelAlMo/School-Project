//
//  Teacher.swift
//  MidiOS
//
//  Created by David Jardon on 02/02/21.
//

import Foundation

// Class TeacherDAO
class Teacher: Person {
    var phone: String?
    var address: String?
    var photo: String
    var name: String
    var surname: String?
    var age: Date?
    var email: String?
    
    var ageFormatted: String {
        if let teacherBirthdate = age,
           let teacherAge = Calendar.current.dateComponents([.year], from: teacherBirthdate, to: Date()).year {
            return "\(teacherAge) años"
        } else {
            return ""
        }
    }
    
    // Custom init (Constructor) class with default values
    init(photo: String? = nil, name: String? = nil, surname: String? = nil, age: Date? = nil, email: String? = nil, address: String? = nil, phone: String?) {
        
        // Always init all properties
        self.photo = photo ?? ""
        self.name = name ?? ""
        self.surname = surname
        self.age = age
        self.email = email
        self.address = address
        self.phone = phone
    }
}
