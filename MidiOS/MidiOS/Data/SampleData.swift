//
//  SampleData.swift
//  MidiOS
//
//  Created by David Jardon on 02/02/21.
//

import Foundation

// ******* DEFAULT DATA *******
// MARK: -  Create list of Students

// With Calendar and DateComponents class can create a new Date
// Calendar.current return actual Calendar 'Gregorian'
let defaultStudents: [Student] = [Student(photo: "img_student_7",
                                          name: "Óliver",
                                          surname: "Pavón García",
                                          age: Calendar.current.date(from: DateComponents(year: 2001,
                                                                                          month: 5)), phone: "6667537868",
                                          address: "C/ Aragón",
                                          email: "oliver@gmail.com"),
                                  
                                  Student(photo: "img_student_2",
                                          name: "Ángel",
                                          surname: "Moreno Saez",
                                          age: Calendar.current.date(from: DateComponents(year: 1999,
                                                                                          month: 9)),
                                          phone: "6634247868",
                                          address: "C/ Del lago",
                                          email: "angel@gmail.com"),
                                  
                                  Student(photo: "img_student_4",
                                          name: "Sara", surname: "Gonzalez Fuerte", age: Calendar.current.date(from: DateComponents(year: 1984,
                                                                                                                             month: 9)), phone: "6789930809", address: "C/Larios",
                                          email: "sara@gmail.com"),
                                  
                                  Student(photo: "img_student_3",
                                          name: "Eduardo",
                                          surname: "Saez Lima",
                                          age: Calendar.current.date(from: DateComponents(year: 1959,
                                                                                          month: 12)), phone: "6567434332", address: "C/Larios",
                                          email: "eduardo@gmail.com"),
                                  Student(photo: "img_student_5",
                                          name: "María",
                                          surname: "Ramos Martos",
                                          age: Calendar.current.date(from: DateComponents(year: 1966,
                                                                                          month: 4)), phone: "6567463332", address: "C/Larios",
                                          email: "maria@gmail.com"),
                                  
                                  Student(photo: "img_student_6",
                                          name: "Miguel",
                                          surname: "Alarcón Romero",
                                          age: Calendar.current.date(from: DateComponents(year: 1983,
                                                                                          month: 6)), phone: "6567357221", address: "C/Granada",
                                          email: "miguel@gmail.com"),
                                  
                                  Student(photo: "img_student_1",
                                          name: "Lucía",
                                          surname: "Castilla Feroz",
                                          age: Calendar.current.date(from: DateComponents(year: 1989,
                                                                                          month: 10)), phone: "6563743332", address: "C/Larios",
                                          email: "lucia@gmail.com")]


// MARK: -  Create list of Teachers

// With Calendar and DateComponents class can create a new Date
// Calendar.current return actual Calendar 'Gregorian'
let defaultTeachers: [Teacher] = [Teacher(photo: "img_teacher_3",
                                          name: "David",
                                          surname: "Jardón",
                                          age: Calendar.current.date(from: DateComponents(year: 1988,
                                                                                          month: 4)), email: "david@teacher.com", address: "C/Madrid", phone: "6993545777"),
                                
                                  Teacher(photo: "img_teacher_2",
                                          name: "Carlos",
                                          surname: "Tena Moreno",
                                          age: Calendar.current.date(from: DateComponents(year: 1984,
                                                                                          month: 6)), email: "carlos@teacher.com", address: "C/Pamplona", phone: "6939545777"),
                                  Teacher(photo: "img_teacher_4",
                                          name: "Andrés",
                                          surname: "López Villar",
                                          age: Calendar.current.date(from: DateComponents(year: 1979,
                                                                                          month: 9)), email: "andres@teacher.com", address: "C/Madrid", phone: "6939545777"),
                                  Teacher(photo: "img_teacher_5",
                                          name: "Daniel",
                                          surname: "Carvajal Ribé",
                                          age: Calendar.current.date(from: DateComponents(year: 1981,
                                                                                          month: 2)), email: "daniel@teacher.com", address: "C/Madrid", phone: "6995435777"),
                                  Teacher(photo: "img_teacher_1",
                                          name: "Laura",
                                          surname: "Tur Serena",
                                          age: Calendar.current.date(from: DateComponents(year: 1974,
                                                                                          month: 10)), email: "laura@teacher.com", address: "C/Madrid", phone: "6995457377")]


// MARK: - Create list of Subjects
// Use a list.filter for get different values for each subject

// With Calendar and DateComponents class can create a new Date
// Calendar.current return actual Calendar 'Gregorian'
var defaultSubjects: [Subject] = [Subject(photo: "img_subject_android",
                                          name: "Android",
                                          year: Calendar.current.date(from: DateComponents(year: 2018,
                                                                                           month: 9)),
                                          teachers: defaultTeachers.filter{$0.name.contains("u") },
                                          students: defaultStudents.filter{$0.name.contains("a") }),
                                  Subject(photo: "img_subject_ios",
                                          name: "iOS",
                                          year: Calendar.current.date(from: DateComponents(year: 2019,
                                                                                           month: 3)),
                                          teachers: defaultTeachers.filter{$0.name.contains("o") },
                                          students: defaultStudents.filter{$0.name.contains("e") }),
                                  Subject(photo: "img_subject_python",
                                          name: "Python",
                                          year: Calendar.current.date(from: DateComponents(year: 2019,
                                                                                           month: 4)),
                                          teachers: defaultTeachers.filter{$0.name.contains("i") },
                                          students: defaultStudents.filter{$0.name.contains("i") }),
                                  Subject(photo: "img_subject_javascript",
                                          name: "JavaScript",
                                          year: Calendar.current.date(from: DateComponents(year: 2018,
                                                                                           month: 10)),
                                          teachers: defaultTeachers.filter{$0.name.contains("e") },
                                          students: defaultStudents.filter{$0.name.contains("o") }),
                                  Subject(photo: "img_subject_dart",
                                          name: "Dart",
                                          year: Calendar.current.date(from: DateComponents(year: 2018,
                                                                                           month: 9)),
                                          teachers: defaultTeachers.filter{$0.name.contains("a") },
                                          students: defaultStudents.filter{$0.name.contains("u") })]

