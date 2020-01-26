//
//  ExampleViewController.swift
//  Study
//
//  Created by Gustavo Rocha on 25/01/20.
//  Copyright © 2020 Gustavo Rocha. All rights reserved.
//

import UIKit

enum TypeCell: String{
    case stack = "StackView"
    case custom = "CustomTableView"
    case colle = "CollectionView"
}

class ExampleViewController: UIViewController {
    
    lazy var NewView: UITableView = {
        let view = SimpleTableView()
        view.myDelegate = self
        return view
    }()
    
    override func loadView() {
        self.view = self.NewView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}


extension ExampleViewController: SimpleTableViewDelegate{
    func didTap(_ view: SimpleTableView, type: String) {
        print("Row : ", type)
        
        switch type {
        case TypeCell.colle.rawValue:
            print("")
        case TypeCell.custom.rawValue:
            print("")
        case TypeCell.stack.rawValue:
            let nextVC = StackTableViewController()
            self.navigationController?.pushViewController(nextVC, animated: true)
        default:
            print("")
        }
        
    }
}
