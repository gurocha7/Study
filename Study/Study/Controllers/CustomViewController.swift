//
//  CustomViewController.swift
//  Study
//
//  Created by Gustavo Rocha on 28/01/20.
//  Copyright © 2020 Gustavo Rocha. All rights reserved.
//

import UIKit

class CustomViewController: UIViewController {
    
    lazy var newView: CustomTableView = {
       let view = CustomTableView()
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func loadView() {
        self.view = self.newView
    }

}
