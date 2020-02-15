//
//  GestureView.swift
//  Study
//
//  Created by Gustavo Rocha on 26/01/20.
//  Copyright © 2020 Gustavo Rocha. All rights reserved.
//

import UIKit

class GestureView: UIView {
    
    lazy var btn: UIButton = {
       let button = UIButton()
        button.setTitleColor(.black, for: .normal)
        button.setTitle("MOVE", for: .normal)
        button.backgroundColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(button)
        return button
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .systemIndigo
        self.setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup(){
        self.btn.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        self.btn.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
    }
    
}
