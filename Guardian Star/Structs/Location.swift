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

struct AllLocations {
    static let locations: [LocationName: Location] = [
    //Backyard:
        .backyard: Location(
            backgroundImageName: "Backyard",
            observeableObjects: ObservableButtons.observableBackyardButtons,
            navigationalObjects: NavigationalButtons.navigationalBackyardButtons,
            interactiveObjects: InteractiveButtons.interactiveBackyardButtons,
            defaultImageNames: [
                "Bedroom Windows",
                "Living Room Window",
                "Ivy Vines",
                "Hedges"
            ]
        ),
    //Hedges:
        .hedges: Location(
            backgroundImageName: "Hedges Location",
            observeableObjects: ObservableButtons.observableHedgesButtons,
            navigationalObjects: NavigationalButtons.navigationalHedgesButtons,
            interactiveObjects: InteractiveButtons.interactiveBackyardButtons,
            defaultImageNames: [
                "Ivy Vines Base",
                "Branch",
                "Hedges Frame"
            ]
        )
    ]
}
