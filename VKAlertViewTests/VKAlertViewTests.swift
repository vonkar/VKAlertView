//
//  VKAlertViewTests.swift
//  VKAlertViewTests
//
//  Created by Vinod Onkar on 20/09/17.
//  Copyright © 2017 Vinod Onkar. All rights reserved.
//

import XCTest

class VKAlertViewTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testDisplayAlert() {
        let vc = UIViewController()
        AlertViewController.shared.displayAlert(title: "Some title", message: "Some message", origin: vc, noTitle: "", yesTitle: "")
        
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
