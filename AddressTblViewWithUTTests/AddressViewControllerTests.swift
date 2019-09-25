//
//  ViewControllerTests.swift
//  TableViewTests
//
//  Created by Neha Pant on 23/09/2019.
//  Copyright © 2019 Neha Pant. All rights reserved.
//

import UIKit
import XCTest
@testable import AddressTblViewWithUT

class AddressViewControllerTests: XCTestCase {
    var controller: AddressViewController!
    var tableView: UITableView!
    var dataSource: AddressDataSource!
    var delegate: UITableViewDelegate!
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        super.setUp()
        
        guard let vc = UIStoryboard(name: "Main", bundle: Bundle(for: AddressViewController.self)).instantiateInitialViewController() as? AddressViewController else {
            return XCTFail("Could not instantiate ViewController from main storyboard")
        }
        controller = vc
        controller.loadViewIfNeeded()

        tableView = controller.tableview
        
        guard let ds = tableView.dataSource as? AddressDataSource else {
            return XCTFail("Controller's table view should have a Address data source")
        }
        
        dataSource = ds
        delegate = tableView.delegate
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    func testTableViewHasCells() {
        let cell:AddressTableViewCell = tableView.dequeueReusableCell(withIdentifier: String.init(describing: AddressTableViewCell.self)) as! AddressTableViewCell

        XCTAssertNotNil(cell,
                        "TableView should be able to dequeue cell with identifier: 'Cell'")
    }
    func testControllerHasTableView() {
        guard let controller = UIStoryboard(name: "Main", bundle: Bundle(for: AddressViewController.self)).instantiateInitialViewController() as? AddressViewController else {
            return XCTFail("Could not instantiate ViewController from main storyboard")
        }
        controller.loadViewIfNeeded()
        XCTAssertNotNil(controller.tableview,
                        "Controller should have a tableview")
    }
    
    func testTableViewDelegateIsViewController() {
        XCTAssertTrue(tableView.delegate === controller,
                      "Controller should be delegate for the table view")
    }
    
    func testControllerHasTableViewDataSource() {
        XCTAssertTrue(((tableView.dataSource as? AddressDataSource) != nil), "Controller should have a tableview data source")
    }
    
}
