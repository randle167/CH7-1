//
//  ReadingStatus.swift
//  CH7
//
//  Created by Ashley Randle on 4/22/26.
//

import Foundation

enum ReadingStatus: String, CaseIterable, Codable {
    case planToRead = "Plan to read"
    case reading = "Reading"
    case dropped = "Dropped"
    case finished = "Finished"
    
    case unknown = "Unknown"
}
