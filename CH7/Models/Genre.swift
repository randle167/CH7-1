//
//  Genre.swift
//  CH7
//
//  Created by Ashley Randle on 4/22/26.
//

import Foundation

enum Genre: String, CaseIterable, Codable {
    case fantasy = "Fantasy"
    case romance = "Romance"
    case mystery = "Mystery"
    case sciFi = "Science Fiction"
    case horror = "Horror"
    
    case unknown = "Uknown"
}
