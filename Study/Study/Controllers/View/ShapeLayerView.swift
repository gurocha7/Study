//
//  ShapeLayerView.swift
//  Study
//
//  Created by Gustavo Rocha on 12/02/20.
//  Copyright © 2020 Gustavo Rocha. All rights reserved.
//

import UIKit

class ShapeLayerView: UIView {
    
    lazy var lblReference: UILabel = {
        let label = UILabel()
        label.text = "Referencia"
        label.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(label)
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup(){
        self.backgroundColor = .cyan
        self.setupConstraints()
        self.drawCircle(width: 20, height: 20)
        self.drawLine(width: Int(UIScreen.main.bounds.width), height: 1)
    }
    
    func setupConstraints(){
        self.lblReference.topAnchor.constraint(equalTo: self.topAnchor, constant: 150).isActive = true
        self.lblReference.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 15).isActive = true
    }
    
    func drawCircle(width: Int = 0, height: Int = 0){
        
        let layer = CAShapeLayer()
        layer.path = UIBezierPath(roundedRect: CGRect(x: 15, y: 170, width: width, height: height), cornerRadius: CGFloat(width/2)).cgPath
        layer.fillColor = UIColor.red.cgColor
       self.layer.addSublayer(layer)
    }
    
    func drawLine(width: Int = 0, height: Int = 0){
        let layerLine = CAShapeLayer()
        layerLine.path = UIBezierPath(roundedRect: CGRect(x: 0, y: 200, width: width, height: height), cornerRadius: 0).cgPath
        layerLine.fillColor = UIColor.darkGray.cgColor
        self.layer.addSublayer(layerLine)
    }

}
