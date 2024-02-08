//
//  main.swift
//  Practice
//
//  Created by Alisher Sultanov on 8/2/24.
//

import Foundation

var reader = Reader()
var librarian = Librarian()
var catalog = Catalog()

reader.librarian = librarian
librarian.reader = reader
librarian.catalog = catalog
catalog.librarian = librarian

reader.makeTheRequest(requestBook: "Мартин Иден")
