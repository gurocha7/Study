//
//  VerticalCollectionView.swift
//  Study
//
//  Created by Gustavo Rocha on 06/02/20.
//  Copyright © 2020 Gustavo Rocha. All rights reserved.
//

import UIKit

class VerticalCollectionView: UICollectionView {

    let rows = 15
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        let _layout = UICollectionViewFlowLayout()
        _layout.scrollDirection = .vertical
        super.init(frame: frame, collectionViewLayout: _layout)
        self.dataSource = self
        self.delegate = self
        self.setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup(){
        self.register(VerticalCollectionViewCell.self, forCellWithReuseIdentifier: "VerticalCollectionViewCell")
    }

}

extension VerticalCollectionView: UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return rows
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "VerticalCollectionViewCell", for: indexPath) as! VerticalCollectionViewCell
        cell.btn.setTitle("\(indexPath.row)", for: .normal)
        return cell
    }
    
    
}

extension VerticalCollectionView: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.size.width, height: 100)
    }
}
