//
//  Item.swift
//  Functions & Closures
//
//  Created by user on 10/1/23.
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
