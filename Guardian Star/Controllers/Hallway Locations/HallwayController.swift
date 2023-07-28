//
//  Hallway.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/23/23.
//

import Foundation

struct HallwayController {
    var observableObjects: [ObjectType: Object] = [
        .archBlock: Object(
            imageName: "Arch Block",
            imageGlowName: "ObsGlo - Arch Block",
            message: "Daisy used to play with blocks like this when she was younger.\nWhat is it doing out of the box?"
        ),
        .stairs: Object(
            imageName: "Stairs",
            imageGlowName: "ObsGlo - Stairs",
            message: "Those stairs lead to the second floor."
        ),
        .doors: Object(
            imageName: "Doors",
            imageGlowName: "ObsGlo - Doors",
            message: "All empty.\nWhere are Daisy's parents?"
        )
    ]
    var interactableObjects: [ObjectType: Object] = [
        .archBlock: Object(
            imageName: "Arch Block",
            imageGlowName: "IntGlo - Arch Block"
        )
    ]
    var navigationalObjects: [ObjectType: Object] = [
        .toLanding: Object(imageName: "Arrow - Foward"),
        .back: Object(imageName: "Arrow - Back")
    ]
}
