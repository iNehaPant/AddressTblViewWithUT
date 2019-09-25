//
//  ViewController.swift
//  TableView
//
//  Created by Neha Pant on 30/08/2019.
//  Copyright © 2019 Neha Pant. All rights reserved.
//

import UIKit


class AddressViewController: UIViewController {

    let addressDataSource = AddressDataSource()
    @IBOutlet weak var tableview: UITableView! {
        didSet {
            tableview.dataSource = addressDataSource
            
            var addressModelData = [AddressModel]()
            var addressModel = AddressModel(name: "neha", street: "123 main street", country: "India")
            addressModelData.append(addressModel)
            addressModel = AddressModel(name: "neha1", street: "123 main street", country: "London")
            addressModelData.append(addressModel)
            addressModel = AddressModel(name: "neha2", street: "124 main street", country: "UK")
            addressModelData.append(addressModel)
            addressDataSource.addressModelData = addressModelData
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadCell()
    }
    
    fileprivate func loadCell() {
        let nib = UINib(nibName: String.init(describing: AddressTableViewCell.self), bundle: nil)
        //Idendifier with name of the cell
        tableview.register(nib, forCellReuseIdentifier: String.init(describing: AddressTableViewCell.self))
        tableview.delegate = self
        tableview.estimatedRowHeight = UITableView.automaticDimension
    }
}

extension AddressViewController:UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}

