//
//  ReaderProtocol.swift
//  Practice
//
//  Created by Alisher Sultanov on 8/2/24.
//

import Foundation

protocol ReaderProtocol {
    func makeTheRequest(requestBook title: String)
    func takeTheBook()
    func goToHome()
}

extension ReaderProtocol {
    
    func makeTheRequest(requestBook title: String) {
        print("Читатель запрашивает книгу - \(title)!")
        librarian.pass(title: title)
    }
    func takeTheBook() {
        print("Читатель получает книгу!")
    }
    
    func goToHome() {
        print("Читатель уходит домой!")
    }
}
