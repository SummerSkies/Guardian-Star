//
//  InventoryItems.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/27/23.
//

import Foundation

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
                PoolTableController().interactableObjects[.fallenPoolBall],
                PoolTableController().observableObjects[.poolBall],
                PoolTableController().observableObjects[.fallenPoolBall]
            ]
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
                LandingController().interactableObjects[.triangleBlock],
                LandingController().observableObjects[.triangleBlock]
            ]
        ),
        .rectangleBlock: Item(
            imageName: "Rectangle Block - Item ",
            selectedGlowImageName: "Selected - Rectangle Block",
            inspectMessage: "A rectangular building block. These were usually used to give your building some height.",
            associatedObjects: [
                UpstairsController().interactableObjects[.rectangleblock],
                UpstairsController().observableObjects[.rectangleblock]
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
