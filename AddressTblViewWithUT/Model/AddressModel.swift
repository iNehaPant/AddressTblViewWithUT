//
//  AddressModel.swift
//  AddressTblViewWithUT
//
//  Created by Neha Pant on 23/09/2019.
//  Copyright © 2019 Neha Pant. All rights reserved.
//

import UIKit

class AddressModel: NSObject {
    
    var name: String
    var street: String
    var country: String
    
    init(name: String, street: String, country: String) {
        self.name = name
        self.street = street
        self.country = country
    }
}
