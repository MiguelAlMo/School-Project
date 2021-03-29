//
//  StudentsViewController.swift
//  MidiOS
//
//  Created by David Jardon on 02/02/21.
//

import UIKit

class StudentsViewController: UIViewController {
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
        if(indexPath.row < defaultStudents.count) {
            destination.person = defaultStudents[indexPath.row]
            var subjects: [Subject] = []
            
            
            destination.IsStudent = true
            
            defaultSubjects.forEach { (subject) in
                subject.students?.forEach({ (student) in
                    if student.name == destination.person?.name {
                        subjects.append(subject)
                    }
                })
            }
            destination.subjectList = subjects
            destination.personList = teachersNoRepeatFunc(subjects: subjects)
                        
        }
    }
    
    func teachersNoRepeatFunc (subjects: [Subject]) -> [Teacher] {
        
        var teachersNoRepeat: [Teacher] = []
        
        subjects.forEach { subject in
            subject.teachers?.forEach { teacher in
                
                if (!teachersNoRepeat.contains {teacherList in
                        return teacherList.name.compare(teacher.name) == .orderedSame}){
                    teachersNoRepeat.append(teacher)
                }
            }
        }
        return teachersNoRepeat
    }
}

// TODO: Obtener los profesores de las asignaturas sin duplicados y devolverlos
//Iterar sobre la lista de subjects
//Ir mirando uno a uno por cada profesor del subject
//coger el nombre del profesor
// Mirar si el nombre del teacher se repite más de una vez
extension StudentsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        defaultStudents.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        140
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StudentViewCell",
                                                 for: indexPath) as? StudentViewCell
        
        if(indexPath.row < defaultStudents.count) {
            let data = defaultStudents[indexPath.row]
            
            cell?.configure(image: data.photo,
                            title: data.name,
                            subtitle: data.email,
                            birthdate: data.age?.formattedAge ?? "")
        }
        
        return cell ?? UITableViewCell()
    }
}
