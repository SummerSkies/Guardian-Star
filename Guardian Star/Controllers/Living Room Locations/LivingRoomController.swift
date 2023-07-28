//
//  Living Room Objects.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/23/23.
//

import Foundation

struct LivingRoomController {
    var observableObjects: [ObjectType: Object] = [
        .poolTable: Object(
            imageName: "Pool Table",
            imageGlowName: "ObsGlo - Pool Table",
            message: "The family pool table.\nDaisy's papa didn't finish playing the last game."
        ),
        .chair: Object(
            imageName: "Chair",
            imageGlowName: "ObsGlo - Chair",
            message: "I don't think that chair is where it usually is."
        ),
        .hallwayDoor: Object(
            imageName: "Hallway Door",
            imageGlowName: "ObsGlo - Hallway Door",
            message: "That door leads to the hallway.\nI'll have to get to the doorknob to open it."
        ),
        .lowTable: Object(
            imageName: "Low Table",
            imageGlowName: "ObsGlo - Low Table",
            message: "That table is often used for arts and crafts.\nLooks like Daisy's mama was working on more homemade decor."
        )
    ]
    var interactableObjects: [ObjectType: Object] = [
        .chair: Object(
            imageName: "Chair",
            imageGlowName: "IntGlo - Chair"
        ),
        .hallwayDoor: Object(
            imageName: "Bedroom Window",
            imageGlowName: "ObsGlo - Bedroom Window"
        )
    ]
    var navigationalObjects: [ObjectType: Object] = [
        .toPoolTable: Object(imageName: "Arrow - Forward"),
        .toLowTable: Object(imageName: "Arrow - Forward"),
        .toHallwayDoor: Object(imageName: "Arrow - Down"),
        .toHallwayDoorHandle: Object(imageName: "Arrow - Up"),
        .toHallway: Object(imageName: "Arrow - Forward"),
        .back: Object(imageName: "Arrow - Back")
    ]
}
