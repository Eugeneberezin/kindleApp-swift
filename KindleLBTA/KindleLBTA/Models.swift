//
//  Models.swift
//  KindleLBTA
//
//  Created by Eugene Berezin on 6/28/19.
//  Copyright © 2019 Eugene Berezin. All rights reserved.
//

import Foundation

class Book {
    let title: String
    let author: String
    let pages: [Page]
    
    init(title: String, author: String, pages: [Page]) {
        self.title = title
        self.author = author
        self.pages = pages
    }
}

class Page {
    let number: Int
    let text: String
    
    init(number: Int, text: String) {
        self.number = number
        self.text = text
        
    }
}
