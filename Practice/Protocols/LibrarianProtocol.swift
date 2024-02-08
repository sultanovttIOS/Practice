//
//  LibrarianProtocol.swift
//  Practice
//
//  Created by Alisher Sultanov on 8/2/24.
//

import Foundation

protocol LibrarianProtocol {
    
    func pass(title: String)
    func getTheBook()
    func noBook()
}

extension LibrarianProtocol {
    
    func pass(title: String) {
        print("Библиотекарь передает запрос - \(title) каталогу!")
        catalog.searchBook(title: title)
    }
    
    func getTheBook() {
        print("Библиотекарь передает книгу читателю!")
        reader.takeTheBook()
    }
    
    func noBook() {
        print("Библиотекарь сообщает что книги нет! ")
        reader.goToHome()
    }
}
