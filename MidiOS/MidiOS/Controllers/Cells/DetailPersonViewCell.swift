//
//  DetailPersonViewCell.swift
//  MidiOS
//
//  Created by Miguel Alarcon on 10/2/21.
//

import UIKit

class DetailPersonViewCell: UITableViewCell {
    @IBOutlet weak var collectionView: UICollectionView!
    
    private var persons = [Person]() {
        didSet {
            collectionView.reloadData()
        }
    }
    func configure(data: [Person]) {
        persons = data
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
    
    
}

extension DetailPersonViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        persons.count
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: 130,
               height: 130)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DetailsViewCell",
                                                      for: indexPath) as? DetailsViewCell
        
        if(indexPath.row < persons.count) {
            cell?.configure(with: persons[indexPath.row])
        }
        
        return cell ?? UICollectionViewCell()
    }
}
