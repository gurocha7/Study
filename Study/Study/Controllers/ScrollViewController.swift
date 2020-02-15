//
//  ScrollViewController.swift
//  Study
//
//  Created by Gustavo Rocha on 26/01/20.
//  Copyright © 2020 Gustavo Rocha. All rights reserved.
//

import UIKit

class ScrollViewController: UIViewController {

    lazy var myScrollView: ScrollView = {
       let view = ScrollView()
        return view
    }()
    
    override func loadView(){
        self.view = self.myScrollView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
