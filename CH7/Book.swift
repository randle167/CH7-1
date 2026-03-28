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
}
