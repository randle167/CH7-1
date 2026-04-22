//
//  Book.swift
//  CH7
//
//  Created by Ashley Randle on 3/23/26.
//

import Foundation

struct Book: Identifiable {
    let id: UUID = UUID()
    var title: String
    var author: String
    var summary: String
    var image: String
    
    var isFavorite: Bool = false
    
    var genre:Genre = .unknown
    var readingStatus : ReadingStatus = .unknown

//    var cover: String
}
