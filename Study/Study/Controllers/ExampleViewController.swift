//
//  ExampleViewController.swift
//  Study
//
//  Created by Gustavo Rocha on 25/01/20.
//  Copyright © 2020 Gustavo Rocha. All rights reserved.
//

import UIKit

enum TypeCell: String{
    case stack      = "StackView"
    case custom     = "CustomTableView"
    case colle      = "CollectionView"
    case scroll     = "ScrollView"
    case gesture    = "GestureRecognizer"
    case shape      = "ShapeLayer"
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
            let nextVC = CollectionsViewController()
            self.navigationController?.pushViewController(nextVC, animated: true)
        case TypeCell.custom.rawValue:
            let nextVC = CustomViewController()
            self.navigationController?.pushViewController(nextVC, animated: true)
        case TypeCell.stack.rawValue:
            let nextVC = StackTableViewController()
            self.navigationController?.pushViewController(nextVC, animated: true)
        case TypeCell.scroll.rawValue:
            let nextVC = ScrollViewController()
            self.navigationController?.pushViewController(nextVC, animated: true)
        case TypeCell.gesture.rawValue:
            let nextVC = GestureViewController()
            self.navigationController?.pushViewController(nextVC, animated: true)
        case TypeCell.shape.rawValue:
            let nextVC = ShapeLayerViewController()
            self.navigationController?.pushViewController(nextVC, animated: true)
        default:
            print("")
        }
        
    }
}
