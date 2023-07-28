//
//  HallwayDoorController.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/28/23.
//

import Foundation

struct HallwayDoorGapController {
    var observableObjects: [ObjectType: Object] = [
        .doorGap: Object(
            imageName: "Hallway Door Gap",
            imageGlowName: "ObsGlo - Hallway Door Gap"
        ),
        .key: Object(
            imageName: "Key",
            imageGlowName: "ObsGlo - Key",
            message: "Is that... A key? Why is it here?"
        )
    ]
    var interactableObjects: [ObjectType: Object] = [
        .key: Object(
            imageName: "Key",
            imageGlowName: "IntGlo - Key"
        )
    ]
    var navigationalObjects: [ObjectType: Object] = [
        .back: Object(imageName: "Arrow - Back")
    ]
}
