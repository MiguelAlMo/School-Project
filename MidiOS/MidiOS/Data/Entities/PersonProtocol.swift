//
//  PersonProtocol.swift
//  MidiOS
//
//  Created by David Jardon on 08/02/21.
//

import Foundation

protocol Person {
    var photo: String { get set }
    var name: String { get set }
    var ageFormatted: String { get }
    var surname: String? { get set }
    var age: Date? { get set }
    var phone: String? { get set }
    var address: String? { get set }
    var email: String? { get set }
}
