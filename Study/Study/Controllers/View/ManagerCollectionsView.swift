//
//  ManagerCollectionsView.swift
//  Study
//
//  Created by Gustavo Rocha on 06/02/20.
//  Copyright © 2020 Gustavo Rocha. All rights reserved.
//

import UIKit

class ManagerCollectionsView: UIView {
    
    lazy var horizontalView: HorizontalCollectionView = {
       let view = HorizontalCollectionView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .blue
        self.addSubview(view)
        return view
    }()
    
    lazy var verticalView: VerticalCollectionView = {
       let view = VerticalCollectionView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .purple
        self.addSubview(view)
        return view
    }()

   
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        self.setupConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupConstraints(){
        
        self.horizontalView.topAnchor.constraint(equalTo: self.topAnchor, constant: 100).isActive = true
        self.horizontalView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        self.horizontalView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0).isActive = true
        self.horizontalView.heightAnchor.constraint(equalToConstant: 80).isActive = true
        
        self.verticalView.topAnchor.constraint(equalTo: self.horizontalView.bottomAnchor, constant: 30).isActive = true
        self.verticalView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        self.verticalView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20).isActive = true
        self.verticalView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }

}
