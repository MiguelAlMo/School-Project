//
//  TeacherViewCell.swift
//  MidiOS
//
//  Created by David Jardon on 05/02/21.
//

import UIKit

class TeacherViewCell: UITableViewCell {
    @IBOutlet weak var viewCell: UIView!
    @IBOutlet weak var imageCell: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var subtitle: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        viewCell.layer.cornerRadius = 8.0
        viewCell.showShadow()
        
        imageCell.layer.masksToBounds = true
        imageCell.layer.cornerRadius = imageCell.frame.height / 2
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        imageCell.image = nil
        title.text = nil
        subtitle.text = nil
        descriptionLabel.text = nil
    }
    
    func configure(image: String?, title: String?, subtitle: String?, description: String?) {
        imageCell.image = UIImage(named: image ?? "")
        self.title.text = title
        self.subtitle.text = subtitle
        self.descriptionLabel.text = description
        
    }
}
