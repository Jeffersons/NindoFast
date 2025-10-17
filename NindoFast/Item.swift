//
//  Item.swift
//  NindoFast
//
//  Created by Jefferson de Souza Batista on 16/10/25.
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
