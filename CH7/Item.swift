//
//  Item.swift
//  CH7
//
//  Created by Ashley Randle on 3/21/26.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
