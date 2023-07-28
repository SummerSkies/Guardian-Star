//
//  Hedges Objects.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/27/23.
//

import Foundation

struct HedgesController {
    var observableObjects: [ObjectType: Object] = [
        .branch: Object(
            imageName: "Branch",
            imageGlowName: "ObsGlo - Branch",
            message: "A long, spindly branch, discarded.\nIt must have broken off one of the bushes."
        ),
        .ivyVinesBase: Object(
            imageName: "Ivy Vines - Base",
            imageGlowName: "ObsGlo - Ivy Vines Base",
            message: "This ivy leads up the side of the house.\nI could probably climb it from here!"
        )
    ]
    var interactableObjects: [ObjectType: Object] = [
        .branch: Object(
            imageName: "Branch",
            imageGlowName: "IntGlo - Branch"
        )
    ]
    var navigationalObjects: [ObjectType: Object] = [
        .toLivingRoomWindow: Object(imageName: "Arrow - Up"),
        .back: Object(imageName: "Arrow - Back")
    ]
}
