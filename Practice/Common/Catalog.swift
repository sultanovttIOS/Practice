//
//  Catalog.swift
//  Practice
//
//  Created by Alisher Sultanov on 8/2/24.
//

import Foundation

class Catalog: CatalogProtocol {
    
    var librarian: LibrarianProtocol?
    
    var books: [Book] = [Book(title: "Мартин Иден", author: "Д. Лондон"),
                         Book(title: "Война и мир", author: "Л. Толстой"),
                         Book(title: "Мастер и Маргарита", author: "М. Булгаков"),
                         Book(title: "Евгений Онегин", author: "А. Пушкин")]
    
    func searchBook(title: String) {
        var isBookFound = false
        
        for book in books {
            if book.title == title {
                print("Каталог ищет и находит книгу - \(title)!")
                librarian?.getTheBook()
                isBookFound = true
            }
        }
        if !isBookFound {
            print("Каталог ищет и не находит книгу - \(title)!")
            librarian?.noBook()
        }
    }
}
