//
//  DetailsViewController.swift
//  MidiOS
//
//  Created by Miguel Alarcon on 10/2/21.
//

import UIKit

/*protocol DetailsViewController: AnyObject {
 func onDelete(subject: Subject?)
 }*/

class DetailsViewController: UIViewController {
    // MARK: - IBOtulet
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var detailImage: UIImageView!
    @IBOutlet weak var nameDetail: UILabel!
    @IBOutlet weak var surnameDetail: UILabel!
    @IBOutlet weak var ageDetail: UILabel!
    @IBOutlet weak var emailDetail: UILabel!
    @IBOutlet weak var phoneDetail: UILabel!
    @IBOutlet weak var addressDetail: UILabel!
    
    
    var personList: [Person]? = nil
    var subjectList: [Subject]? = nil
    var person: Person? = nil
    var IsStudent: Bool = true
    
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailImage.image = UIImage(named: person?.photo ?? "")
        nameDetail.text = person?.name
        surnameDetail.text = person?.surname
        emailDetail.text = person?.email
        phoneDetail.text = person?.phone
        addressDetail.text = person?.address
        
        if let personYear = person?.age {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "dd 'de' MMMM 'del' yyyy"
            ageDetail.text = dateFormatter.string(from: personYear)
            
            
            tableView.delegate = self
            tableView.dataSource = self
        }
    }
}


extension DetailsViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
            case 0:
                return IsStudent ? "Teachers":"Students"
                
            default:
                return "Subjects"
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        160
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DetailPersonViewCell",
                                                 for: indexPath) as? DetailPersonViewCell
        
        switch indexPath.section {
            case 0:
                
                cell?.configure(data: personList ?? [])
                
            default:
                
                cell?.configure(data: subjectList ?? [])
        }
        
        return cell ?? UITableViewCell()
    }
}





