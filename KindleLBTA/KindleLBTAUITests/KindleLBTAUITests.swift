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

    func testSmokeTest() {
        KindleScreenObjects.openBookAndSwipeLeftAndClosePage(book: KindleScreenObjects.books.steveJobsBook, page: KindleScreenObjects.pages.firstPageOfSteveJobsBook, button: KindleScreenObjects.buttons.close)
        
        XCTAssert(KindleScreenObjects.books.steveJobsBook.exists, "Page did not close")
        
        KindleScreenObjects.openBookAndSwipeLeftAndClosePage(book: KindleScreenObjects.books.billGatesBpook, page: KindleScreenObjects.pages.firstPageOfBillGates, button: KindleScreenObjects.buttons.close)
        
        XCTAssert(KindleScreenObjects.books.steveJobsBook.exists, "Page did not close")
        
        
    }
}
