//
//  CustomTableView.swift
//  Study
//
//  Created by Gustavo Rocha on 28/01/20.
//  Copyright © 2020 Gustavo Rocha. All rights reserved.
//

import UIKit

enum CellTypes {
    case friend
    case about
    case email
    case attribute
}

protocol CustomTableViewModelItem {
    var type: CellTypes { get }
}

class CustomTableView: UITableView {

    var items: [CustomTableViewModelItem] = []
    
    required init() {
        super.init(frame: .zero, style: .plain)
        self.backgroundColor = .purple
        self.dataSource = self
        self.delegate = self
        self.separatorStyle = .none
        self.setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup(){
        self.register(CustomOneTableViewCell.self, forCellReuseIdentifier: "CustomOneTableViewCell" )
        self.register(CustomTwoTableViewCell.self, forCellReuseIdentifier: "CustomTwoTableViewCell" )
        self.register(CustomThreeTableViewCell.self, forCellReuseIdentifier: "CustomThreeTableViewCell" )
        self.register(CustomFourTableViewCell.self, forCellReuseIdentifier: "CustomFourTableViewCell" )
        self.items = [ProfileViewModelAboutItem(),ProfileViewModelFriendsItem(),ProfileViewModelEmailItem(),ProfileViewModelAttributeItem(),ProfileViewModelAttributeItem()]
    }
    
}

extension CustomTableView: UITableViewDelegate{
    
}

extension CustomTableView: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let _item = self.items[indexPath.row]
        switch _item.type {
        case .friend:
            let cell = tableView.dequeueReusableCell(withIdentifier: "CustomOneTableViewCell", for: indexPath) as! CustomOneTableViewCell
            cell.textLabel?.text =  "ROW = \(indexPath.row)"
            return cell
        case .about:
            let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTwoTableViewCell", for: indexPath) as! CustomTwoTableViewCell
            cell.textLabel?.text =  "ROW = \(indexPath.row)"
            return cell
            
        case .attribute:
            let cell = tableView.dequeueReusableCell(withIdentifier: "CustomThreeTableViewCell", for: indexPath) as! CustomThreeTableViewCell
            cell.textLabel?.text =  "ROW = \(indexPath.row)"
            return cell
            
        case .email:
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "CustomFourTableViewCell", for: indexPath) as! CustomFourTableViewCell
            cell.textLabel?.text =  "ROW = \(indexPath.row)"
            return cell
            
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
}
