//
//  StackView.swift
//  Study
//
//  Created by Gustavo Rocha on 25/01/20.
//  Copyright © 2020 Gustavo Rocha. All rights reserved.
//

import UIKit

class StackView: UIView {
    
    var colorViews: [UIColor] = [UIColor.black,UIColor.blue,UIColor.red,UIColor.green,UIColor.yellow]
    
    lazy var labelTitle: UILabel = {
       let label = UILabel()
        label.text = "DYNAMIC STACK VIEW"
        label.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(label)
        return label
    }()

    lazy var stackView: UIStackView = {
       let view = UIStackView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemPink
        self.addSubview(view)
        return view
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        self.setupConstraints()
        self.setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupConstraints(){
        self.labelTitle.topAnchor.constraint(equalTo: self.topAnchor, constant: 150).isActive = true
        self.labelTitle.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        self.labelTitle.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        
        self.stackView.topAnchor.constraint(equalTo: self.labelTitle.bottomAnchor, constant: 20).isActive = true
        self.stackView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        self.stackView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20).isActive = true
        self.stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -50).isActive = true
    }
    
    func setup(){
        let number = Int.random(in: 2..<6)
        for i in 0..<number{
            let view = UIView()
            view.backgroundColor = self.colorViews[i]
            view.translatesAutoresizingMaskIntoConstraints = false
            self.stackView.addArrangedSubview(view)
        }
    
        self.stackView.axis = .horizontal
        self.stackView.distribution = .fillEqually
    }
    
}
