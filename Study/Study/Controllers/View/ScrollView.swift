//
//  ScrollView.swift
//  Study
//
//  Created by Gustavo Rocha on 26/01/20.
//  Copyright © 2020 Gustavo Rocha. All rights reserved.
//

import UIKit

class ScrollView: UIView {
    
    var countView: Int = 7
    var colorViews: [UIColor] = [UIColor.black,
                                 UIColor.blue,
                                 UIColor.red,
                                 UIColor.green,
                                 UIColor.yellow,
                                 UIColor.orange,
                                 UIColor.magenta]
    
    lazy var newView: UIView = {
       let view = UIView()
        view.backgroundColor = .orange
        view.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(view)
        return view
    }()

    lazy var scrollView: UIScrollView = {
       let view = UIScrollView()
        view.alwaysBounceVertical = true
        view.automaticallyAdjustsScrollIndicatorInsets = true
        view.flashScrollIndicators()
        view.indicatorStyle = .black
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        self.newView.addSubview(view)
        return view
    }()
    
    lazy var labelTitle: UILabel = {
       let label = UILabel()
        label.backgroundColor = .magenta
        label.text = "MY TITLE LABEL"
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        self.scrollView.addSubview(label)
        return label
    }()
    
    lazy var stackView: UIStackView = {
       let view = UIStackView()
        view.backgroundColor = .orange
        view.translatesAutoresizingMaskIntoConstraints = false
        self.scrollView.addSubview(view)
        return view
    }()
    
    lazy var btnCancel: UIButton = {
       let btn = UIButton()
        btn.backgroundColor = .purple
        btn.setTitleColor(.white, for: .normal)
        btn.setTitle("Cancelar", for: .normal)
        btn.layer.cornerRadius = 27
        btn.layer.borderWidth = 1
        btn.translatesAutoresizingMaskIntoConstraints = false
        self.scrollView.addSubview(btn)
        return btn
    }()
    
    lazy var btnConfirm: UIButton = {
       let btn = UIButton()
        btn.setTitleColor(.white, for: .normal)
        btn.setTitle("OK", for: .normal)
        btn.layer.cornerRadius = 27
        btn.layer.borderWidth = 1
        btn.backgroundColor = .magenta
        btn.translatesAutoresizingMaskIntoConstraints = false
        self.scrollView.addSubview(btn)
        return btn
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
        self.newView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0).isActive = true
        self.newView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0).isActive = true
        self.newView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0).isActive = true
        self.newView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0).isActive = true
        
        
        self.scrollView.topAnchor.constraint(equalTo: self.newView.topAnchor, constant: 0).isActive = true
        self.scrollView.leftAnchor.constraint(equalTo: self.newView.leftAnchor, constant: 0).isActive = true
        self.scrollView.rightAnchor.constraint(equalTo: self.newView.rightAnchor, constant: 0).isActive = true
        self.scrollView.bottomAnchor.constraint(equalTo: self.newView.bottomAnchor, constant: 0).isActive = true
        
        
        //Components
        
        self.labelTitle.topAnchor.constraint(equalTo: self.scrollView.topAnchor, constant: 100).isActive = true
        self.labelTitle.leftAnchor.constraint(equalTo: self.scrollView.leftAnchor, constant: 10).isActive = true
        self.labelTitle.rightAnchor.constraint(equalTo: self.scrollView.rightAnchor, constant: 10).isActive = true
        self.labelTitle.centerXAnchor.constraint(equalTo: self.scrollView.centerXAnchor).isActive = true
        
        
        self.stackView.topAnchor.constraint(equalTo: self.labelTitle.bottomAnchor, constant: 20).isActive = true
        self.stackView.leftAnchor.constraint(equalTo: self.scrollView.leftAnchor, constant: 10).isActive = true
        self.stackView.rightAnchor.constraint(equalTo: self.scrollView.rightAnchor, constant: 10).isActive = true
        
        
        let constraintsCancel = NSLayoutConstraint(item: self.btnCancel, attribute: .width, relatedBy: .equal, toItem: self, attribute: .width, multiplier: 0.5, constant: -15 - 5)
        
        let constraintsConfirm = NSLayoutConstraint(item: self.btnConfirm, attribute: .width, relatedBy: .equal, toItem: self.btnCancel, attribute: .width, multiplier: 1, constant: 0)
        
        self.addConstraints([constraintsCancel,constraintsConfirm])
        
        self.btnCancel.topAnchor.constraint(equalTo: self.stackView.bottomAnchor, constant: 30).isActive = true
        self.btnCancel.leftAnchor.constraint(equalTo: self.scrollView.leftAnchor, constant: 10).isActive = true
        self.btnCancel.bottomAnchor.constraint(equalTo: self.scrollView.bottomAnchor, constant: -20).isActive = true
        self.btnCancel.heightAnchor.constraint(equalToConstant: 55).isActive = true
        
        self.btnConfirm.topAnchor.constraint(equalTo: self.stackView.bottomAnchor, constant: 30).isActive = true
        self.btnConfirm.leftAnchor.constraint(equalTo: self.btnConfirm.rightAnchor, constant: 10).isActive = true
        self.btnConfirm.rightAnchor.constraint(equalTo: self.scrollView.rightAnchor, constant: 10).isActive = true
        self.btnConfirm.bottomAnchor.constraint(equalTo: self.scrollView.bottomAnchor, constant: -20).isActive = true
        self.btnConfirm.heightAnchor.constraint(equalToConstant: 55).isActive = true
    }
    
    func setup(){
        for i in 0..<self.countView{
            let view = UIView()
            view.backgroundColor = self.colorViews[i]
            view.translatesAutoresizingMaskIntoConstraints = false
            view.heightAnchor.constraint(equalToConstant: 130).isActive = true
            self.stackView.addArrangedSubview(view)
        }
        
        self.stackView.axis = .vertical
        self.stackView.distribution = .fillEqually
    }
    
}
