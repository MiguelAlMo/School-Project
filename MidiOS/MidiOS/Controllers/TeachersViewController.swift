//
//  TeachersViewController.swift
//  MidiOS
//
//  Created by David Jardon on 05/02/21.
//

import UIKit

class TeachersViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? DetailsViewController,
              let cell = sender as? UITableViewCell,
              let indexPath = tableView.indexPath(for: cell) else {
            return
        }
        if(indexPath.row < defaultTeachers.count) {
            destination.person = defaultTeachers[indexPath.row]
            var subjects: [Subject] = []
            
            destination.IsStudent = false
            
            defaultSubjects.forEach { (subject) in
                subject.teachers?.forEach({ (teacher) in
                    if teacher.name == destination.person?.name {
                        subjects.append(subject)
                    }
                })
            }
            destination.subjectList = subjects
            destination.personList = studentsNoRepeatFunc(subjects: subjects)
        }
    }
    func studentsNoRepeatFunc (subjects: [Subject]) -> [Student] {
        
        var studentNoRepeat: [Student] = []
        
        subjects.forEach { subject in
            subject.students?.forEach { student in
                
                if (!studentNoRepeat.contains {studentList in
                        return studentList.name.compare(student.name) == .orderedSame}){
                    studentNoRepeat.append(student)
                }
            }
        }
        return studentNoRepeat
    }
}

extension TeachersViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        defaultTeachers.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        140
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TeacherViewCell",
                                                 for: indexPath) as? TeacherViewCell
        
        if(indexPath.row < defaultTeachers.count) {
            let data = defaultTeachers[indexPath.row]
            cell?.configure(image: data.photo,
                            title: data.name,
                            subtitle: data.email,
                            description: data.ageFormatted)
        }
        
        return cell ?? UITableViewCell()
    }
}
