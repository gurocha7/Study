//
//  SimpleTableView.swift
//  Study
//
//  Created by Gustavo Rocha on 25/01/20.
//  Copyright © 2020 Gustavo Rocha. All rights reserved.
//

import UIKit

protocol SimpleTableViewDelegate {
    func didTap(_ view: SimpleTableView, type: String)
}

class SimpleTableView: UITableView {

    let examplesText: [String] = ["CustomTableView",
                                  "CollectionView",
                                  "StackView"]
    
    var myDelegate: SimpleTableViewDelegate?
    
    required init() {
        super.init(frame: .zero, style: .plain)
        self.backgroundColor = .purple
        self.dataSource = self
        self.delegate = self
        self.separatorStyle = .none
        self.isScrollEnabled = false
        self.setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup(){
        self.register(SimpleTableViewCell.self, forCellReuseIdentifier: "SimpleTableViewCell")
    }
    
}

extension SimpleTableView: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
    }
}

extension SimpleTableView: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.examplesText.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SimpleTableViewCell", for: indexPath) as! SimpleTableViewCell
        cell.textLabel?.text = self.examplesText[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        self.myDelegate?.didTap(self, type: self.examplesText[indexPath.row])
    }
    
}
