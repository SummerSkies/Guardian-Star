//
//  BelowPoolTableController.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/27/23.
//

import Foundation

struct PoolTableController {
    var observableObjects: [ObjectType: Object] = [
        .poolCue: Object(
            imageName: "Pool Cue - Below",
            imageGlowName: "ObsGlo - Pool Cue Below",
            message: "A cue stick, for playing pool."
        ),
        .poolBall: Object(
            imageName: "Pool Ball - Below On Table",
            imageGlowName: "ObsGlo - Pool Ball Below On Table",
            message: "That pool ball is barely balancing on the edge of the table."
        )
    ]
    var interactableObjects: [ObjectType: Object] = [
        .poolCue: Object(
            imageName: "Pool Cue - Below",
            imageGlowName: "IntGlo - Pool Cue Below"
        ),
        .poolBall: Object(
            imageName: "Pool Ball - Below On Table",
            imageGlowName: "IntGlo - Pool Ball Below On Table"
        ),
        .fallenPoolBall: Object(
            imageName: "Pool Ball - Fallen",
            imageGlowName: "IntGlo - Pool Ball Fallen"
        )
    ]
    var navigationalObjects: [ObjectType: Object] = [
        .back: Object(imageName: "Arrow - Back")
    ]
}
