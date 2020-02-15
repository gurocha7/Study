//
//  CustomModel.swift
//  Study
//
//  Created by Gustavo Rocha on 28/01/20.
//  Copyright © 2020 Gustavo Rocha. All rights reserved.
//

import Foundation

public class ProfileViewModelAboutItem: CustomTableViewModelItem {
   var type: CellTypes{
      return .about
   }
   var sectionTitle: String {
      return "About"
   }
    
}
public class ProfileViewModelEmailItem: CustomTableViewModelItem {
   var type: CellTypes{
      return .email
   }
   var sectionTitle: String {
      return "Email"
   }
}
public class ProfileViewModelAttributeItem: CustomTableViewModelItem {
   var type: CellTypes {
      return .attribute
   }
   var sectionTitle: String {
      return "Attributes"
   }
}
public class ProfileViewModelFriendsItem: CustomTableViewModelItem {
   var type: CellTypes {
      return .friend
   }
   var sectionTitle: String {
      return "Friends"
   }
}
