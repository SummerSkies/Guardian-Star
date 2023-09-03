//
//  Item.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/27/23.
//

import SwiftUI

struct Item: Equatable {
    let imageName: String
    let selectedGlowImageName: String
    let inspectMessage: String
    
    var recipe: [Item]? = nil
    var associatedObjects: [Object?]? = nil
    
    let itemID = UUID()
    
    static func == (lhs: Item, rhs: Item) -> Bool {
        return lhs.itemID == rhs.itemID
    }
}

enum ItemType: CaseIterable {
    case branch, poolBall, twine, makeshiftWeight, key, archBlock, triangleBlock, rectangleBlock, bookmark
}
