//
//  GestureViewController.swift
//  Study
//
//  Created by Gustavo Rocha on 26/01/20.
//  Copyright © 2020 Gustavo Rocha. All rights reserved.
//

import UIKit

class GestureViewController: UIViewController {

    lazy var newView: GestureView = {
        let view = GestureView()
        return view
    }()
    
    override func loadView() {
        self.view = self.newView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
