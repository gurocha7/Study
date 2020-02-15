//
//  VerticalCollectionViewCell.swift
//  Study
//
//  Created by Gustavo Rocha on 15/02/20.
//  Copyright © 2020 Gustavo Rocha. All rights reserved.
//

import UIKit

class VerticalCollectionViewCell: UICollectionViewCell {
    
    lazy var btn: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .orange
        self.addSubview(button)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup(){
        self.btn.topAnchor.constraint(equalTo: self.topAnchor, constant: 1).isActive = true
        self.btn.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 1).isActive = true
        self.btn.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 1).isActive = true
        self.btn.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 1).isActive = true
    }
}
