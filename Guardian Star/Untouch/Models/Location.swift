//
//  Location.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 10/24/23.
//

import Foundation

struct Location {
    let backgroundImageName: String
    let observeableObjects: [ObservableObjectButton]
    let navigationalObjects: [NavigationalObjectButton]
    let interactiveObjects: [InteractiveObjectButton]
    let defaultImageNames: [String]
}

enum LocationName {
    case backyard
    case hedges
}
