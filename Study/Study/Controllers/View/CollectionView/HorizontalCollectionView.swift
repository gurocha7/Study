//
//  HorizontalCollectionView.swift
//  Study
//
//  Created by Gustavo Rocha on 06/02/20.
//  Copyright © 2020 Gustavo Rocha. All rights reserved.
//

import UIKit

class HorizontalCollectionView: UICollectionView {

    let rows = 15
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        let _layout = UICollectionViewFlowLayout()
        _layout.scrollDirection = .horizontal
        super.init(frame: frame, collectionViewLayout: _layout)
        self.dataSource = self
        self.setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup(){
        self.register(HorizontalCollectionViewCell.self, forCellWithReuseIdentifier: "HorizontalCollectionViewCell")
    }

}

extension HorizontalCollectionView: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return rows
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HorizontalCollectionViewCell", for: indexPath) as! HorizontalCollectionViewCell
        cell.btn.setTitle("\(indexPath.row)", for: .normal)
        return cell
    }
    
    
}
