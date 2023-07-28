//
//  HallwayDoorknobController.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/28/23.
//

import Foundation

struct HallwayDoorknobController {
    var observableObjects: [ObjectType: Object] = [
        .lock: Object(
            imageName: "Hallway Lock",
            imageGlowName: "ObsGlo - Hallway Lock",
            message: "It's locked...?\nI need a key."
        )
    ]
    var interactableObjects: [ObjectType: Object] = [
        .lock: Object(
            imageName: "Hallway Lock",
            imageGlowName: "IntGlo - Hallway Lock"
        )
    ]
    var navigationalObjects: [ObjectType: Object] = [
        .back: Object(imageName: "Arrow - Back")
    ]
}
