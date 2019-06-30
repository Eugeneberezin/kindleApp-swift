//
//  ViewController.swift
//  KindleLBTA
//
//  Created by Eugene Berezin on 6/28/19.
//  Copyright © 2019 Eugene Berezin. All rights reserved.
//

import UIKit



class ViewController: UITableViewController {
    
    var books: [Book]?
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(BookCell.self, forCellReuseIdentifier: "cellID")
        tableView.tableFooterView = UIView()
        
        navigationItem.title = "Kindle"
        
        //can provide custom code starting here
        setUpBooks()
        
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 86
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellID", for: indexPath) as! BookCell
        
        let book = books?[indexPath.row]
        cell.book = book
        
        
        cell.accessibilityIdentifier = "CELL ID = \(book?.title ?? "CELL"))"
        
        
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let count = books?.count {
            return count
        }
        
        return 0
    }
    
    func setUpBooks() {
        let page1 = Page(number: 1, text: "Text for the first page")
        let page2 = Page(number: 2, text: "This is text for second page")
        
        let pages = [page1, page2]
        
        let book = Book(title: "Steve Jobs", author: "Walter Isaacson", image: #imageLiteral(resourceName: "steve_jobs"), pages: pages)
        
        let book2 = Book(title: "Bill Gates: A Biography", author: "Michael Becraft", image: #imageLiteral(resourceName: "bill_gates"),  pages: [
            Page(number: 1, text: "Text for page 1"),
            Page(number: 2, text: "Text for page 2"),
            Page(number: 3, text: "Text for page 3"),
            Page(number: 4, text: "Text for page 4")
            ])
        
        self.books = [book, book2]
        
        }

}

