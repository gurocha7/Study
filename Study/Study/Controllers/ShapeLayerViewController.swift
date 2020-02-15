//
//  ShapeLayerViewController.swift
//  Study
//
//  Created by Gustavo Rocha on 12/02/20.
//  Copyright © 2020 Gustavo Rocha. All rights reserved.
//

import UIKit

class ShapeLayerViewController: UIViewController {
    
    lazy var newView: ShapeLayerView = {
        let view = ShapeLayerView()
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        self.view = self.newView
    }

}
