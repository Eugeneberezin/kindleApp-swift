//
//  KindleScreenObjects.swift
//  KindleLBTAUITests
//
//  Created by Eugene Berezin on 7/4/19.
//  Copyright © 2019 Eugene Berezin. All rights reserved.
//

import XCTest

class KindleScreenObjects {
    
    struct Books {
        let steveJobsBook: XCUIElement
        let billGatesBpook: XCUIElement
    }
    
    struct Pages {
        let firstPageOfSteveJobsBook: XCUIElement
        let secondPageOfSteveJobsBook: XCUIElement
        let firstPageOfBillGates: XCUIElement
    }
    
    struct Buttons {
        let close: XCUIElement
    }
    
    static let books = Books(steveJobsBook:  XCUIApplication().tables.children(matching: .cell).matching(identifier: "BOOK_CELL_ID_Walter Isaacson").element(boundBy: 0).staticTexts["Walter Isaacson"],
                             billGatesBpook: XCUIApplication().tables.cells["BOOK_CELL_ID_Michael Becraft"])
    
    static let pages = Pages(firstPageOfSteveJobsBook: XCUIApplication().collectionViews.cells["PAGE_CELL_Steve Jobs"],
                             secondPageOfSteveJobsBook: XCUIApplication().collectionViews.staticTexts["ID_PAGE"], firstPageOfBillGates: XCUIApplication().collectionViews.cells["PAGE_CELL_Bill Gates: A Biography"])
    
    static let buttons = Buttons(close: XCUIApplication().navigationBars.buttons["Close"])
    
    
    
    static func openBookAndSwipeLeftAndClosePage(book: XCUIElement, page: XCUIElement, button: XCUIElement) {
        book.tap()
        page.swipeLeft()
        XCTAssert(page.exists, "Page Does not exist")
        button.tap()
        
    }
    
    
}
