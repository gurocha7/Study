//
//  CustomTwoTableViewCell.swift
//  Study
//
//  Created by Gustavo Rocha on 28/01/20.
//  Copyright © 2020 Gustavo Rocha. All rights reserved.
//

import UIKit

class CustomTwoTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup(){
        self.backgroundColor = .yellow
    }
    
}
