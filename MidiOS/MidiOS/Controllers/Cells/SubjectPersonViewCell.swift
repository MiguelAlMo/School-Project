//
//  SubjectPersonViewCell.swift
//  MidiOS
//
//  Created by David Jardon on 08/02/21.
//

import UIKit

class SubjectPersonViewCell: UITableViewCell {
    @IBOutlet weak var collectionView: UICollectionView!
    
    private var persons = [Person]() {
        didSet {
            collectionView.reloadData()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        persons = []
    }
    
    func configure(data: [Person]) {
        persons = data
    }
}

extension SubjectPersonViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        persons.count
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: 130,
               height: 130)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PersonViewCell",
                                                      for: indexPath) as? PersonViewCell
        
        if(indexPath.row < persons.count) {
            cell?.configure(with: persons[indexPath.row])
        }
        
        return cell ?? UICollectionViewCell()
    }
}
