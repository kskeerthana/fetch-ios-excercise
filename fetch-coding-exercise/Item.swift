//
//  Item.swift
//  fetch-coding-exercise
//
//  Created by Keerthana Srinivasan on 3/19/24.
//

import Foundation

struct Item: Codable, Identifiable, Comparable {
    var id: Int
    let listId: Int
    let name: String?
    
    static func < (lhs: Item, rhs: Item) -> Bool {
        if lhs.listId == rhs.listId {
            // Compare the numeric part of the name, if present
            let lhsNumber = lhs.nameNumber
            let rhsNumber = rhs.nameNumber
            return lhsNumber < rhsNumber
        }
        return lhs.listId < rhs.listId
    }
    
    // Helper property to extract the number from the item name
    var nameNumber: Int {
        guard let name = name,
              let numberString = name.split(separator: " ").last,
              let number = Int(numberString) else { return Int.max }
        return number
    }
}

