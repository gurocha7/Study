//
//  CollectionsViewController.swift
//  Study
//
//  Created by Gustavo Rocha on 06/02/20.
//  Copyright © 2020 Gustavo Rocha. All rights reserved.
//

import UIKit

class CollectionsViewController: UIViewController {
    
    
    lazy var mainView: ManagerCollectionsView = {
       let view = ManagerCollectionsView()
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        self.view = self.mainView
    }
    

}
