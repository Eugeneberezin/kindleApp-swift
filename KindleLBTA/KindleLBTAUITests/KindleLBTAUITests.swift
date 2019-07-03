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
        let bookAuthor = ["Walter Isaacson", "Michael Becraft"]
        let closeButton = XCUIApplication().navigationBars.buttons["Close"]
        
        let steveJobsBook = XCUIApplication().tables.staticTexts[bookTitle[0]]
        let billGatesBook = XCUIApplication().tables.staticTexts[bookTitle[1]]
        
        steveJobsBook.tap()
        closeButton.tap()
        XCTAssert(XCUIApplication().tables.staticTexts[bookTitle[0]].exists, "Steve Jobs is not displayed")
        
        billGatesBook.tap()
        closeButton.tap()
        XCTAssert(XCUIApplication().tables.staticTexts[bookTitle[1]].exists, "Bill Gates: A Biography")
        XCTAssert(XCUIApplication().tables.staticTexts[bookAuthor[0]].exists, "Walter Isaacson is not displayed")
        XCTAssert(XCUIApplication().tables.staticTexts[bookAuthor[1]].exists, "Michael Becraft is not displayed")
        steveJobsBook.tap()
        
        XCUIApplication().collectionViews.cells["PAGE_CELL Steve Jobs"].swipeLeft()
    
    }

}
