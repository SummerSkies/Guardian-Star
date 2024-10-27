//
//  InventoryItems.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/27/23.
//

import SwiftUI

struct InventoryController {
    let allItems: [ItemType: Item] = [
        .branch: Item(
            imageName: "Branch - Item",
            selectedGlowImageName: "Selected - Branch",
            inspectMessage: "A long, spindly branch.",
            associatedObjects: [
                HedgesController().interactableObjects[.branch],
                HedgesController().observableObjects[.branch]
            ]
        ),
        .poolBall: Item(
            imageName: "Pool Ball - Item ",
            selectedGlowImageName: "Selected - Pool Ball",
            inspectMessage: "This ball is pretty heavy.",
            associatedObjects: [
                PoolTableController().interactableObjects[.poolBall],
                PoolTableController().interactableObjects[.poolBallMoved],
                PoolTableController().observableObjects[.poolBall],
                PoolTableController().observableObjects[.poolBallMoved]
            ]
        ),
        .twine: Item(
            imageName: "Twine - Item ",
            selectedGlowImageName: "Selected - Twine",
            inspectMessage: "I'm pretty handy with this stuff!",
            associatedObjects: [
                LowTableController()
                    .interactableObjects[.twine]
            ]
        ),
        .makeshiftWeight: Item(
            imageName: "Makeshift Weight",
            selectedGlowImageName: "Selected - Makeshift Weight",
            inspectMessage: "I can tie this on my back to make me heavier."
        ),
        .key: Item(
            imageName: "Key - Item ",
            selectedGlowImageName: "Selected - Key",
            inspectMessage: "This is the key to the hallway door.",
            associatedObjects: [
                HallwayDoorGapController().interactableObjects[.key],
                HallwayDoorGapController().observableObjects[.key]
            ]
        ),
        .archBlock: Item(
            imageName: "Arch Block - Item ",
            selectedGlowImageName: "Selected - Arch Block",
            inspectMessage: "A building block with an arch cut out of it. It would make a good tower foundation.",
            associatedObjects: [
                HallwayController().interactableObjects[.archBlock],
                HallwayController().observableObjects[.archBlock]
            ]
        ),
        .triangleBlock: Item(
            imageName: "Triangle Block - Item ",
            selectedGlowImageName: "Selected - Triangle Block",
            inspectMessage: "A trianglular building block. Daisy always used these as rooftops.",
            associatedObjects: [
                UpstairsController().interactableObjects[.triangleBlock],
                UpstairsController().observableObjects[.triangleBlock]
            ]
        ),
        .rectangleBlock: Item(
            imageName: "Rectangle Block - Item ",
            selectedGlowImageName: "Selected - Rectangle Block",
            inspectMessage: "A rectangular building block. These were usually used to give your building some height.",
            associatedObjects: [
                LandingController().interactableObjects[.rectangleBlock],
                LandingController().observableObjects[.rectangleBlock]
            ]
        ),
        .bookmark: Item(
            imageName: "Bookmark - Item ",
            selectedGlowImageName: "Selected - Bookmark",
            inspectMessage: "A decorated bookmark. It's pretty stiff.",
            associatedObjects: [
                ConsoleTableController().interactableObjects[.bookmark],
                ConsoleTableController().observableObjects[.bookmark]
            ]
        )
    ]
}
