//
//  AddressDataSource.swift
//  AddressTblViewWithUTTests
//
//  Created by Neha Pant on 23/09/2019.
//  Copyright © 2019 Neha Pant. All rights reserved.
//

import UIKit
import XCTest
@testable import AddressTblViewWithUT

class AddressDataSourceTests: XCTestCase {
    var tableView = UITableView()
    var dataSource: AddressDataSource!
    
    override func setUp() {
        super .setUp()
        
        dataSource = AddressDataSource()
        let nib = UINib(nibName: String.init(describing: AddressTableViewCell.self), bundle: nil)
        //Idendifier with name of the cell
        tableView.register(nib, forCellReuseIdentifier: String.init(describing: AddressTableViewCell.self))
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        for i in 0..<4 {
            let address = AddressModel(name: "Neha: \(i)", street: "\(i)", country: "India")
            print("First name is \(address.name)")
            dataSource.addressModelData.append(address)
        }
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    func testDataHassAddress() {
        XCTAssertEqual(dataSource.addressModelData.count, 4, "4 Data in an array")
    }
    
    func testZeroSectionWhenZeroAddress() {
        dataSource.addressModelData = []
        XCTAssertEqual(dataSource.numberOfSections(in: tableView), 0, "No Sections")
    }
    
    func test1SectionWhen1Address() {
        XCTAssertEqual(dataSource.numberOfSections(in: tableView), 1, "1 Sections")
    }
    
    func testNumberOfRows() {
        XCTAssertEqual(4, dataSource.addressModelData.count, "Rows are equal to TableView rows")
    }
    
    func testCellForRow() {
        let cell = dataSource.tableView(tableView, cellForRowAt: IndexPath(row: 0, section: 0))
        XCTAssertEqual(cell.textLabel?.text, "Neha: 0",
                       "The first cell should display name of first Name")
    }
}
