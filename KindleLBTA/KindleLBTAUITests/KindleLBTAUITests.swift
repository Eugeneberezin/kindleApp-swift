//
//  KindleLBTAUITests.swift
//  KindleLBTAUITests
//
//  Created by Eugene Berezin on 6/28/19.
//  Copyright © 2019 Eugene Berezin. All rights reserved.
//

import XCTest

class KindleLBTAUITests: XCTestCase {

    override func setUp() {
        
        continueAfterFailure = false

    
        XCUIApplication().launch()

    }

    override func tearDown() {
        
    }

    func testExample() {
        let bookTitle = ["Steve Jobs", "Bill Gates: A Biography"]
        
        XCTAssert(XCUIApplication().tables.staticTexts[bookTitle[0]].exists, "Steve Jobs is not displayed")
        XCTAssert(XCUIApplication().tables.staticTexts[bookTitle[1]].exists, "Bill Gates: A Biography")
        
        
    }

}
