//
//  AddressDataSoucre.swift
//  AddressTblViewWithUT
//
//  Created by Neha Pant on 23/09/2019.
//  Copyright © 2019 Neha Pant. All rights reserved.
//

import UIKit

class AddressDataSource: NSObject, UITableViewDataSource {
    var addressModelData = [AddressModel]()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return addressModelData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:AddressTableViewCell = tableView.dequeueReusableCell(withIdentifier: String.init(describing: AddressTableViewCell.self)) as! AddressTableViewCell
        let dataString = addressModelData[indexPath.row].name
        cell.titleText = dataString
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return addressModelData.count > 0 ? 1 : 0
    }
}
