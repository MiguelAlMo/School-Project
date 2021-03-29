//
//  DetailsViewCell.swift
//  MidiOS
//
//  Created by Miguel Alarcon on 10/2/21.
//

import UIKit

class DetailsViewCell: UICollectionViewCell {
    @IBOutlet weak var viewCell: UIView!
    @IBOutlet weak var imageCell: UIImageView!
    @IBOutlet weak var viewTitle: UIView!
    @IBOutlet weak var title: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        viewCell.layer.cornerRadius = 8.0
        viewCell.showShadow()
        
        viewTitle.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        viewTitle.layer.cornerRadius = 8.0
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        imageCell.image = nil
        title.text = nil
    }
    
    func configure(with person: Person) {
        imageCell.image = UIImage(named: person.photo)
        title.text = person.name
    }
}
