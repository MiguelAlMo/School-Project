//
//  Subject.swift
//  MidiOS
//
//  Created by David Jardon on 02/02/21.
//

import Foundation

class Subject: Person {
    var photo: String
    var name: String
    var surname: String?
    var age: Date?
    var phone: String?
    var address: String?
    var email: String?
    var year: Date?
    var teachers: [Teacher]?
    var students: [Student]?
    
    var ageFormatted: String {
        if let subjectYear = age,
           let subjectsince = Calendar.current.dateComponents([.year], from: subjectYear, to: Date()).year {
            return "\(subjectsince) años"
        } else {
            return ""
        }
    }
    
    // Custom init (Constructor) class with default values
    init(photo: String = "", name: String = "", year: Date? = nil, teachers: [Teacher]? = nil, students: [Student]? = nil) {
        
        // Always init all properties
        self.photo = photo
        self.name = name
        self.year = year
        self.teachers = teachers
        self.students = students
    }
}
