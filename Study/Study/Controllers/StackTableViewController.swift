//
//  StackTableViewController.swift
//  Study
//
//  Created by Gustavo Rocha on 25/01/20.
//  Copyright © 2020 Gustavo Rocha. All rights reserved.
//

import UIKit

class StackTableViewController: UIViewController {
    
    lazy var newView: StackView = {
       let view = StackView()
       return view
    }()

    override func loadView() {
        self.view = self.newView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
